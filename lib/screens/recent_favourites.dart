import 'package:assignment_app/components/search_component.dart';
import 'package:assignment_app/constants/string_constant.dart';
import 'package:flutter/material.dart';

class RecentFavourites extends StatefulWidget {
  @override
  State<RecentFavourites> createState() => _RecentFavouritesState();
}

class _RecentFavouritesState extends State<RecentFavourites> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchComponent(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            recentFavs,
            style: TextStyle(
                color: Colors.grey, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                itemCount: listData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(listData[index].image)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          margin: EdgeInsets.only(bottom: 5),
                          height: 150,
                        ),
                        Text(
                          listData[index].name,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          listData[index].singer,
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    )))
      ],
    );
  }
}
