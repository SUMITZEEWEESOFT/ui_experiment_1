import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[800],
      ),
      body: SafeArea(
        child: Text('Wishlist'),
      ),
    );
  }
}
