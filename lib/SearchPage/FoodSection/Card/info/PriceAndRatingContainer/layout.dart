import 'package:flutter/material.dart';
import 'PriceContainer.dart';
import 'RatingContainer.dart';
class PriceAndRatingContainer extends StatelessWidget{
  const PriceAndRatingContainer({super.key, required this.price, required this.id, required this.noOfRating, required this.rating});
   final String price,id;
final int noOfRating;
final double rating;
  @override
  Widget build(BuildContext context) {
return Row(

  children: [
   PriceContainer(price: price, id: id),
  const  SizedBox(width: 12,),
  RatingContainer(rating: rating, noOfRating: noOfRating, id: id)
  ],
);
  }
}