import 'dart:async';
import 'package:flutter/material.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SplashScreen2(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: 500,
        color: Colors.red,
        child: Image.asset('assets/images/Component 11.png'),
      ),
    );
  }
}



class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomepage(),
          ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 500,
            color: Colors.red,
            child:
            Image.asset('assets/images/Component 11.png'),

          ),
          Text('Guide your way to Canada, \n   with ease and clarity',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                wordSpacing: -5,
                textBaseline: TextBaseline.alphabetic

            ),)
        ],
      ),
    );
  }
}
