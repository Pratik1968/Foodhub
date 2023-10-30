import 'package:flutter/material.dart';
import 'FoodName.dart';
import 'Time.dart';
import 'PriceAndRatingContainer/layout.dart';
class info extends StatelessWidget{
  const info({super.key, required this.id, required this.title, required this.time, required this.price, required this.noOfRating, required this.rating});
  final String id,title,time,price;
  final int noOfRating;
  final double rating;
  @override
  Widget build(BuildContext context) {

return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  FoodName(title: title, id: id),
  const SizedBox(height: 9,),
  Timer(time: time, id: id),
    const SizedBox(height: 9,),
  PriceAndRatingContainer(price: price, id: id, noOfRating: noOfRating, rating: rating)
  ],
);
  }
}