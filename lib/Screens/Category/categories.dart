import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/Cart/cart.dart';
import 'package:fresh4delivery/Screens/Order/order.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List images = [
    "assets/images/alfaham.jpg",
    "assets/images/f1.jpg",
    "assets/images/f2.jpg",
    "assets/images/f3.jpg",
    "assets/images/f4.jpg",
    "assets/images/f5.jpg",
    "assets/images/f6.jpg",
    "assets/images/v1.jpg",
    "assets/images/v2.jpg",
    "assets/images/v3.jpg",
    "assets/images/f1.jpg",
    "assets/images/f2.jpg",
    "assets/images/f3.jpg",
    "assets/images/f4.jpg",
    "assets/images/f5.jpg",
  ];
  List text = [
    'Alfaham',
    'Donut',
    'Karimeen',
    'Masala Dosa',
    'Burger',
    'Nuggets',
    'Chicken',
    'carrot',
    'radish',
    'watermelon',
    'Donut',
    'Karimeen',
    'Masala Dosa',
    'Burger',
    'Nuggets',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 0, crossAxisSpacing: 0),
            itemBuilder: (context, index) {
              return Circlewidget(
                images: images[index],
                text: text[index],
              );
            },
            itemCount: text.length,
          ),
        ),
        // body: GridView.count(
        //   crossAxisCount: 4,
        //   padding: EdgeInsets.all(15),
        //   crossAxisSpacing: 5,
        //   mainAxisSpacing: 10,
        //   children: _ListItem.map(
        //     (item) => Card(
        //       elevation: 0,
        //       color: Colors.transparent,
        //       child: Column(
        //         children: [
        //           Container(
        //             padding: const EdgeInsets.all(1),
        //             decoration: BoxDecoration(
        //               border: Border.all(width: 2, color: Colors.grey.shade300),
        //               borderRadius: BorderRadius.circular(80),
        //             ),
        //             clipBehavior: Clip.hardEdge,
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(80),
        //               child: Image.asset('assets/images/R.jpg'),
        //             ),
        //           ),
        //           SizedBox(height: 10),
        //           Text('title',
        //               style: TextStyle(
        //                 fontSize: 10,
        //               ))
        //         ],
        //       ),
        //     ),
        //   ).toList(),
        // ),
      );
}

class Circlewidget extends StatelessWidget {
  String? images;
  String? text;
  Circlewidget({Key? key, this.images, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Cart()));
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              images!,
              fit: BoxFit.cover,
            ),
            width: 70,
            height: 70,
          ),
          SizedBox(height: 10),
          Text(text!,
              style: TextStyle(
                fontSize: 10,
              ))
        ],
      ),
    );
  }
}
