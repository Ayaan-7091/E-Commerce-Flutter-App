import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/Cart.dart';
import '../model/Product.dart';

class CartItem extends StatefulWidget {
  Product product;
 CartItem({super.key,required this.product});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItem(widget.product);
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
    margin: EdgeInsets.all(5),
    child:ListTile(
      leading:Image.asset(widget.product.pathToImage),
      title: Text(widget.product.name),
      subtitle: Text("₹ "+widget.product.price,style: TextStyle(color: Colors.grey),),
      trailing: IconButton(icon: Icon(Icons.delete_rounded),onPressed: removeItemFromCart,),
    )
    );
  }
}
