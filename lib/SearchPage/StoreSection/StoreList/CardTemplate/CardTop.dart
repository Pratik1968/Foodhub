import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTop extends StatelessWidget {
  const CardTop(
      {super.key,

      required this.imageUrl,
      required this.id});

  final String imageUrl;
  final String id;
  @override
  Widget build(BuildContext context) {
    return (SizedBox(
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Hero(
                tag: "FoodImage$id",
                child: Image(
                    fit: BoxFit.cover,
                    width: 130.99,
                    height: 125,
                    image: AssetImage(imageUrl)),
              )),
      
        ],
      ),
    ));
  }
}



