import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../provider/narou_novel_provider.dart';

final _debouncer = Debouncer();
final _logger = Logger();

class NovelContents extends HookConsumerWidget {
  final String ncode;
  const NovelContents({super.key, required this.ncode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final narouProvider = ref.watch(narouNovelProvider);

    return narouProvider.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => Center(child: Text('Error: $e')),
      data: (data) {
        final novelInfo = data.firstWhereOrNull((e) => e.ncode == ncode);
        if (novelInfo == null) {
          return const Center(child: Text('No data'));
        }
        final currentChapter = useState(novelInfo.currentChapter);
        final scrollControllers = List.generate(
            novelInfo.contents.length, (i) => useScrollController());
        useEffect(() {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // 画面が初回表示されたときのスクロール位置を適切な値にする。
            // initialScrollOffsetを使用すると、PageViewを切り替えて戻したときに
            // 再度initialScrollOffsetの位置に戻ってしまうことがあるため不採用。
            for (var i = 0; i < novelInfo.contents.length; i++) {
              if (scrollControllers[i].hasClients) {
                _logger.d('scrollController[$i] is fire');
                scrollControllers[i]
                    .jumpTo(novelInfo.contents[i].scrollPosition);
              }
            }
          });
          return null;
        }, const []);

        for (var i = 0; i < novelInfo.contents.length; i++) {
          useEffect(() {
            void onScroll() {
              if (scrollControllers[i].hasClients) {
                // スクロールが止まって5秒後にDBにスクロール位置を保存する。
                _debouncer.debounce(
                    duration: const Duration(seconds: 5),
                    onDebounce: () {
                      if (scrollControllers[i].hasClients) {
                        _logger.d(
                            'chapter: ${currentChapter.value}, scroll pos: ${scrollControllers[i].position.pixels}');
                        ref
                            .read(narouNovelProvider.notifier)
                            .updateScrollPosition(ncode, currentChapter.value,
                                scrollControllers[i].position.pixels);
                      }
                    });
              }
            }

            scrollControllers[i].addListener(onScroll);
            return () => scrollControllers[i].removeListener(onScroll);
          }, scrollControllers);
        }

        final pageController = usePageController(
            initialPage: novelInfo.contents
                .indexWhere((e) => e.chapter == currentChapter.value));
        // ページを切り替えたときに、スクロール位置の保存と復元を行う
        useEffect(() {
          double lastPage = novelInfo.contents
              .indexWhere((e) => e.chapter == currentChapter.value)
              .toDouble();
          bool isPageChanging = false;
          bool isDestinationScrollPositionRestore = true;
          void onPageChaged() {
            if (pageController.page == null) {
              _logger.d('pageController.page is null');
              return;
            }
            double nowPage = pageController.page!;
            if (isPageChanging == false && lastPage != nowPage) {
              //PageView変更開始
              _logger.d('page change start!');
              if (scrollControllers[lastPage.toInt()].hasClients) {
                _logger.d(
                    'chapter: ${currentChapter.value}, scroll pos: ${scrollControllers[lastPage.toInt()].position.pixels}');
                ref.read(narouNovelProvider.notifier).updateScrollPosition(
                    ncode,
                    currentChapter.value,
                    scrollControllers[lastPage.toInt()].position.pixels);
              } else {
                _logger.d('no attached scrollController');
              }
              isPageChanging = true;
              isDestinationScrollPositionRestore = false;
            }
            if (isPageChanging == true && lastPage == nowPage) {
              // ページ切り替えをキャンセルした
              _logger.d('page change cancelled');
              isPageChanging = false;
              isDestinationScrollPositionRestore = true;
            }
            if (isDestinationScrollPositionRestore == false) {
              // 切り替え先のPageViewにあるscrollControllerのscrollPositionをセットしていない
              final destinationIndex = nowPage > lastPage
                  ? lastPage.toInt() + 1
                  : lastPage.toInt() - 1;
              if (destinationIndex < 0 ||
                  destinationIndex > novelInfo.contents.length - 1) {
                _logger.w('destinationIndex of PageView is out of range');
              } else {
                if (scrollControllers[destinationIndex].hasClients) {
                  // 切り替え先のPageViewにあるscrollControllerにscrollPositionをセットする
                  _logger.d('scrollPosition restore');
                  scrollControllers[destinationIndex].jumpTo(
                      novelInfo.contents[destinationIndex].scrollPosition);
                  isDestinationScrollPositionRestore = true;
                }
              }
            }
            if (nowPage == nowPage.roundToDouble() && lastPage != nowPage) {
              _logger.d(
                  'page change finish! last page: $lastPage, new page: $nowPage');
              lastPage = nowPage;
              isPageChanging = false;
              isDestinationScrollPositionRestore = true;
            }
          }

          pageController.addListener(onPageChaged);
          return () {
            pageController.removeListener(onPageChaged);
          };
        }, [pageController]);

        return PopScope(
          canPop: true,
          onPopInvokedWithResult: (didpop, _) async {
            // この画面から抜けるときにスクロール位置を保存する。
            _debouncer.cancel();
            final scrollControllerIndex = novelInfo.contents
                .indexWhere((e) => e.chapter == currentChapter.value);
            _logger.d(
                'popscope chapter: ${currentChapter.value}, scroll pos: ${scrollControllers[scrollControllerIndex].position.pixels}');
            await ref.read(narouNovelProvider.notifier).updateScrollPosition(
                ncode,
                currentChapter.value,
                scrollControllers[scrollControllerIndex].position.pixels);
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(novelInfo.contents
                      .firstWhereOrNull(
                          (e) => e.chapter == currentChapter.value)
                      ?.title ??
                  novelInfo.novelInfo?.title ??
                  ''),
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Flexible(
                    child: Builder(builder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      );
                    }),
                  ),
                ],
              ),
            ),
            drawer: Drawer(
              child: SafeArea(
                child: ListView.builder(
                    itemCount: novelInfo.contents.length,
                    // padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          '${novelInfo.contents[index].chapter}. ${novelInfo.contents[index].title}',
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () => currentChapter.value =
                            novelInfo.contents[index].chapter,
                      );
                    }),
              ),
            ),
            body: PageView.builder(
              itemCount: novelInfo.contents.length,
              controller: pageController,
              onPageChanged: (value) async {
                _logger.d('onPageChaged is fire!');
                final oldIndex = novelInfo.contents
                    .indexWhere((e) => e.chapter == currentChapter.value);
                if (scrollControllers[oldIndex].hasClients) {
                  ref.read(narouNovelProvider.notifier).updateScrollPosition(
                      ncode,
                      currentChapter.value,
                      scrollControllers[oldIndex].position.pixels);
                }

                currentChapter.value = novelInfo.contents[value].chapter;
                await ref
                    .read(narouNovelProvider.notifier)
                    .updateCurrentChapter(ncode, currentChapter.value);
                if (scrollControllers[value].hasClients) {
                  scrollControllers[value]
                      .jumpTo(novelInfo.contents[value].scrollPosition);
                }
              },
              itemBuilder: (context, index) =>
                  novelInfo.contents[index].body != null
                      ? Scrollbar(
                          child: SingleChildScrollView(
                            controller: scrollControllers[index],
                            padding: const EdgeInsets.all(8),
                            child: Text(novelInfo.contents[index].body ?? ''),
                          ),
                        )
                      : MaterialButton(
                          onPressed: () async {
                            if (currentChapter.value == 0) {
                              return;
                            }
                            await ref
                                .read(narouNovelProvider.notifier)
                                .downloadContent(ncode, currentChapter.value);
                          },
                          child: const Text('Load'),
                        ),
            ),
          ),
        );
      },
    );
  }
}
