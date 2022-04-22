import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/supermarket_view.dart';

class SupermarketModel {
  String? image;
  String? name;
  String? name1;

  SupermarketModel({this.image, this.name, this.name1});
}

class SuperMarket extends StatelessWidget {
  var supermarket = [
    SupermarketModel(
        name: "Fresh", image: "assets/images/q1.jpg", name1: "30 Min"),
    SupermarketModel(
        name: "Reliance", image: "assets/images/q2.jpg", name1: "10 Min"),
    SupermarketModel(
        name: "Joys", image: "assets/images/q3.jpg", name1: "15 Min"),
    SupermarketModel(
        name: "Spice", image: "assets/images/q4.jpg", name1: "25 Min"),
    SupermarketModel(
        name: "BR", image: "assets/images/q5.jpg", name1: "20 Min"),
  ];
  SuperMarket({Key? key}) : super(key: key);

  // get supermarket => null;

  @override
  Widget build(BuildContext context) {
    var flexibleSpace;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                      return sup(
                          image: supermarket[index].image,
                          text: supermarket[index].name,
                          name1: supermarket[index].name1);
                    }),

                // body: Padding(
                //   padding: EdgeInsets.all(15),
                //   child: ListView(
                //     scrollDirection: Axis.vertical,
                //     children: <Widget>[FittedBox()],
                //   ),
                // ),
              ),
            )));
  }
}

class sup extends StatelessWidget {
  String? image;
  String? text;
  String? name1;
  sup({Key? key, this.image, this.text, this.name1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SuperMarketView()));
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
                    Text(name1!),
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
