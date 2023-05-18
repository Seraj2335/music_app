import 'package:assignment_app/constants/color_constants.dart';
import 'package:assignment_app/provider/music_app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatelessWidget {
  final iconListData = [
    Icons.home,
    Icons.search,
    Icons.queue_music,
    Icons.person,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<MusicAppProvider>(context, listen: false);
    return Container(
      width: size.width * 0.91,
      alignment: Alignment.center,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 35),
      decoration: BoxDecoration(
          color: kOpaqueVoilet, borderRadius: BorderRadius.circular(15)),
      child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              iconListData.length,
              (index) => GestureDetector(
                  onTap: () {
                    provider.changeState(index);
                  },
                  child: Icon(
                    iconListData[index],
                    size: index == provider.currentIndex ? 25 : 20,
                    color: index == provider.currentIndex
                        ? Colors.white
                        : Colors.grey,
                  )))),
    );
  }
}
