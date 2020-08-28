import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import './homepage.dart';
import './bottomnavigation.dart';

//void main() => runApp(MaterialApp(
//
//  home: SplashScreen(),
//));


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 4);
    return  Timer(duration, route);
  }

  route() {
    Navigator.pushReplacementNamed(context, '/btm');

  }

  initScreen(BuildContext context) {

    //Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/splash3c.png'),
                      fit: BoxFit.fitWidth)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  width: 500,
                ),
                Container(
                  height: 36,
                  width: 36,
                  child: CircularProgressIndicator(
                      backgroundColor: Colors.white, strokeWidth: 3.1),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  '                       Welcome to \n The Best Online Shopping Experience ',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                )
              ],
            )
          ],
        )
    );
  }
}



