import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_application/utils/verticalcard.dart';

class listView_vertical extends StatelessWidget {
  final double height;
  final Map<String, String> mylist;
  final List<String> photoPath;
  listView_vertical({Key? key,required this.height , required this.mylist, required this.photoPath}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        itemCount: mylist.length,
        itemBuilder: (context, index) {
          String key = mylist.keys.elementAt(index);
          return v_card(path: photoPath[index], title: key, description: mylist[key]!);
        },
      ),
    );
  }
}
