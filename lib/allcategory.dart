import 'package:flutter/material.dart';


class AllCategory extends StatelessWidget {
  const AllCategory({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
        body: SafeArea(
          child: Text('your category'),
        ),
      ),
    );
  }
}
