import 'package:flutter/material.dart';
import 'package:ui_experiment_1/wishlist.dart';
import './homepage.dart';
import './allcategory.dart';
import './myaccount.dart';
import './cart.dart';
import './drawer.dart';
class Btm1 extends StatefulWidget {
  @override
  _Btm1State createState() => _Btm1State();
}

class _Btm1State extends State<Btm1> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(
        key: PageStorageKey('HomePage'),
      ),
      Cart(
        key: PageStorageKey('AllCategory'),
      ),
      AllCategory(
        key: PageStorageKey('HomePage'),
      ),
      MyAccount(
        key: PageStorageKey('MyAccount'),
      ),
    ];

    final PageStorageBucket bucket = PageStorageBucket();

    int selectedIndex = 0;

    return Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.transparent,


          iconTheme: Theme.of(context).iconTheme
              .copyWith(color: Colors.red,),

          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          //primaryColor: Colors.white,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.indigo))),
      child:  Container(
        padding: EdgeInsets.only(bottom: 4,top: 10,left: 7,right: 13),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1.0,
                  offset:  Offset(0.0, 1.00), //(x,y)
                  spreadRadius: 0.8
              )
            ]
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          onTap: (int index) => setState(() => selectedIndex = index),
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home,size: 30,color: Colors.grey,),
              title: Text(''),
              activeIcon: Row(children: [
                SizedBox(width: 10,),
                Icon(Icons.home,size: 30,color: Colors.indigo,),
                SizedBox(width: 10),
                Text('Home',style: TextStyle
                  (color: Colors.blue.shade700,
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),
              ],),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,size: 30,color: Colors.grey),
              title: Text(''),
              activeIcon: Row(children: [
                SizedBox(width: 10,),
                Icon(Icons.shopping_cart,size: 25,color: Colors.indigo),
                SizedBox(width: 10),
                Text('Cart',style: TextStyle
                  (color: Colors.blue.shade700,
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),
              ],),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,size: 30,color: Colors.grey),
              title: Text(''),
              activeIcon: GestureDetector(
                onTap:(){ setState(() {
                  selectedIndex=2;
                });},
                child: Row(children: [

                  SizedBox(width: 10,),
                  Icon(Icons.search,color: Colors.indigo),
                  SizedBox(width: 10),
                  Text('Search',style: TextStyle
                    (color: Colors.blue.shade700,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
                ],),
              ),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,size: 30,color: Colors.grey),
              title: Text(''),
              activeIcon: Row(children: [
                //SizedBox(width: 10,),
                Icon(Icons.account_circle,size: 25,color: Colors.indigo),
                SizedBox(width: 7),
                Text('Account',style: TextStyle
                  (color: Colors.blue.shade700,
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),

              ],),
            ),
            // BottomNavigationBarItem(icon: Icon(Icons.home,size:0,),title: Text(''))

          ],
        ),),);
  }
}
