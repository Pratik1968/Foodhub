import 'package:flutter/material.dart';
import 'package:foodhub/ResturantPage/StoreInfoContainer/StoreImage/layout.dart';
import 'package:foodhub/ResturantPage/StoreInfoContainer/StoreNameAndRatingContainer/layout.dart';

class StoreInfoContainer extends StatelessWidget{
  const StoreInfoContainer({super.key, required this.storeImageUrl, required this.storeName, });
   final String storeImageUrl,storeName;
  
  @override
  Widget build(BuildContext context) {
// TODO : fetch these from server
int noOfRating = 20;

double rating = 4.3;
return(
Container(
  margin: const EdgeInsets.only(bottom: 30),
  width: double.infinity,
  height: 239,
  child: Layout(storeImageUrl: storeImageUrl, storeName:storeName, noOfRating: noOfRating, rating: rating,),
)
);
  }
}

class Layout extends StatelessWidget{
  const Layout({super.key, required this.storeImageUrl, required this.storeName, required this.noOfRating, required this.rating});
  final String storeImageUrl,storeName;
  final int noOfRating;
  final double rating;
  @override
  Widget build(BuildContext context) {

return(
  Stack(
    children: [
      Positioned(
        top: 0,
        left: 0,

        child: StoreImage(storeImageUrl: storeImageUrl)),
        Positioned(
          bottom: 18,
          left: 20,
  child: StoreNameAndRatingContainer(storeName: storeName, rating: rating, noOfRating: noOfRating),
)

    ],
  )
);
  }
}
