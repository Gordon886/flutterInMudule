import 'package:app_flutter/src/core/di/injection.dart';
import 'package:app_flutter/src/core/error/failure.dart';
import 'package:app_flutter/src/features/home/domain/home_feed.dart';
import 'package:app_flutter/src/features/home/presentation/home/home_cubit.dart';
import 'package:app_flutter/src/features/home/presentation/home_style.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_banner.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_categories.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_games.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_header.dart';
import 'package:app_flutter/src/features/home/presentation/widgets/home_tab_bar.dart';
import 'package:app_flutter/src/router/route_registry.dart';
import 'package:app_flutter/src/router/router_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.userName, super.key});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeCubit>()..loadInitial(),
      child: _HomeView(userName: userName),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = constraints.maxWidth / homeDesignWidth;
        return HomeMetrics(
          scale: scale,
          child: Scaffold(
            backgroundColor: HomeColors.background,
            body: BlocConsumer<HomeCubit, HomeState>(
              listenWhen: (previous, current) =>
                  current.hasData &&
                  current.status == HomeStatus.error &&
                  previous.status != HomeStatus.error,
              listener: (context, state) {
                final failure = state.failure;
                if (failure == null) return;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(_homeFailureMessage(failure))),
                );
              },
              builder: (context, state) {
                if (state.showBlockingLoader) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.showBlockingError) {
                  return _HomeLoadError(failure: state.failure);
                }
                final feed = state.feed;
                if (feed == null) return const SizedBox.shrink();
                return _HomeLobby(
                  feed: feed,
                  userName: userName,
                  selectedCategoryId:
                      state.selectedCategoryId ?? feed.selectedCategoryId,
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _HomeLobby extends StatelessWidget {
  const _HomeLobby({
    required this.feed,
    required this.userName,
    required this.selectedCategoryId,
  });

  final HomeFeed feed;
  final String userName;
  final String selectedCategoryId;

  @override
  Widget build(BuildContext context) {
    final metrics = HomeMetrics.of(context);
    final bottom = MediaQuery.paddingOf(context).bottom;
    return Stack(
      children: [
        Column(
          children: [
            SafeArea(
              bottom: false,
              child: HomeTopBar(
                header: feed.header,
                onAction: (action) {
                  RouterScope.of(context).open(action.routeId);
                },
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => context.read<HomeCubit>().refresh(),
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.only(bottom: metrics.s(130) + bottom),
                  children: [
                    HomeCategoryBar(
                      categories: feed.categories,
                      selectedId: selectedCategoryId,
                      searchIcon: feed.search.icon,
                      onSelected: context.read<HomeCubit>().selectCategory,
                    ),
                    HomeBannerView(
                      banner: feed.banner,
                      onTap: () {
                        RouterScope.of(context).open(RouteIds.deposit);
                      },
                    ),
                    for (
                      var index = 0;
                      index < feed.sections.length;
                      index++
                    ) ...[
                      if (index > 0) SizedBox(height: metrics.s(8)),
                      HomeGameSection(
                        section: feed.sections[index],
                        onOpen: (game) => _openGame(context, game),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: HomeTabBar(tabs: feed.tabs),
        ),
      ],
    );
  }

  void _openGame(BuildContext context, HomeGame game) {
    final params = game.routeId == RouteIds.detail
        ? <String, Object?>{'userName': userName}
        : const <String, Object?>{};
    RouterScope.of(context).open(game.routeId, params: params);
  }
}

class _HomeLoadError extends StatelessWidget {
  const _HomeLoadError({required this.failure});

  final Failure? failure;

  @override
  Widget build(BuildContext context) {
    final message = failure == null
        ? 'Could not load the lobby'
        : _homeFailureMessage(failure!);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(message),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () => context.read<HomeCubit>().loadInitial(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

String _homeFailureMessage(Failure failure) {
  return switch (failure) {
    NoInternetFailure() => 'No internet connection',
    TimeoutFailure() => 'The request timed out',
    CancellationFailure() => 'The request was cancelled',
    ParsingFailure() => 'The lobby data could not be read',
    ServerFailure(:final message) => message,
    UnknownFailure(:final message) => message,
  };
}
