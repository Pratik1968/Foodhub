import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget{
  const FoodImage({super.key, required this.id, required this.imageUrl});
  final String id,imageUrl;
  @override
  Widget build(BuildContext context) {
return
ClipRRect(
              borderRadius:  BorderRadius.circular(20),
              child: Hero(
                tag: "FoodImage$id",
                child: Image(
                    fit: BoxFit.cover,
                    width: 100,
                    height: 135,
                    image: AssetImage(imageUrl)),
              ))
;
  }
}