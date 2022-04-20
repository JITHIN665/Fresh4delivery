import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<String> _ListItem = [
    "assets/images/r1.jpg",
    "assets/images/r2.jpg",
    "assets/images/r3.jpg",
    "assets/images/r4.jpg",
    "assets/images/r5.jpg",
    "assets/images/q1.jpg",
    "assets/images/q2.jpg",
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: GridView.count(
          crossAxisCount: 4,
          padding: EdgeInsets.all(15),
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          children: _ListItem.map(
            (item) => Card(
              elevation: 0,
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(80),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset('assets/images/R.jpg'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('title',
                      style: TextStyle(
                        fontSize: 10,
                      ))
                ],
              ),
            ),
          ).toList(),
        ),
      );
}
