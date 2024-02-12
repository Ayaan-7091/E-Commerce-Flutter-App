import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  BottomNavBar({super.key , required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value)=> onTabChange!(value),
        tabs: const [
          GButton(
              icon: Icons.home,
              text: 'Shop',),
          GButton(icon: Icons.shopping_bag_rounded,
                  text: 'cart',),


        ],
      ),
    );
  }
}
