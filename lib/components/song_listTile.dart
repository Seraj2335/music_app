import 'package:assignment_app/constants/string_constant.dart';
import 'package:assignment_app/provider/music_app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SongListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MusicAppProvider>(context, listen: false);
    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: listData.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                leading: Container(
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(listData[index].image),
                            fit: BoxFit.fill),
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                title: Text(
                  listData[index].name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: RichText(
                  text: TextSpan(children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.person,
                      size: 15,
                      color: Colors.grey,
                    )),
                    WidgetSpan(
                        child: SizedBox(
                      width: 5,
                    )),
                    TextSpan(
                      text: listData[index].singer,
                      style: TextStyle(
                          color: Colors.grey, fontSize: 15, height: 0.5),
                    )
                  ]),
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: GestureDetector(
                  onTap: () {
                    provider.changeSelectedIndex(index);
                  },
                  child: Icon(
                    provider.selectedIndex[index] == true
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_sharp,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              );
            }));
  }
}
