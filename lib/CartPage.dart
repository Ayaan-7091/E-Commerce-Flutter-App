import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/CartItem.dart';
import 'model/Cart.dart';
import 'model/Product.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>Padding(
        padding:EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),

            const SizedBox(height: 10,),
            
            Expanded(child: ListView.builder(itemCount: value.getUserCart().length,itemBuilder: (context,index){

              Product individualProduct = value.getUserCart()[index];

              return CartItem(product: individualProduct,);
            }))
          ],
        ),)
    );
  }
}
