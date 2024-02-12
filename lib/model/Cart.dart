//to implement
//List of products
//list of items in user cart
//get list for item in sale
//add items to cart
//remove items from cart

import 'dart:core';

import 'package:flutter/cupertino.dart';

import 'Product.dart';

class Cart extends ChangeNotifier{
//List of products
  List<Product> productShop = [
    Product(name: "Wearus Wolf", price: "399", pathToImage:"lib/Images/1.png", description: "desc"),
    Product(name: "Gerahead", price: "449", pathToImage:"lib/Images/gearhead.png", description: "desc"),
    Product(name: "Brocelle", price: "399", pathToImage:"lib/Images/brocelle.png", description: "desc"),
    Product(name: "Be Free", price: "399", pathToImage:"lib/Images/space.png", description: "desc"),
    Product(name: "Yuki Kaze", price: "399", pathToImage:"lib/Images/yuki.png", description: "desc"),
    Product(name: "WEAERUS Signatures", price: "499", pathToImage:"lib/Images/blue.png", description: "desc"),
    Product(name: "Enigma", price: "399", pathToImage:"lib/Images/enigma.png", description: "desc"),
    Product(name: "Spooky Vibes", price: "399", pathToImage:"lib/Images/spooky.png", description: "desc"),
    Product(name: "SLAY", price: "399", pathToImage:"lib/Images/slay.png", description: "desc"),

  ];
//list of items in user cart
  List<Product>  userCart=[];

//get list for item in sale
  List<Product> getProductList(){
    return productShop;

  }

  List<Product> getUserCart(){
    return userCart;
  }

  void addItem(Product product){
    userCart.add(product);
    notifyListeners();
  }

  void removeItem(Product product){
    userCart.remove(product);
    notifyListeners();
  }
}