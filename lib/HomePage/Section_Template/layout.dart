import 'package:flutter/material.dart';
import 'package:foodhub/FoodPage/RatingAndTimeAndStoreNameContainer/layout.dart';
import 'TitleTextAndViewAll/layout.dart';
import 'Section_List/layout.dart';
class Section_Template extends StatelessWidget{
  const Section_Template({super.key, required this.Title, required this.id, required this.storeId, required this.storeImageUrl, required this.storeName});
  final String Title;final String id;
  final String storeId , storeImageUrl,storeName;
  @override
  Widget build(BuildContext context) {
return  Container(
  margin: const EdgeInsets.only(bottom: 21),
  child:   Padding(
    padding:  const EdgeInsets.only(left: 26,),
    child:   (
       Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin:const  EdgeInsets.only(bottom:21.0),
          child: TitleTextAndViewAll(title: Title,storeId: storeId,storeName: storeName,storeImageUrl: storeImageUrl, ),
        ),
  Section_List(Url: "",id:id)
      ],)
    ),
  ),
);
  }
}
