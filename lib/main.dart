import 'package:flutter/material.dart';
import 'package:ui_experiment_1/drawer.dart';
import './splashscreen.dart';
import './homepage.dart';
import './allcategory.dart';
import './cart.dart';
import './myaccount.dart';
import './products.dart';
import './wishlist.dart';
import './bottomnavigation.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
          canvasColor: Colors.transparent,
          backgroundColor: Colors.white,




          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
          )),
      debugShowCheckedModeBanner: false,
      initialRoute: ('/home'),
      routes: {
        '/':(context) => SplashScreen(),
        '/home':(context) => HomePage(),
        '/allcategory':(context) => AllCategory(),
        '/cart':(context) => Cart(),
        '/products':(context) => Products(),
        '/wishlist':(context) => Wishlist(),
        '/myaccount':(context) => MyAccount(),
        '/btm' : (context) => BtmNavigationBar(),
      },
    );
  }
}