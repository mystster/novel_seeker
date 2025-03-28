import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../model/narou_enum.dart';
import '../model/narou_novel_content.dart';
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
        // 現在表示しているチャプター番号
        final currentChapter = useState(novelInfo.currentChapter);
        // 現在表示しているNarouNovelContent
        final currentContent = useMemoized(() {
          return novelInfo.contents
              .firstWhereOrNull((e) => e.chapter == currentChapter.value);
        }, [currentChapter.value]);
        // 現在のスクロールコントローラのインデックス
        final currentScrollControllerIndex = useMemoized(() {
          _logger.d(
              'current chapter in current scrollControllerIndex:${currentChapter.value}');
          return novelInfo.contents
              .indexWhere((e) => e.chapter == currentChapter.value);
        }, [currentChapter.value]);
        // 現在のスクロール位置(パーセント)
        final currentScrollPercents = List.generate(novelInfo.contents.length,
            (i) => novelInfo.contents[i].scrollPosition);

        final scrollControllers = List.generate(
            novelInfo.contents.length, (i) => useScrollController());
        useEffect(() {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // 初回表示時にReadingStatusがunreadでbodyがnullでないときはReadingに変更
            if (currentContent?.readingStatus == ReadingStatus.unread &&
                currentContent?.body != null) {
              // 読書中に変更
              ref.read(narouNovelProvider.notifier).updateReadingStatus(
                  ncode: ncode,
                  chapter: currentChapter.value,
                  readingStatus: ReadingStatus.reading);
            }

            // 画面が初回表示されたときのスクロール位置を適切な値にする。
            // initialScrollOffsetを使用すると、PageViewを切り替えて戻したときに
            // 再度initialScrollOffsetの位置に戻ってしまうことがあるため不採用。
            for (var i = 0; i < novelInfo.contents.length; i++) {
              if (scrollControllers[i].hasClients) {
                final scrollPosition = novelInfo.contents[i].scrollPosition *
                    scrollControllers[i].position.maxScrollExtent /
                    100.0;
                _logger.d(
                    'scrollController[$i] is fire, scrollPosition: $scrollPosition(${novelInfo.contents[i].scrollPosition}%)');
                scrollControllers[i].jumpTo(scrollPosition);
              }
            }
          });
          return null;
        }, const []);

        for (var i = 0; i < novelInfo.contents.length; i++) {
          useEffect(() {
            void onScroll() {
              if (novelInfo.contents[i].readingStatus == ReadingStatus.unread &&
                  novelInfo.contents[i].body != null) {
                // 読書中に変更
                ref.read(narouNovelProvider.notifier).updateReadingStatus(
                    ncode: ncode,
                    chapter: novelInfo.contents[i].chapter,
                    readingStatus: ReadingStatus.reading);
              }

              if (novelInfo.contents[i].readingStatus ==
                      ReadingStatus.reading &&
                  scrollControllers[i].hasClients) {
                if (scrollControllers[i].position.maxScrollExtent !=
                        0 /* スクロール可能 */ &&
                    scrollControllers[i].position.pixels ==
                        scrollControllers[i].position.maxScrollExtent) {
                  // 最後までスクロールしたので読了に変更
                  ref.read(narouNovelProvider.notifier).updateReadingStatus(
                      ncode: ncode,
                      chapter: novelInfo.contents[i].chapter,
                      readingStatus: ReadingStatus.completed);
                }
              }

              if (scrollControllers[i].hasClients) {
                // 現在のスクロール位置を保存
                currentScrollPercents[i] =
                    scrollControllers[i].position.getScrollPercent();

                // スクロールが止まって5秒後にDBにスクロール位置を保存する。
                _debouncer.debounce(
                    duration: const Duration(seconds: 5),
                    onDebounce: () {
                      saveScrollPosition(ref, ncode, currentChapter.value,
                          scrollControllers[i]);
                    });
              }
            }

            scrollControllers[i].addListener(onScroll);
            return () => scrollControllers[i].removeListener(onScroll);
          }, scrollControllers);
        }

        final pageController =
            usePageController(initialPage: currentScrollControllerIndex);
        // ページを切り替えたときに、スクロール位置の保存と復元を行う
        // PageView.builderのonPageChangedイベントだとタイミングが微妙で
        // scrollController.hasClientがfalseになる場合があるため自前で実装。
        useEffect(() {
          double lastPage = currentIndex.toDouble();
          bool isPageChanging = false;
          bool isDestinationScrollPositionRestore = true;
          void onPageChaged() async {
            if (pageController.page == null) {
              _logger.d('pageController.page is null');
              return;
            }
            double nowPage = pageController.page!;
            if (isPageChanging == false && lastPage != nowPage) {
              //PageView変更開始
              _logger.d('page change start!');
              if (scrollControllers[lastPage.toInt()].hasClients) {
                saveScrollPosition(ref, ncode, currentChapter.value,
                    scrollControllers[lastPage.toInt()]);
                if (scrollControllers[lastPage.toInt()]
                            .position
                            .maxScrollExtent ==
                        0 &&
                    novelInfo.contents[lastPage.toInt()].readingStatus ==
                        ReadingStatus.reading) {
                  // スクロールが不要な場合は、読了に変更
                  _logger.d('現在読書中でスクロールバーがないので、読了に変更します');
                  ref.read(narouNovelProvider.notifier).updateReadingStatus(
                      ncode: ncode,
                      chapter: currentChapter.value,
                      readingStatus: ReadingStatus.completed);
                }
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
                // 切り替え先のPageViewにあるscrollControllerにscrollPositionをセットする
                if (await waitForControllerToAttach(
                    scrollControllers[destinationIndex])) {
                  loadScrollPotision(novelInfo.contents[destinationIndex],
                      scrollControllers[destinationIndex]);
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
            final scrollControllerIndex = currentScrollControllerIndex;
            saveScrollPosition(ref, ncode, currentChapter.value,
                scrollControllers[scrollControllerIndex]);
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                  currentContent?.title ?? novelInfo.novelInfo?.title ?? ''),
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
                      // ドロアーの各章へ飛ぶボタン
                      return ListTile(
                        title: Text(
                          '${novelInfo.contents[index].chapter}. ${novelInfo.contents[index].title}',
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {
                          pageController.jumpToPage(index);
                          Scaffold.of(context).closeDrawer();
                        },
                      );
                    }),
              ),
            ),
            body: PageView.builder(
              itemCount: novelInfo.contents.length,
              controller: pageController,
              onPageChanged: (value) async {
                _logger.d('onPageChaged is fire!');
                final oldIndex = currentIndex;
                saveScrollPosition(ref, ncode, currentChapter.value,
                    scrollControllers[oldIndex]);

                currentChapter.value = novelInfo.contents[value].chapter;
                await ref
                    .read(narouNovelProvider.notifier)
                    .updateCurrentChapter(ncode, currentChapter.value);
                loadScrollPotision(
                    novelInfo.contents[value], scrollControllers[value]);
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
                                .downloadContent(
                                    ncode: ncode,
                                    chapter: currentChapter.value,
                                    isShortStory:
                                        novelInfo.novelInfo?.novelType ==
                                            NovelType.shortStory);
                            // 読書中に変更
                            await ref
                                .read(narouNovelProvider.notifier)
                                .updateReadingStatus(
                                    ncode: ncode,
                                    chapter: currentChapter.value,
                                    readingStatus: ReadingStatus.reading);
                          },
                          child: const Text('Load'),
                        ),
            ),
          ),
        );
      },
    );
  }

  void loadScrollPotision(
      NarouNovelContent content, ScrollController controller) async {
    if (!await waitForControllerToAttach(controller)) {
      _logger
          .w('scrollController(chapter: ${content.chapter}) is not attached');
      return;
    }
    final scrollPosition = controller.position
        .getScrollPotisionFromPercent(content.scrollPosition);
    _logger.d('restore $scrollPosition to ${content.chapter}');
    controller.jumpTo(scrollPosition);
  }

  Future<void> saveScrollPosition(WidgetRef ref, String ncode, int chapter,
      ScrollController controller) async {
    if (!await waitForControllerToAttach(controller)) {
      _logger.w('scrollController(chapter: $chapter) is not attached');
      return;
    }
    final scrollPercent = controller.position.getScrollPercent();
    await saveScrollPositionPercent(ref, ncode, chapter, scrollPercent);
  }

  Future<void> saveScrollPositionPercent(
      WidgetRef ref, String ncode, int chapter, double percent) async {
    _logger.d('[save]chapter: $chapter, scroll pos: $percent %');
    await ref
        .read(narouNovelProvider.notifier)
        .updateScrollPosition(ncode, chapter, percent);
  }

  Future<bool> waitForControllerToAttach(ScrollController controller,
      [maxRetryCount = 3,
      retryInterval = const Duration(milliseconds: 500)]) async {
    int retryCount = 0;
    while (!controller.hasClients) {
      if (retryCount >= maxRetryCount) {
        _logger.w(
            'scrollController is not attached after $maxRetryCount retries. giving up.');
        return false;
      }
      _logger.d(
          'scrollController is not attached. retrying...(retry: ${retryCount + 1}/$maxRetryCount)');
      await Future.delayed(retryInterval);
      retryCount++;
    }
    return true;
  }
}

extension _ScrollPotionExtension on ScrollPosition {
  double getScrollPercent() {
    if (maxScrollExtent == 0) {
      return 0.0;
    }
    return pixels / maxScrollExtent * 100.0;
  }

  double getScrollPotisionFromPercent(double percent) {
    if (maxScrollExtent == 0) {
      return 0.0;
    }
    return percent * maxScrollExtent / 100.0;
  }
}
