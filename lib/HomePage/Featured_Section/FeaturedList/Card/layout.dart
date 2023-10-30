import 'package:flutter/material.dart';
import 'package:foodhub/FoodPage/layout.dart';

import 'CardBottom.dart';
import 'CardTop.dart';

class CardTemplate extends StatelessWidget{
  const CardTemplate({super.key, required  this.title, required  this.price, required  this.time, required this.rating, required this.noOfRating, required this.like, required  this.imageUrl, required  this.id, required this.storeName});
  final String title; final String price; final String time; final double rating; final int noOfRating; final bool like; final String imageUrl;final String id,storeName;
  @override
  Widget build(BuildContext context) {
return GestureDetector(
  onTap: (){
     Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) =>  FoodPage(title:title,price:price,time:time,rating:rating,noOfRating:noOfRating,like:like,imageUrl:imageUrl,id:id,storeName: storeName,),
    transitionDuration: const Duration(seconds: 1),
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
  ),
);
  },
  child:   (
  Container(
    width: 266.0,
    height: 168,
    margin: const EdgeInsets.only(right: 15,bottom: 15),
  decoration:  BoxDecoration(
    color: Colors.white,
    
    borderRadius: BorderRadius.circular(15),
    boxShadow:const [
     BoxShadow(
  blurRadius: 6.0,
  offset: Offset(1,5),
  color: Color.fromARGB(25,211, 209, 216 )
  ),
   
  
  ]),
  child:  Column(children: [
    Expanded(
      flex: 8,
      child: CardTop(rating:rating,noOfRating:noOfRating,like:like,imageUrl:imageUrl,id:id)),
    Expanded(
      flex: 3,
      child: CardBottom(title:title,time:time,id:id)),
  ]),
  )
  
  ),
);

  }

}

