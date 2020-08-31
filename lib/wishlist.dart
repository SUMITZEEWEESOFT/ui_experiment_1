
import 'package:flutter/material.dart';
import './drawer.dart';

class Wishlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: Drawerr(),
      body: SafeArea(
        child: Text('Wishlist'),
      ),
    );
  }
}