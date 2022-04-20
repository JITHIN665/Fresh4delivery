import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset('assets/images/icon2.png'),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 72, 170, 152),
                Color.fromARGB(255, 166, 206, 57),
              ],
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, top: 10, bottom: 5, right: 10),
                width: double.infinity,
                color: Color.fromRGBO(201, 228, 125, 1),
                child: Row(
                  children: [Text("Delivery to :")],
                  // Icon(Icons.check),
                ),
              )
            ],
          ),
        ),
      ),
      // body: ,
    );
  }
}

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
