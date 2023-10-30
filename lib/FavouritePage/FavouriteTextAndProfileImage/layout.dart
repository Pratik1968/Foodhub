import 'package:flutter/material.dart';
import 'package:foodhub/FavouritePage/FavouriteTextAndProfileImage/FavouriteText.dart';
import 'package:foodhub/FavouritePage/FavouriteTextAndProfileImage/Profileimage.dart';

class FavouriteTextAndProfileImageContainer extends StatelessWidget{
  const FavouriteTextAndProfileImageContainer({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
return Container(
  margin: const EdgeInsets.only(top: 30),
width: double.infinity,

  child:   Row(
    
    children: [
   const    Expanded(
        flex: 9,
        child: Align(
          alignment: Alignment.center,
          child: FavouriteText(),
        
        ),
      ),
  Align(
    alignment: Alignment.centerRight,
    child: ProfileImage(imageUrl: imageUrl,),
  )
    ],
  ),
); 
  }

}