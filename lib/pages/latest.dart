import 'package:flutter/material.dart';

import '../providers/mamus_provider.dart';
import '../widgets/buttons/grid_list_toggle.dart';
import '../widgets/gas_page.dart';

class LatestMoviesPage extends StatelessWidget {
  static const routeName = '/latest-movies';
  const LatestMoviesPage({Key? key}) : super(key: key);

  static final _mamuKey = GlobalKey<MamuMovieListpageState<LatestMamus>>();

  @override
  Widget build(BuildContext context) {
    return MamuMovieListpage<LatestMamus>(
      key: _mamuKey,
      label: 'latest',
      handler: LatestMamus(),
      appBar: AppBar(
        title: Text(
          'Latest Movies',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      actions: [
        GridListToggle(controller: _mamuKey.currentState?.scrollController),
      ],
    );
  }
}

class HD4KMoviesPage extends StatelessWidget {
  static const routeName = '/hd4k-movies';
  const HD4KMoviesPage({Key? key}) : super(key: key);

  static final _mamuKey = GlobalKey<MamuMovieListpageState<HDMamus>>();

  @override
  Widget build(BuildContext context) {
    return MamuMovieListpage<HDMamus>(
      key: _mamuKey,
      label: '4k',
      handler: HDMamus(),
      actions: [
        GridListToggle(controller: _mamuKey.currentState?.scrollController),
      ],
      appBar: AppBar(
        title: Text(
          '4K Movies',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
    );
  }
}