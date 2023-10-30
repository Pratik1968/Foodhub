import 'package:flutter/material.dart';
import 'package:foodhub/CommanWidget/CommanCardUsedByResturantPageAndFavouritePage/Card/layout.dart';

class FavouriteList extends StatelessWidget{
  const FavouriteList({super.key});
  
  @override
  Widget build(BuildContext context) {

return ListView(
  scrollDirection: Axis.vertical,
// TODO : fetch these from server  
  children: const [
CardTemplate(title: "Ice Cream ", price: "150", time: "20 min", rating: 4.3, noOfRating: 23, like: true, imageUrl: "assets/images/test2.png", id: "alsadal", storeName: "Puri Vuri"),
CardTemplate(title: "Ice Cream ", price: "150", time: "20 min", rating: 4.3, noOfRating: 23, like: true, imageUrl: "assets/images/test2.png", id: "asdalal", storeName: "Puri Vuri"),
CardTemplate(title: "Ice Cream ", price: "150", time: "20 min", rating: 4.3, noOfRating: 23, like: true, imageUrl: "assets/images/test2.png", id: "_alal", storeName: "Puri Vuri"),
CardTemplate(title: "Ice Cream ", price: "150", time: "20 min", rating: 4.3, noOfRating: 23, like: true, imageUrl: "assets/images/test2.png", id: "alalsas", storeName: "Puri Vuri"),
CardTemplate(title: "Ice Cream ", price: "150", time: "20 min", rating: 4.3, noOfRating: 23, like: true, imageUrl: "assets/images/test2.png", id: "alal", storeName: "Puri Vuri"),


  ],
); 
  }
}