import 'package:flutter/material.dart';
import 'package:foodhub/CommanWidget/CommanCardUsedByResturantPageAndFavouritePage/Card/layout.dart';
import 'package:foodhub/ResturantPage/SortByContainer/layout.dart';
import 'package:foodhub/ResturantPage/StoreInfoContainer/layout.dart';

class ResturantPage extends StatelessWidget {
  const ResturantPage({
    super.key,
    required this.resturantid,
    required this.Name,
    required this.storeImageUrl,
  });
  final String resturantid, Name, storeImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Layout(
        resturantid: resturantid,
        Name: Name,
        storeImageUrl: storeImageUrl,
        
      )),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout(
      {super.key,
      required this.resturantid,
      required this.Name,
      required this.storeImageUrl,
      });
  final String resturantid, Name, storeImageUrl;
 
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StoreInfoContainer(
          storeImageUrl: storeImageUrl,
          storeName: Name,
        ),
const SortByContainer(),
// TODO : Fetch these from server
CardTemplate(title: "Burger", price: "23",  rating:4.3, noOfRating: 23, like: false, imageUrl: "assets/images/test2.png", id: "_", storeName: Name, time: '20 min',),
CardTemplate(title: "Burger", price: "23",  rating:4.3, noOfRating: 23, like: false, imageUrl: "assets/images/test2.png", id: "*", storeName: Name, time: '20 min',),
CardTemplate(title: "Burger", price: "23",  rating:4.3, noOfRating: 23, like: false, imageUrl: "assets/images/test2.png", id: "|", storeName: Name, time: '20 min',),

CardTemplate(title: "Burger", price: "23",  rating:4.3, noOfRating: 23, like: false, imageUrl: "assets/images/test2.png", id: "||", storeName: Name, time: '20 min',),

      ],
    );
  }
}
