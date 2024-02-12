import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wearus/homePage.dart';
import 'package:wearus/introPage.dart';

import 'model/Cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Cart(),
    builder: (context,child)=> MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/homePage':(context)=>const homePage(),
      },
      home: introPage(),
    ),
    );
  }
}
