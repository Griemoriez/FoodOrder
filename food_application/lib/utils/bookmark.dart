import 'package:flutter/material.dart';
import 'package:food_application/utils/listviewVertical.dart';

class bookmark extends StatelessWidget {
  bookmark({super.key});

  Map<String, String> listFood = {
  'Pork Belly': 'Delicious honey glazed pork belly that melts in your mouth.',
  'Pecking Duck': 'Succulent pecking duck with a crispy skin and tender meat.',
  'Wonton': 'Delicate wontons filled with seasoned meat in a clear, savory broth.',
  };

  List<String> photoPath = [
    'lib/assets/babi.jpg',
    'lib/assets/bebek.jpg',
    'lib/assets/wonton.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: content(),
      
      );

  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          child: Text("Bookmark",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
        listView_vertical(mylist: listFood, photoPath: photoPath, height: 700,)
      ],
    );
  }
}