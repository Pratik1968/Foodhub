import 'package:flutter/material.dart';
import 'package:foodhub/FoodPage/FoodReviewTemplateContainer/TopPart/OptionContainer/layout.dart';
import 'AvatarImageAndRatingContainer/layout.dart';
import 'TitleAndDateContainer/layout.dart';
class TopPart extends StatelessWidget{
  const TopPart({super.key, required this.title, required this.date, required this.imageUrl, required this.rating});
  final String title , date,imageUrl;final double rating;
  @override
  Widget build(BuildContext context) {
return(
  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex:1,
        child: AvatarImageAndRatingContainer(imageUrl: imageUrl, rating: rating)),
const SizedBox(width: 18.25,),
   Expanded(
    flex: 8,
    child: TitleAndDateContainer(title: title, date: date)),
 const Expanded(
   flex: 1,
   child: OptionContainer(),
 )
   
    ],
  )
);

  }
}