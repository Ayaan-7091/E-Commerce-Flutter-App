import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Product.dart';

class ProductTile extends StatelessWidget {
  Product product;
  void Function()? onTap;
   ProductTile({super.key,required this.product,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      width: 300,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        //image
        children: [
          ClipRRect(
          child:Image.asset(product.pathToImage),
            borderRadius:BorderRadius.circular(12),

          ),

          // Text(product.description,style: TextStyle(color: Colors.grey[400]),),

          // const SizedBox(height: 13.5,),

          Padding(padding: EdgeInsets.only(left: 25),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(product.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      Text("₹${product.price}")
              ],
            ),
            //Add button
                   GestureDetector(
                     onTap: onTap,
                   child:Container(
                     padding: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                       color: Colors.black,borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(12),
                       bottomRight: Radius.circular(12)
                     )
                     ),
                     child: Icon(Icons.add,color: Colors.white,),
                   ),)
          ],
     
        ))
        
        ],
        
        
      ),
    );
  }
}
