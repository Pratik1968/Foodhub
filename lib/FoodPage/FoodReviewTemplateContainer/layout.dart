import 'package:flutter/material.dart';
import 'TopPart/layout.dart';
import 'BottomPart/layout.dart';
class FoodReviewTemplateContainer extends StatelessWidget{
  const FoodReviewTemplateContainer({super.key, required this.name, required this.date, required this.imageUrl, required this.rating, required this.review_text});
  final String name, date,imageUrl,review_text;final double rating ;
  @override
  Widget build(BuildContext context) {

return Container(
margin: const EdgeInsets.only(bottom:30 ),
  child:   Column(
    children: [
          
      TopPart(title: name, date: date, imageUrl: imageUrl, rating: rating),
     const  SizedBox(height: 17,),
      BottomPart(review_text: review_text,)
      
    ],
  ),
);
  }
}
