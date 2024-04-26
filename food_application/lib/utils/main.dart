
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_application/utils/bookmark.dart';
import 'package:food_application/utils/discovery.dart';
import 'package:food_application/utils/home.dart';
import 'package:food_application/utils/profile.dart';
import 'package:food_application/utils/topfoodie.dart';



void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _curr = 0;
  final _pages = [home(),discovery(),bookmark(),topfoodie(),profile()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Your Font Family'),
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
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
                  "Easy Food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                centerTitle: true,
              ),
            ),
          ),
          body: _pages[_curr],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blueAccent,
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,
            currentIndex: _curr,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                backgroundColor: Colors.orange.shade300,
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.location_on_outlined),
                backgroundColor: Colors.orange.shade300,
                label: "Discovery",
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.bookmark_border),
                backgroundColor: Colors.orange.shade300,
                label: "Bookmark",
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.emoji_events),
                backgroundColor: Colors.orange.shade300,
                label: "Top Foodie",
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.face),
                backgroundColor: Colors.orange.shade300,
                label: "Profile",
              )
            ],
            onTap: (index) {
              setState(() {
                _curr = index;
              });
            },
          ),
        );
      })
       
    );
  }
}
