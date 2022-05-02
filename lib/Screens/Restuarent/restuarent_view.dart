import 'package:flutter/material.dart';

import 'package:fresh4delivery/Screens/Cart/cart.dart';

class RestuarentView extends StatelessWidget {
  const RestuarentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                    // Navigator.pop(context);
                  }),
            ),
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 210,
                  // height: MediaQuery.of(context).size.height,
                  // height: MediaQuery.of(context).size.height * 0.25,
                  // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/r2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Image.asset(
                //   "assets/images/r2.jpg",
                //   // height: 205,
                //   height: MediaQuery.of(context).size.height * 0.25,
                //   width: MediaQuery.of(context).size.width,
                // ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Veg & Non-Veg",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.white, size: 15),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 15),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 15),
                                  Icon(Icons.star,
                                      color: Colors.white, size: 15),
                                  Icon(Icons.star_half,
                                      color: Colors.white, size: 15),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10 Min",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 8,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      child: TabBar(
                        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade400,
                        ),
                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          Tab(
                            child: Text("All"),
                          ),
                          Tab(
                            child: Text("Non-Veg"),
                          ),
                          Tab(
                            child: Text("veg"),
                          ),
                          Tab(
                            child: Text("Beverages"),
                          ),
                          Tab(
                            child: Text("Desserts"),
                          ),
                          Tab(
                            child: Text("Drinks"),
                          ),
                          Tab(
                            child: Text("Snacks"),
                          ),
                          Tab(
                            child: Text("Salads"),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.grey.shade400,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 300,
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Card(),
                            Card(),
                            Card(),
                            Card(),
                            Card(),
                            Card(),
                          ],
                        ),
                      ),
                      // Text("All"),
                      Column(
                        children: [Card()],
                      ),
                      Column(
                        children: [Card()],
                      ),
                      Column(
                        children: [
                          Text('beverages'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Text('data'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('nuts'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Text('data'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Dairy'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Text('data'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Drinks'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Text('data'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Buiscuits'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Text('data'),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade300,
        ),
        // color: Colors.grey.shade300,
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/alfaham.jpg",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text('text'),
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
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 12),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.black,
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) => Container(
                    height: 250,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Select Quantity",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 300,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey),
                                textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Full |599')),
                        ),
                        SizedBox(
                          width: 300,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey),
                                textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Half |299')),
                        ),
                        SizedBox(
                          width: 300,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(////////
                                        Colors.grey),
                                textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 12),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Quarter |99')),
                        ),
                      ],
                    ),
                  ),
                );
                // print('pressed');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => BottomUp(),
                //   ),
                // );
              },
              child: Text('Add to cart'),
            )
          ],
        ),
      ),
    );
  }
}
