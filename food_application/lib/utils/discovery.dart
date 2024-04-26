import 'package:flutter/material.dart';
import 'package:food_application/utils/listviewVertical.dart';

class discovery extends StatelessWidget {
  discovery({super.key});

  Map<String, String> listFood = {
  'Hok Siong': 'Opens from 9 AM to 9 PM',
  'Bubur Madura': 'Opens from 6 AM to 9 AM',
  'Mie Ayam Gajah Mada': 'Opens from 2 PM to 9 PM',
  'Sate Ayam Cak Duro': 'Opens from 5 PM to 9 PM',
  'Grand Wing Heng': 'Opens 24 Hours',
  'Soto Ayam Cak Kan': 'Opens from 8 AM to 12 AM',
  };

  List<String> photoPath = [
    'lib/assets/babi.jpg',
    'lib/assets/bubur.jpg',
    'lib/assets/miayam.jpg',
    'lib/assets/sate.jpg',
    'lib/assets/siomay.jpg',
    'lib/assets/soto.jpg',
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
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Text("Discovery",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
        listView_vertical(mylist: listFood, photoPath: photoPath, height: 700,)
      ],
    );
  }
}