import 'package:assignment_app/provider/music_app_provider.dart';
import 'package:assignment_app/screens/music_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChangeNotifierProvider(
      create: (context) => MusicAppProvider(),
      child: MusicApp(),
    ),
  ));
}



// Trending now section


