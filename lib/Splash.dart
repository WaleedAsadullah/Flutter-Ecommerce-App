import 'package:flutter/material.dart';
import 'dart:async';
import 'package:clothesshop/Loginpage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}



class _SplashState extends State<Splash> {
  @override
    void initState(){
    super.initState();
    Timer(Duration(seconds: 3),()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/1.gif",
              // height: 250.0,F
              width: MediaQuery.of(context).size.width,
            ),
            
          ],
        ),
      ),
    );
  }
}
