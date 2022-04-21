import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/login.dart';

class ScreenLog extends StatelessWidget {
  const ScreenLog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 140,
                ),
                Image.asset(
                  'assets/images/icon1.png',
                  width: 160,
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Image.asset('assets/images/Mask group.png'),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade900),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 129, 128, 128)),
                      hintText: ' Enter Number'),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 166, 206, 57),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenLogin()),
                      );
                    },
                    child: Text(
                      'Continue',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Or',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade800)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenLogin()),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          'Continue With Email',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
