import 'package:flutter/material.dart';
import 'package:fresh4delivery/Screens/log1.dart';

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
      backgroundColor: Color.fromRGBO(201, 228, 125, 1),
      body: Center(
        child: Image.asset(
          "assets/images/icon1.png",
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
