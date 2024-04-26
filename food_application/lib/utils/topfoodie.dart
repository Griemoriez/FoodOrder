import 'package:flutter/material.dart';
import 'package:food_application/utils/listviewVertical.dart';

class topfoodie extends StatelessWidget {
  topfoodie({super.key});

  Map<String, String> listFood = {
  'Pork Belly': 'Delicious honey glazed pork belly that melts in your mouth.',
  'Pecking Duck': 'Succulent pecking duck with a crispy skin and tender meat.',
  'Sweet Porridge': 'Warm and comforting sweet porridge that soothes your soul.',
  'Spring Roll': 'Crispy spring roll filled with fresh and flavorful ingredients.',
  
  };

  List<String> photoPath = [
    'lib/assets/babi.jpg',
    'lib/assets/bebek.jpg',
    'lib/assets/bubur.jpg',
    'lib/assets/lumpia.jpg',
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
          child: Text("Top Foodie",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
        listView_vertical(mylist: listFood, photoPath: photoPath, height: 700,)
      ],
    );
  }
}