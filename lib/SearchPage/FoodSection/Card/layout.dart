import 'package:flutter/material.dart';
import 'package:foodhub/FoodPage/layout.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Image.dart';
import 'info/layout.dart';

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
child:Layout(title: title, imageUrl: imageUrl, id: id, time: time, noOfRating: noOfRating, rating: rating, price: price, storeName: storeName) ,
    );
  }
}

class Layout extends StatelessWidget {
  const Layout(
      {super.key,
      required this.title,
      required this.price,
      required this.time,
      required this.imageUrl,
      required this.id, required this.noOfRating, required this.rating, required this.storeName});
  final String title;
  final String price;
  final String time;
  final String imageUrl;
  final String id;
  final int noOfRating;
  final double rating;
  final String storeName;
  @override
  Widget build(BuildContext context) {
    return (Container(
      margin:const  EdgeInsets.only(left: 10,bottom: 30),
      width: double.infinity,
      height: 95.452,
      child: Row(children: [
FoodImage(id: id, imageUrl: imageUrl),
const SizedBox(width: 30,),
info(id: id, title: title, time: time, price: price, noOfRating: noOfRating, rating: rating)
      ]),
    ));
  }
}

