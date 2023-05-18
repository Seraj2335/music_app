import 'package:assignment_app/constants/color_constants.dart';
import 'package:assignment_app/provider/music_app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/string_constant.dart';

class FilterCategoryCompanent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<MusicAppProvider>(context, listen: false);
    return SizedBox(
        height: size.height * 0.045,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            scrollDirection: Axis.horizontal,
            itemCount: categoryData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  provider.changeSelectedCategoryIndex(index);
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: index == provider.selectedCategoryIndex
                          ? kVoilet
                          : Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    categoryData[index],
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }));
  }
}
