import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:novel_seeker/model/narou_enum.dart';
import 'package:novel_seeker/ui/novel_info_card.dart';

import '../provider/novel_ranking_provider.dart';

final _logger = Logger();

class NovelRanking extends HookConsumerWidget {
  final orderdRankingGenre = RankingGenre.values;
  final orderdRankingFilter = RankingFilter.values;
  const NovelRanking({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rankingParam = useState(RankingParam());
    final currentBottomNavigationBarItem = useState(0);
    return DefaultTabController(
      length: orderdRankingGenre.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ランキング'),
          bottom: TabBar(
            tabs: RankingGenre.values
                .map((e) => Tab(text: e.displayName))
                .toList(),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
            children: orderdRankingGenre
                .map((e) => _RankingPageContent(
                    initRankingParam: rankingParam.value.copyWith(genre: e)))
                .toList()),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentBottomNavigationBarItem.value,
          type: BottomNavigationBarType.fixed,
          items: orderdRankingFilter
              .map((e) => BottomNavigationBarItem(
                  icon: Icon(Icons.abc), label: e.displayName))
              .toList(),
          onTap: (value) {
            rankingParam.value =
                rankingParam.value.copyWith(filter: orderdRankingFilter[value]);
            currentBottomNavigationBarItem.value = value;
          },
        ),
      ),
    );
  }
}

class _RankingPageContent extends HookConsumerWidget {
  final RankingParam initRankingParam;
  final orderdRankingPeriod = RankingPeriod.values;
  const _RankingPageContent({required this.initRankingParam});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int secondaryTabCount = orderdRankingPeriod.length;
    final tabController = useTabController(initialLength: secondaryTabCount);

    return Column(
      children: [
        TabBar.secondary(
            controller: tabController,
            tabs: orderdRankingPeriod
                .map((e) => Tab(text: e.displayName))
                .toList()),
        Expanded(
            child: TabBarView(
          controller: tabController,
          children: orderdRankingPeriod.map((e) {
            return ref
                .watch(
                    novelRankingProvider(initRankingParam.copyWith(period: e)))
                .when(
                  data: (data) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return NovelInfoCard(info: data[index].$2);
                      },
                      itemCount: data.length,
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (e, s) => Center(
                      child: SingleChildScrollView(child: Text('Error: $e'))),
                );
          }).toList(),
        ))
      ],
    );
  }
}
