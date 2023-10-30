import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget{
  const FoodImage({super.key,required this.imageUrl,required this.id});
  final String imageUrl;final String id;
  @override
  Widget build(BuildContext context) {

return Container(
  width: double.infinity,
    height: 206,
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)), 
  child:   Hero(
  tag: "FoodImage$id",
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image(
      fit: BoxFit.cover,
     height: 206,
      image:AssetImage(imageUrl)),
  )),
);
  
}}