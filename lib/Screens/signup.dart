import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 10,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        title: Text('Sign Up'),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 10,
                // ),
                Text(
                  'Hello !',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 230,
                  child: Text(
                    "Enter Your Informations to Join Our Family",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.grey.shade800),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),

                      // label: Text(
                      //   'Email/Number',
                      //   style: TextStyle(color: Colors.grey),
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      // border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: 'Enter Your Name'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.grey.shade800),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),

                      // label: Text(
                      //   'Email/Number',
                      //   style: TextStyle(color: Colors.grey),
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      // border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: 'Enter Your Email ID'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.grey.shade800),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),

                      // label: Text(
                      //   'Email/Number',
                      //   style: TextStyle(color: Colors.grey),
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      // border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: 'Enter Your Phone Number'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.grey.shade800),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),

                      // label: Text(
                      //   'Email/Number',
                      //   style: TextStyle(color: Colors.grey),
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      // border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: 'Enter Your Password'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      // label: Text(
                      //   'Password',
                      //   style: TextStyle(color: Colors.grey),
                      // ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      // border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: 'Re-Enter Your Password'),
                  obscureText: true,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(201, 228, 125, 1))),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const ScreenHome()),
                      // );
                    },
                    child: Text(
                      'Login',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ScreenLogin()),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Color.fromRGBO(201, 228, 125, 1)),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
