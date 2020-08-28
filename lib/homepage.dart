import './splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './drawer.dart';
import './bottomnavigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        drawerScrimColor: Colors.transparent,
appBar: AppBar(),

//        bottomNavigationBar: Theme(
//          data: Theme.of(context).copyWith(
//            // sets the background color of the `BottomNavigationBar`
//              canvasColor: Colors.white,
//              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
//              primaryColor: Colors.white,
//              textTheme: Theme.of(context)
//                  .textTheme
//                  .copyWith(caption: TextStyle(color: Colors.grey.shade400,))),
//          child: BtmNavigationBar(),
//        ),


      ),
    );
  }
}
