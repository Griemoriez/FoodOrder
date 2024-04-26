import 'package:flutter/material.dart';
import 'package:food_application/utils/listviewVertical.dart';

class seeAllPage extends StatelessWidget {
  seeAllPage({super.key});

  Map<String, String> listFood = {
  'Pork Belly': 'Delicious honey glazed pork belly that melts in your mouth.',
  'Pecking Duck': 'Succulent pecking duck with a crispy skin and tender meat.',
  'Sweet Porridge': 'Warm and comforting sweet porridge that soothes your soul.',
  'Spring Roll': 'Crispy spring roll filled with fresh and flavorful ingredients.',
  'Noddle': 'Slurp-worthy noodles tossed in a savory sauce.',
  'Satay': 'Grilled satay skewers served with a tangy peanut sauce.',
  'Dumpling': 'Juicy dumplings with a perfectly steamed wrapper and flavorful filling.',
  'Soto': 'Hearty soto soup with a rich and aromatic broth.',
  'Wonton': 'Delicate wontons filled with seasoned meat in a clear, savory broth.',
  };

  List<String> photoPath = [
    'lib/assets/babi.jpg',
    'lib/assets/bebek.jpg',
    'lib/assets/bubur.jpg',
    'lib/assets/lumpia.jpg',
    'lib/assets/miayam.jpg',
    'lib/assets/sate.jpg',
    'lib/assets/siomay.jpg',
    'lib/assets/soto.jpg',
    'lib/assets/wonton.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            
            padding: const EdgeInsets.only(top: 20.0),
            child: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: const Text(
                "My Food App",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              centerTitle: true,
            ),
          ),
        ),
        body: content(),
      );

  }

  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          child: Text("Most Popular",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        ),
        listView_vertical(mylist: listFood, photoPath: photoPath, height: 750,)
      ],
    );
  }
}