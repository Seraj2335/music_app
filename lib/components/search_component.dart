import 'package:assignment_app/constants/color_constants.dart';
import 'package:assignment_app/provider/music_app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/string_constant.dart';

class SearchComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MusicAppProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: kOpaqueVoilet, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              provider.isFavs ? Icons.arrow_back_ios : Icons.menu,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          provider.isFavs
              ? Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: kOpaqueVoilet,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                  ),
                )
              : Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: kOpaqueVoilet,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      cursorColor: Colors.grey,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: search,
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
