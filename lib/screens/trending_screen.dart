import 'dart:async';

import 'package:flutter/material.dart';

import '../components/filter_category.dart';
import '../components/search_component.dart';
import '../components/song_listTile.dart';
import '../components/trending_now_list.dart';

class TrendingNowScreen extends StatefulWidget {
  const TrendingNowScreen({super.key});

  @override
  State<TrendingNowScreen> createState() => _TrendingNowScreenState();
}

class _TrendingNowScreenState extends State<TrendingNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchComponent(),
        SizedBox(
          height: 20,
        ),
        TrendingNowSection(),
        FilterCategoryCompanent(),
        SizedBox(
          height: 15,
        ),
        SongListTile()
      ],
    );
  }
}
