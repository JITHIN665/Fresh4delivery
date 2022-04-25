import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/cart.dart';
import 'package:fresh4delivery/Screens/notification.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
              Color.fromRGBO(166, 206, 57, 1),
              Color.fromRGBO(72, 170, 152, 1)
            ]))),
        title: Image.asset("assets/images/icon2.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications_none, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()),
                    );
                  },
                ),
                IconButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Cart()),
                      );
                    },
                    icon: Icon(Icons.shopping_cart_outlined))
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.84,
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
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //       hintText: "Search for  Restaurant, Supermarkets",
                    //       prefixIcon: Icon(Icons.search),
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //           borderSide: BorderSide.none),
                    //       contentPadding: EdgeInsets.zero,
                    //       filled: true,
                    //       fillColor: Colors.grey.shade300),
                    // ),
                  ],
                ),
              ),
            ],
          ),
          preferredSize: Size.fromHeight(60),
        ),
      ),
    );
  }
}
