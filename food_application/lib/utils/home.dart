import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_application/utils/seeAll.dart';
import 'listview.dart';
import 'category.dart';
import 'listviewVertical.dart';

class home extends StatelessWidget {
  home({super.key});

  List<Map<String, dynamic>> items = [
  {"image": "lib/assets/babi.jpg", "title": "Pork Belly"},
  {"image": "lib/assets/bebek.jpg", "title": "Pecking Duck"},
  {"image": "lib/assets/lumpia.jpg", "title": "Spring Roll"},
  ];
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
    return Builder(builder: (context) {
      return Scaffold(

        body: content(context),
    );
    }); 
  }

  Widget content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only( left: 8, bottom: 10),
                child: Text("Hi, Acto!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 10,bottom: 15,left: 8,right: 8),
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Colors.orange,
                  labelText: 'Search',
                  hintText: 'Sate Madura, Bubur madura, ...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.orange)
                    
                  ),
                ),
              ),
            ),
            
            Container(
              child: CarouselSlider(
                items: items.map((item) {
                  return Container(
                    width: 500,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(item['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Text(
                          item['title'],
                          
                          style: const TextStyle(fontSize: 30,color: Colors.white),
                        ),
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(height: 200),),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Most Popular',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => seeAllPage()),
                          );
                        },
                        child: const Text(
                          'See all',
                          style: TextStyle(color: Colors.orange, fontSize: 16),
                        ),
                      ),
                    )
                    
                  ],
                ),
              ),
            ),

            Center(child: listView_popular(mylist: listFood, photoPath: photoPath,)),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Meal Deals',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all',
                        style: TextStyle(color: Colors.orange, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            listView_popular(mylist: listFood, photoPath: photoPath,),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text("Category", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Center(
                child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CategoryItem(title: 'Food', icon: Icons.fastfood),
                      CategoryItem(title: 'Snacks', icon: Icons.cookie_rounded),
                      CategoryItem(title: 'Drinks', icon: Icons.local_drink),
                    ],
                  ),
              ),
            ),
            listView_vertical(mylist: listFood, photoPath: photoPath, height: 400,),
            
            
          ],
        ),
      )
    );
  }
}