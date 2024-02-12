import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/ProductTile.dart';
import 'model/Cart.dart';
import 'model/Product.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addProductToCart(Product product) {
    // Use the context provided by the StatefulWidget
    Provider.of<Cart>(context, listen: false).addItem(product);
    //display alert dialog
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Successfully Added"),
      content: Text("Check your cart"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(

      children: [
        //search bar
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search ",style: TextStyle(color: Colors.grey),),
              Icon(Icons.search_rounded,color: Colors.grey[600],)
            ],
          ),
        ),

        Padding(padding: EdgeInsets.all(25),
          child: Text("Your style is your signature. Make a statement with Wearus",
              style: TextStyle(color: Colors.grey[600],fontSize: 10)),
        ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hot Picks 🔥",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold)),
              Text("See all",style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.bold),)
            ],
          ),),

        const SizedBox(height: 10,),

        //list tile to display the clothes
        Expanded(

            child: ListView.builder(
                itemCount: value.getProductList().length,
                scrollDirection: Axis.horizontal,
                //create a product object
                itemBuilder: (context,index){

                  //return a product
                  Product product = value.getProductList()[index];
                  return ProductTile(product: product,
                                      onTap:()=> addProductToCart(product),);
                })),

        Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Divider(
            color: Colors.grey[300],
          ),)

      ],
    )
    );
  }
}
