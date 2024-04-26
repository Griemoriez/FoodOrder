import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'card.dart';
// Listview untuk listview horizontal dimana menerima parameter list untuk nama dan deskripsi lalu list yang kedua untuk path image
class listView_popular extends StatelessWidget {
  final Map<String, String> mylist;
  final List<String> photoPath;
  listView_popular({Key? key, required this.mylist, required this.photoPath}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: mylist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String key = mylist.keys.elementAt(index);
          return myCard(path: photoPath[index], title: key, description: mylist[key]!);
        },
      ),
    );
  }
}
