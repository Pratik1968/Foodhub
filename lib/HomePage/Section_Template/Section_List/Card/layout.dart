import 'package:flutter/material.dart';
import 'package:foodhub/FoodPage/RatingAndTimeAndStoreNameContainer/layout.dart';
import 'package:foodhub/FoodPage/layout.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CardBottom.dart';
import 'CardTop.dart';

class CardTemplate extends StatelessWidget {
  const CardTemplate(
      {super.key,
      required this.title,
      required this.price,
      required this.time,
      required this.rating,
      required this.noOfRating,
      required this.like,
      required this.imageUrl,
      required this.id, required this.storeName});
  final String title;
  final String price;
  final String time;
  final double rating;
  final String imageUrl,storeName;
  final int noOfRating;
  final bool like;
  final String id;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => FoodPage(
                title: title,
                price: price,
                time: time,
                rating: rating,
                noOfRating: noOfRating,
                like: like,
                imageUrl: imageUrl,
                id: id,
                storeName: storeName,
                ),
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ),
        );
      },
      child: (Container(
          width: 154.43,
          height: 240,
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: TopAndBottomContainer(
                      title: title,
                      time: time,
                      price: price,
                      like: like,
                      imageUrl: imageUrl,
                      id: id)),
              Positioned(
                  bottom: 40,
                  child:
                      RatingContainer(rating: rating, noOfRating: noOfRating,id:id))
            ],
          ))),
    );
  }
}

class TopAndBottomContainer extends StatelessWidget {
  const TopAndBottomContainer(
      {super.key,
      required this.title,
      required this.price,
      required this.time,
      required this.like,
      required this.imageUrl,
      required this.id});
  final String title;
  final String price;
  final String time;
  final String imageUrl;
  final String id;
  final bool like;
  @override
  Widget build(BuildContext context) {
    return (SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        Expanded(
            flex: 8,
            child:
                CardTop(price: price, like: like, imageUrl: imageUrl, id: id)),
        Expanded(
            flex: 2,
            child: CardBottom(
              title: title,
              time: time,
              id: id,
            )),
      ]),
    ));
  }
}

class RatingContainer extends StatelessWidget {
  const RatingContainer(
      {super.key, required this.rating, required this.noOfRating, required this.id});
  final double rating;
  final int noOfRating;final String id;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag:"Rating$id",
      child: (Container(
        width: 69,
        height: 25.7,
        margin: const EdgeInsets.only(left: 11, top: 9, bottom: 0, right: 0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(20, 254, 114, 76),
                  blurRadius: 5.0,
                  offset: Offset(1, 5))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              rating.toString(),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 11.69,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 2.44,
            ),
            const Image(
                width: 9.887,
                height: 8.539,
                image: AssetImage("assets/images/star.png")),
            const SizedBox(
              width: 2.44,
            ),
            Text(
              noOfRating.toString(),
              style: GoogleFonts.inter(
                color: const Color(0xFF9796A1),
                fontSize: 8.186,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      )),
    );
  }
}
