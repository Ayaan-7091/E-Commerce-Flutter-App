import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wearus/homePage.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

              Image.asset('lib/Images/wearus_logo_3.png',),
            const SizedBox(height: 20,),
            Text("W E A R U S",style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Text("Elevate Your Style, Embrace Wearus"),
            const SizedBox(height: 80,),

            GestureDetector(
              onTap: (){Navigator.pushNamed(context, '/homePage');},
            child:Container(
              height: 80,width: 400,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child:Center(
              child: Text("SHOP NOW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
              )
            )
            )



          ],
        ),
      ),
    );
  }
}
