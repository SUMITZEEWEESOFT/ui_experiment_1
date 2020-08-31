import 'package:flutter/material.dart';
import './drawer.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerr(),
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Text('here is your Products'),
      ),
    );
  }
}