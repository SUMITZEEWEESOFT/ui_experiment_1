import 'package:flutter/material.dart';
import 'package:ui_experiment_1/wishlist.dart';
import './homepage.dart';
import './allcategory.dart';
import './myaccount.dart';
import './cart.dart';
import './drawer.dart';




class BtmNavigationBar extends StatefulWidget {

  @override

  _BtmNavigationBarState createState() => _BtmNavigationBarState();
}

class _BtmNavigationBarState extends State<BtmNavigationBar> {

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

  int sselectedIndex = 0;

  Widget bottomNavigationBar(int selectedIndex) => Theme(
    data: Theme.of(context).copyWith(
      // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.transparent,
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
        backgroundColor: Colors.white,
        elevation: 0.0,
        onTap: (int index) => setState(() => sselectedIndex = index),
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
            activeIcon: Row(children: [
              SizedBox(width: 10,),
              Icon(Icons.search,color: Colors.indigo),
              SizedBox(width: 10),
              Text('Search',style: TextStyle
                (color: Colors.blue.shade700,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
            ],),

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


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//          drawerScrimColor: Colors.transparent,
//          backgroundColor: Colors.white,
          bottomNavigationBar : bottomNavigationBar( sselectedIndex),
          body: PageStorage(
            child: pages[sselectedIndex],
            bucket: bucket,),
      //appBar: AppBar(),
      // drawer: Drawerr(),
//          drawer: Drawer(
//            elevation: 0.0,
//
//            child: Container(
//              decoration: BoxDecoration(
//                color: Color(0xFFF1652AF),
//                borderRadius: BorderRadius.only(
//                    topRight: Radius.circular(50),
//                    bottomRight: Radius.circular(50)),
//              ),
//              margin: EdgeInsets.only(bottom: 110,),
//              child: ListView(
//                padding: EdgeInsets.zero,
//                children:  <Widget>[
//                  Container(
//                    height: 150,
//                    child: DrawerHeader(
//                      padding: EdgeInsets.only(right: 10,top: 2),
//                      child: Column(
//                        children: [
//                          ListTile(
//                            leading: Padding(
//                              padding: EdgeInsets.only(left: 10,top: 0),
//                              child: CircleAvatar(
////                          child: Container(padding:EdgeInsets.only(top: 20,left: 10)),
//                                radius: 23.0,
//                                backgroundImage: AssetImage('images/profile1.png'),
//                                backgroundColor: Colors.grey,
//                              ),
//                            ),
//                            trailing: Icon(Icons.close,color: Colors.white,),
//                            onTap: (){
//                              Navigator.pushNamed(context, '/btm');
//                            },
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(right: 88),
//                            child: Column(
//                              children: [
//                                Text('Jameson Dunn',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900,color: Colors.white),),
//                                Text('jamesondun@gmail.com',style: TextStyle(color:Colors.white,fontSize: 13.5),), ],
//                            ),
//                          ),
//
//                        ],
//                      ),
//                      decoration: BoxDecoration(
//                          color: Colors.amberAccent,
//                          borderRadius:
//                          BorderRadius.only(topRight: Radius.circular(50))),
//                    ),
//                  ),
//
//                  ListTile(
//                    leading: Icon(Icons.home,color: Colors.white,),
//                    title: Text(
//                      'Home',
//                      style: kTs,
//                    ),
//                    onTap: (){
//                      Navigator.pushNamed(context, '/btm');
//                    },
//                  ),
//                  ListTile(
//                    leading: Icon(Icons.category,color: Colors.white),
//                    title: Text(
//                      'All Category',
//                      style: kTs,
//                    ),
//                    onTap: (){
//                      Navigator.pushNamed(context, '/allcategory');
//                    },
//                  ),
//                  ListTile(
//                    leading: Icon(Icons.shopping_cart,color: Colors.white),
//                    title: Text(
//                      'Cart',
//                      style: kTs,
//                    ),
//                    onTap: (){
//                      Navigator.pushNamed(context, '/cart');
//                    },
//                  ),
//                  ListTile(
//                    leading: Icon(Icons.receipt,color: Colors.white),
//                    title: Text(
//                      'Products',
//                      style: kTs,
//                    ),
//                    onTap: (){
//                      Navigator.pushNamed(context, '/products');
//                    },
//                  ),
//                  ListTile(
//                    leading: Icon(Icons.favorite_border,color: Colors.white),
//                    title: Text(
//                      'Wishlist',
//                      style: kTs,
//                    ),
//                    onTap: (){
//                      Navigator.pushNamed(context, '/wishlist');
//
//
//                    },
//                  ),
//                  ListTile(
//                    leading: Icon(Icons.supervisor_account,color: Colors.white),
//                    title: Text(
//                      'My Account',
//                      style: kTs,
//                    ),
//                    onTap: (){
//                      Navigator.pushNamed(context, '/myaccount');
//                    },
//                  ),
//
//                  SizedBox(
//                    width: 1,
//                    height: 16,
//                    child: Divider(
//                      color: Colors.blue,
//                      indent: 20,
//                      endIndent: 30,
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(left: 16.0, top: 16),
//                    child: Text(
//                      'About Us',
//                      style: kTs,
//                    ),
//                  ),
//                  SizedBox(
//                    height: 15,
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(left: 16.0),
//                    child: Text(
//                      'Log Out',
//                      style: kTs,
//                    ),
//                  ),
//                  SizedBox(
//                    width: 100,
//                  ),
//                ],
//              ),
//            ),
//          ),

//        onTap: (index){
//          setState(() {
//            currentIndex = index;
//            if (index == 0){Navigator.pushReplacementNamed(context, '/home');}
//            else if (index == 1){Navigator.pushReplacementNamed(context, '/cart');}
//            //else if (index == 2){Navigator.pushReplacementNamed(context, '/home');}
//            else if (index == 3){Navigator.pushReplacementNamed(context, '/myaccount');}
//          });

       );
  }
}