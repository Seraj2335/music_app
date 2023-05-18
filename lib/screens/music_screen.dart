import 'package:assignment_app/provider/music_app_provider.dart';
import 'package:assignment_app/screens/recent_favourites.dart';
import 'package:assignment_app/screens/trending_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/custom_navigation_bar.dart';
import '../constants/color_constants.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<MusicAppProvider>(context);
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [kVoilet, kDarkVoilet])),
              child:
                  provider.isFavs ? RecentFavourites() : TrendingNowScreen()),
        ),
        floatingActionButton: CustomBottomNavigationBar());
  }
}
