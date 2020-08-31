import 'package:flutter/material.dart';
import 'main.dart';
import './bottomnavigation.dart';
import './cart.dart';
import './allcategory.dart';
import './myaccount.dart';
import './homepage.dart';

const TextStyle kTs =
TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400);

class Drawerr extends StatefulWidget {
  @override
  _DrawerrState createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF1652AF),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50)),
        ),
        margin: EdgeInsets.only(bottom: 45,),
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            Container(
              height: 150,
              child: DrawerHeader(
                padding: EdgeInsets.only(right: 10,top: 2),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(left: 10,top: 0),
                        child: CircleAvatar(
//                          child: Container(padding:EdgeInsets.only(top: 20,left: 10)),
                          radius: 23.0,
                          backgroundImage: AssetImage('images/profile1.png'),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      trailing: Icon(Icons.close,color: Colors.white,),
                      onTap: (){
                        //Navigator.pushNamed(context, '/home');
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 88),
                      child: Column(
                        children: [
                          Text('Jameson Dunn',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,color: Colors.white),),
                          Text('jamesondun@gmail.com',style: TextStyle(color:Colors.white,fontSize: 13.5),), ],
                      ),
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius:
                    BorderRadius.only(topRight: Radius.circular(50))),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text(
                'Home',
                style: kTs,
              ),
              onTap: (){
                //Navigator.pushNamed(context, '/home');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.category,color: Colors.white),
              title: Text(
                'All Category',
                style: kTs,
              ),
              onTap: (){
                Navigator.pushNamed(context, '/allcategory');


              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart,color: Colors.white),
              title: Text(
                'Cart',
                style: kTs,
              ),
              onTap: (){
                Navigator.pushNamed(context, '/cart');
              },
            ),
            ListTile(
              leading: Icon(Icons.receipt,color: Colors.white),
              title: Text(
                'Products',
                style: kTs,
              ),
              onTap: (){
                Navigator.pushNamed(context, '/products');
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border,color: Colors.white),
              title: Text(
                'Wishlist',
                style: kTs,
              ),
              onTap: (){
                Navigator.pushNamed(context, '/wishlist');


              },
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account,color: Colors.white),
              title: Text(
                'My Account',
                style: kTs,
              ),
              onTap: (){
                Navigator.pushNamed(context, '/myaccount');
              },
            ),

            SizedBox(
              width: 1,
              height: 16,
              child: Divider(
                color: Colors.blue,
                indent: 20,
                endIndent: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16),
              child: Text(
                'About Us',
                style: kTs,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Log Out',
                style: kTs,
              ),
            ),
            SizedBox(
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}