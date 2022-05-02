import 'package:flutter/material.dart';

class OrderModel {
  String? image;
  String? name;
  String? name1;

  OrderModel({this.image, this.name, this.name1});
}

class Order extends StatelessWidget {
  var order = [
    OrderModel(
        name: "Fresh Chicken", image: "assets/images/q1.jpg", name1: "30 Min"),
    OrderModel(
        name: "Shawarma", image: "assets/images/q2.jpg", name1: "10 Min"),
    OrderModel(name: "Alfahm", image: "assets/images/q3.jpg", name1: "15 Min"),
    OrderModel(name: "Tomato", image: "assets/images/q4.jpg", name1: "25 Min"),
    OrderModel(name: "Pumpkin", image: "assets/images/q5.jpg", name1: "20 Min"),
  ];
  Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: double.infinity,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ord(
                  image: order[index].image,
                  text: order[index].name,
                  name1: order[index].name1);
            }),
      ),
    ));
  }
}

class ord extends StatelessWidget {
  String? image;
  String? text;
  String? name1;
  ord({Key? key, this.image, this.text, this.name1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    image!,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(text!, style: TextStyle(fontSize: 20)),
                    Text(name1!),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
