import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/account.dart';
import 'package:fresh4delivery/Screens/cart.dart';
import 'package:fresh4delivery/Screens/categories.dart';
import 'package:fresh4delivery/Screens/notification.dart';
import 'package:fresh4delivery/Screens/order.dart';
import 'package:fresh4delivery/Screens/restuarent.dart';
import 'package:fresh4delivery/Screens/restuarent_view.dart';
import 'package:fresh4delivery/Screens/supermarket.dart';
import 'package:fresh4delivery/Screens/supermarket_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [Body(), Category(), Order(), Account()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: currentIndex == 3
            ? AppBar(
                elevation: 0,
                // title: Text('changed'),
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 166, 206, 57),
                        Color.fromARGB(255, 160, 224, 203),
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 255, 255, 255),
                      ],
                    ),
                  ),
                ),
                bottom: (PreferredSize(
                  preferredSize: Size.fromHeight(160),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey.shade500,
                        // backgroundImage: ImageProvider(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Jithin'),
                      Text('Jithin@gmail.com')
                    ],
                  ),
                )),
              )
            : AppBar(
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    child: Row(
                      children: [
                        IconButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen()),
                            );
                          },
                          icon: Icon(Icons.notification_add),
                        ),
                        IconButton(
                            color: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Cart()),
                              );
                            },
                            icon: Icon(Icons.shopping_cart_outlined))
                      ],
                    ),
                  )
                ],
                bottom: (PreferredSize(
                  preferredSize: Size.fromHeight(60),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
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
                )),
              ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 35,
          currentIndex: currentIndex,
          onTap: (index) => setState(
            () => currentIndex = index,
          ),
          // backgroundColor: Color.fromARGB(255, 2, 7, 108),
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
        body: screens[currentIndex],
      ),
    );
  }
}

class Body extends StatelessWidget {
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
    "assets/images/Frame 2.jpg",
    "assets/images/Frame 4.jpg",
    "assets/images/pr.jpg",
    "assets/images/R.jpg",
    "assets/images/pr.jpg",
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
    'Bun',
    'Cream',
    'Chay',
    'Bun',
    'Cream'
  ];

  List img = [
    "assets/images/r1.jpg",
    "assets/images/r2.jpg",
    "assets/images/r3.jpg",
    "assets/images/r4.jpg",
    "assets/images/r5.jpg",
  ];
  List lab = ["ALBAIK", "MAZALI", "OYASIS", "CARAVANS", "SIGN"];
  List img1 = [
    "assets/images/q1.jpg",
    "assets/images/q2.jpg",
    "assets/images/q3.jpg",
    "assets/images/q4.jpg",
    "assets/images/q5.jpg",
  ];
  List lab1 = ["Fresh", "Reliance", "Joys", "Spice", "SIGN"];
  List lab2 = ["30 Min", "29 Min", "20 Min", "10 Min", "35 Min"];

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              height: 200.0,
              autoPlay: true,
            ),
            items: [
              "assets/images/Frame 2.jpg",
              "assets/images/Frame 4.jpg",
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      child: Image.asset(
                    i.toString(),
                    fit: BoxFit.fill,
                  ));
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 15,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return buildCard(image: images[index], text: text[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuperMarket()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(width: 1, color: Colors.grey.shade500)
                        ),
                        // height: 130,
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/q2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                        width: 120,
                        height: 30,
                        child: Center(
                          child: Text(
                            "Supermarket",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                // SizedBox(
                //   width: 10,
                // ),

                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Restuarent()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(width: 1, color: Colors.grey.shade500)
                        ),
                        // height: 130,
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/q2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      // left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        width: 120,
                        height: 30,
                        child: Center(
                          child: Text(
                            "Restaurant",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(20),
                //     // border: Border.all(width: 1, color: Colors.grey.shade500)
                //   ),
                //   // height: 140,
                //   width: 150,
                //   child: Padding(
                //     padding: const EdgeInsets.all(5.0),
                //     child: Column(
                //       children: [
                //         ClipRRect(
                //           borderRadius: BorderRadius.circular(20),
                //           child: Image.asset(
                //             'assets/images/q1.jpg',
                //             fit: BoxFit.cover,
                //             height: 100,
                //           ),
                //         ),
                //         SizedBox(
                //           height: 5,
                //         ),
                //         Text('Hi')
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                Text(
                  'Top Restaurants',
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Restuarent()),
                      );
                    },
                    child: Text(
                      'More',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )),
                // TextButton.icon(
                //     onPressed: () {},
                //     icon: Icon(Icons.fast_forward_outlined),
                //     label: Text('More'))
              ],
            ),
          ),

          GestureDetector(
            onTap: (() {
              // print('Clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestuarentView()),
              );
            }),
            child: Container(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return buildcard_1(
                    img1: img1[index],
                    lab1: lab1[index],
                    lab2: lab2[index],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Top Supermarket',
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SuperMarket()),
                      );
                    },
                    child: Text(
                      'More',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )),

                // TextButton.icon(
                //     onPressed: () {},
                //     icon: Icon(Icons.fast_forward_outlined),
                //     label: Text('More'))
              ],
            ),
          ),

          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SuperMarketView()),
              );
              // print('Clicked');
            }),
            child: Container(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return buildcard_2(
                    img: img[index],
                    lab: lab[index],
                    lab2: lab2[index],
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              height: 180.0,
              autoPlay: true,
            ),
            items: [
              "assets/images/Frame 2.jpg",
              "assets/images/Frame 4.jpg",
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      child: Image.asset(
                    i.toString(),
                    fit: BoxFit.fill,
                  ));
                },
              );
            }).toList(),
          ),

          // Row(
          //   children: [
          //     Image.asset(
          //       "assets/images/Frame 4.jpg",
          //       width: MediaQuery.of(context).size.width,
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}

class buildCard extends StatelessWidget {
  String? image;
  String? text;
  buildCard({Key? key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // print('Clicked');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RestuarentView()),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  image!,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              Text(text!)
            ],
          ),
        ));

    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 4),
    //   child: Column(
    //     children: [
    //       ClipRRect(
    //           borderRadius: BorderRadius.circular(50),
    //           child: Image.asset(image!,
    //               fit: BoxFit.cover, width: 90, height: 90)),
    //       Text(text!)
    //     ],
    //   ),
    // );
  }
}

class buildcard_1 extends StatelessWidget {
  String? img1;
  String? lab1;
  String? lab2;
  buildcard_1({Key? key, this.img1, this.lab1, this.lab2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(width: 1, color: Colors.grey.shade500)
        ),
        // height: 140,
        width: 130,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  img1!,
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(lab1!),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(lab2!)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class buildcard_2 extends StatelessWidget {
  String? img;
  String? lab;
  String? lab2;
  buildcard_2({Key? key, this.img, this.lab, this.lab2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(width: 1, color: Colors.grey.shade500)
        ),
        // height: 140,
        width: 130,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  img!,
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(lab!),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(Icons.star, size: 10, color: Colors.orangeAccent),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(lab2!)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
