import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/home.dart';
import 'package:fresh4delivery/Screens/otp_veri.dart';
import 'package:fresh4delivery/Screens/reset_pass.dart';
import 'package:fresh4delivery/Screens/signup.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

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
        title: Text('Login'),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  'Hello Again !',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    "Welcome back you'have been missed!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
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
                      hintText: 'Enter You Email or Phone Number'),
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
                      hintText: 'Enter Your Password'),
                  obscureText: true,
                ),
                // SizedBox(
                //   height: 10,
                // ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Reset()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Reset Password',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )),
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
                          Color.fromARGB(255, 166, 206, 57),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Text(
                      'Login',
                    ),
                  ),
                ),
                SizedBox(
                  height: 160,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
