import 'package:flutter/material.dart';
import "Card/layout.dart";
class FoodSection extends StatelessWidget{
  const FoodSection({super.key, });
 
   
  @override
  Widget build(BuildContext context) {
// TODO : fetch all these data
return ListView(
scrollDirection: Axis.vertical,
children: const  [
   CardTemplate(title: "Chocolate Ice Cream", price: "150", time: "20 min ", rating: 4.3, noOfRating: 23,  imageUrl: "assets/images/test2.png", id: "asdasghfgfh", storeName: "Puri Vuri", like: false,), 
   CardTemplate(title: "Chocolate Ice Cream", price: "150", time: "20 min ", rating: 4.3, noOfRating: 23,  imageUrl: "assets/images/test2.png", id: "asdasghfgfhzxcxzc", storeName: "Puri Vuri", like: false,),
 CardTemplate(title: "Chocolate Ice Cream", price: "150", time: "20 min ", rating: 4.3, noOfRating: 23,  imageUrl: "assets/images/test2.png", id: "asdasghfgfcccch", storeName: "Puri Vuri", like: false,),
CardTemplate(title: "Chocolate Ice Cream", price: "150", time: "20 min ", rating: 4.3, noOfRating: 23,  imageUrl: "assets/images/test2.png", id: "asdasghfgfxzcxh", storeName: "Puri Vuri", like: false,),
 CardTemplate(title: "Chocolate Ice Cream", price: "150", time: "20 min ", rating: 4.3, noOfRating: 23,  imageUrl: "assets/images/test2.png", id: "asdasghfgfxxxh", storeName: "Puri Vuri", like: false,),
  CardTemplate(title: "Chocolate Ice Cream", price: "150", time: "20 min ", rating: 4.3, noOfRating: 23,  imageUrl: "assets/images/test2.png", id: "asdasghfgfhzxczxc", storeName: "Puri Vuri", like: false,)
],
);

;
  }
}