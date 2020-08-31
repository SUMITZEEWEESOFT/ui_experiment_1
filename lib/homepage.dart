import './splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './drawer.dart';
import './bottomnavigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,

        drawer: Drawerr(),
        appBar: AppBar(),
      //bottomNavigationBar: BtmNavigationBar(),
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.993),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: 264,
                    constraints:
                    BoxConstraints.expand(width: 480,height: 270),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/women.jpeg"),
                        alignment: Alignment.topCenter,
                        fit: BoxFit.fitWidth, // <-- BACKGROUND IMAGE
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.multiply),
                      ),
                      //color: Color.fromRGBO(66, 165, 245, 0.5),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 150,
                    top: 130,
                  ),
                  height: 130,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/logob.png"),
                      alignment: Alignment.topCenter,
                      // <-- BACKGROUND IMAGE
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only( top: 240),
                  padding: EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(41),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 6.0,
                        spreadRadius: 0.0,
                        offset: Offset(0.0, 2.0,),),
                    ],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Sign up to get started experience'),
                      SizedBox(
                        height: 4,
                      ),
                      Text('great shopping deals'),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Username'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:285.0,right: 0.0,top: 2,bottom: 27),
                        child: Text(
                          'Forgot password',
                          style: TextStyle(color: Colors.blue[900],fontWeight: FontWeight.normal),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          'SIGN IN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(60),
                        ),
                        width: 340,
                        height: 50,
                      ),
                      SizedBox(height: 18,),],),)
              ]),

              SizedBox(
                height: 17,
              ),
              Text(
                '-OR-',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.asset('images/fb.png',height: 33,width: 60,),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Sign in with facebook',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: Colors.grey[500], width: 0.7)),
                width: 340,
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 8,
                ),
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 25),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('images/google.png',height: 35,width: 62,),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Sign in with google',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),],),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(color: Colors.grey[500], width: 0.7),),
                width: 340,
                height: 50,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an acoount?'),
                  Text(
                    ' Signup',
                    style: TextStyle(color: Colors.indigo),
                  )
                ],
              ),
            ],
          ),
        ),

    );
  }
}