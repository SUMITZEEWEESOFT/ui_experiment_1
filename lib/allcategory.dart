import 'package:flutter/material.dart';
import './bottomnavigation.dart';
import './drawer.dart';


class AllCategory extends StatelessWidget {
  const AllCategory({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(),
        drawer: Drawerr(),
        body: SafeArea(
          child: Text('your category'),
        ),

    );

  }
}