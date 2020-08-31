import 'package:flutter/material.dart';
import './drawer.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: Drawerr(),

      body: SafeArea(
        child: Text('this is your cart'),
      ),
    );
  }
}