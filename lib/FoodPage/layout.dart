import 'package:flutter/material.dart';
import 'package:foodhub/FoodPage/FoodReviewInputBox/layout.dart';
import 'package:foodhub/FoodPage/FoodReviewTemplateContainer/layout.dart';
import 'package:foodhub/FoodPage/RatingBarContainer/layout.dart';
import 'RatingAndTimeAndStoreNameContainer/layout.dart';
import './FoodImage/layout.dart';
import 'Favour/layout.dart';
import 'TitleAndPriceContainer/layout.dart';

class FoodPage extends StatelessWidget {
  const FoodPage(
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
  final String imageUrl;
  final String id,storeName;
  final int noOfRating;
  final bool like;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
    
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Stack(
            children: [
              Positioned.fill(
                child: Layout(
                    price: price,
                    title: title,
                    imageUrl: imageUrl,
                    id: id,
                    time: time,
                    noOfRating: noOfRating,
                    rating: rating,
                  storeName: storeName,
                  ),
              ),
          const     Align(
                alignment: Alignment.bottomCenter,
                child: FavouriteButton())
                
                ]
          )),
    ));
  }
}

class Layout extends StatelessWidget {
  const Layout({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.id,
    required this.time,
    required this.noOfRating,
    required this.rating,
    required this.price, required this.storeName,
  });
  final String title, imageUrl, id, time, price,storeName;
  final int noOfRating;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 27.0, left: 27, right: 27),
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              FoodImage(imageUrl: imageUrl, id: id),
              const SizedBox(
                height: 22,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TitleAndPriceContainer(text:title, id: id, price: price,),),
              Align(
                  alignment: Alignment.center,
                  child: RatingAndTimeAndStoreNameContainer(
                    id: id,
                    rating: rating,
                    time: time,
                    noOfRating: noOfRating,
                    storeName: storeName,
                  )),
            
            ]),
            
            const Align(
              alignment: Alignment.center,
              child: RatingBarContainer(),
            )
            ,
            const Align(
              alignment: Alignment.center,
              child: FoodReviewInput(),
            ),
            const Align(
              alignment: Alignment.center,
              child: FoodReviewTemplateContainer(
                name: "Pratik",
                date: "20/12/23",
                imageUrl: "assets/images/test4.png",
                rating: 4.3,
                review_text:
                    "Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote.",
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: FoodReviewTemplateContainer(
                name: "Pratik",
                date: "20/12/23",
                imageUrl: "assets/images/test4.png",
                rating: 4.3,
                review_text:
                    "Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote.",
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: FoodReviewTemplateContainer(
                name: "Pratik",
                date: "20/12/23",
                imageUrl: "assets/images/test4.png",
                rating: 4.3,
                review_text:
                    "Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote.",
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: FoodReviewTemplateContainer(
                name: "Pratik",
                date: "20/12/23",
                imageUrl: "assets/images/test4.png",
                rating: 4.3,
                review_text:
                    "Really convenient and the points system helps benefit loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out to more remote.",
              ),
            )
          ],
        ));
  }
}
