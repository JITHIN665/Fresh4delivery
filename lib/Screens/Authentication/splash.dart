import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/Authentication/log1.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLoggin();
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 166, 206, 57),
      body: Center(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     colors: [
        //       Color.fromARGB(255, 72, 170, 152),
        //       Color.fromARGB(255, 166, 206, 57),
        //     ],
        //   ),
        // ),
        child: Image.asset(
          "assets/images/icon1.png",
          color: Colors.black,
          width: 180,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  void gotoLoggin() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => ScreenLog()));
    });
  }
}


// Text;