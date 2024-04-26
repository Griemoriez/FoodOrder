import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const CategoryItem({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3)
          )
        ]
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.orange,
              child: Icon(icon, size: 30, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}