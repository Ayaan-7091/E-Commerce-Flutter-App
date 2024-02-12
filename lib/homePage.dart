import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearus/CartPage.dart';
import 'package:wearus/components/BottomNavBar.dart';

import 'ShopPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  //this selected index is to control the bottom navigation bar
  int selectedIndex = 0;

  //this method will update the selected index
  //when the user taps the bottom bar
  void navigateBottomBar(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  //pages to display
  final List<Widget> pages = [
    const ShopPage(),

    //cart page
    const CartPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder:(context)=> IconButton(
          icon: Icon(Icons.menu_rounded,color: Colors.black,),
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
        ),
      ),),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              children: [



            DrawerHeader(child: Image.asset('lib/Images/wearus_logo_4.png',color:Colors.white,)),

            // to leave space belo the logo
           Padding(padding: EdgeInsets.symmetric(horizontal: 20,),
            child: Divider(color:Colors.grey[900],),),


            //other pages
            const Padding(padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.home_rounded,color: Colors.white,),
                      title:Text('Home',style: TextStyle(color: Colors.white),),

                    )),

            const Padding(padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.info,color: Colors.white,),
                  title:Text('About',style: TextStyle(color: Colors.white),),

                )),
            ]),

            const Padding(padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.logout_rounded,color: Colors.white,),
                  title:Text('Logout',style: TextStyle(color: Colors.white),),

                )),

          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
