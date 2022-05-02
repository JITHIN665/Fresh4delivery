import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/Restuarent/restuarent_view.dart';

class RestaurantModel {
  String? image;
  String? name;

  RestaurantModel({this.image, this.name});
}

class Restuarent extends StatelessWidget {
  // List image = [
  //   "assets/images/r1.jpg",
  //   "assets/images/r2.jpg",
  //   "assets/images/r3.jpg",
  //   "assets/images/r4.jpg",
  //   "assets/images/r5.jpg",
  //   "assets/images/r1.jpg",
  // ];
  // List text = [
  //   'King',
  //   'Jack',
  //   'Queen',
  //   'King',
  //   'Jack',
  //   'Queen',
  // ];

  var restaurants = [
    RestaurantModel(name: "ALBAIK", image: "assets/images/r1.jpg"),
    RestaurantModel(name: "MAZALI", image: "assets/images/r2.jpg"),
    RestaurantModel(name: "OYASIS", image: "assets/images/r3.jpg"),
    RestaurantModel(name: "CARAVANS", image: "assets/images/r4.jpg"),
    RestaurantModel(name: "SIGN", image: "assets/images/r5.jpg"),
  ];
  Restuarent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var flexibleSpace;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 72, 170, 152),
                Color.fromARGB(255, 166, 206, 57),
              ],
            ),
          ),
        ),
        elevation: 0,
        title: Image.asset('assets/images/icon2.png'),
        // leading: Image.asset('assets/images/icon2.png'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: Row(
              children: [
                IconButton(
                  color: Colors.black,
                  onPressed: () {},
                  icon: Icon(Icons.notification_add),
                ),
                IconButton(
                    color: Colors.black,
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart_outlined))
              ],
            ),
          )
        ],
        bottom: (PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search for  Restaurant, Supermarkets",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        fillColor: Colors.grey.shade300),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,

          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return res(
                    image: restaurants[index].image,
                    text: restaurants[index].name);
              }),

          // body: Padding(
          //   padding: EdgeInsets.all(15),
          //   child: ListView(
          //     scrollDirection: Axis.vertical,
          //     children: <Widget>[
          //       FittedBox(
          //         child: Card(
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(15),
          //           ),
          //           elevation: 5,
          //           child: Row(
          //             children: [
          //               Rest(),
          //               Container(
          //                 width: 160,
          //                 height: 70,
          //                 child: ClipRRect(
          //                   borderRadius: BorderRadius.circular(15),
          //                   child: Image(
          //                     fit: BoxFit.cover,
          //                     alignment: Alignment.centerLeft,
          //                     image: AssetImage("assets/images/r1.jpg"),
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ),
      ),
    ));
  }

  // Widget Rest() {
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.symmetric(horizontal: 5),
  //           child: Text(
  //             "SIGN",
  //             style: TextStyle(
  //               fontWeight: FontWeight.bold,
  //               fontSize: 15,
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           height: 4,
  //         ),
  //         Text(
  //           "30 Minutes",
  //           style: TextStyle(
  //             // fontWeight: FontWeight.bold,
  //             fontSize: 8,
  //           ),
  //         ),
  //         Row(
  //           children: [
  //             Icon(
  //               Icons.star,
  //               size: 10,
  //               color: Colors.orangeAccent,
  //             ),
  //             Icon(
  //               Icons.star,
  //               size: 10,
  //               color: Colors.orangeAccent,
  //             ),
  //             Icon(
  //               Icons.star,
  //               size: 10,
  //               color: Colors.orangeAccent,
  //             ),
  //             Icon(
  //               Icons.star,
  //               size: 10,
  //               color: Colors.orangeAccent,
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}

class res extends StatelessWidget {
  String? image;
  String? text;
  res({Key? key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RestuarentView()));
      },
      child: Padding(
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
                  width: 20,
                ),
                Column(
                  children: [
                    Text(text!),
                    Text('30 Minutes'),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
