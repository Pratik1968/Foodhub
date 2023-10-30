import 'package:flutter/material.dart';
import 'ProfileImage.dart';
import 'Background.dart';

class ProfileImageAndBackground extends StatelessWidget{
  const ProfileImageAndBackground({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {

return   SizedBox(
width: double.infinity,
height: 268,
  child:   Stack(
    children: [
      const Positioned(
        top: 0,
        left: 0,
        right: 0,
        child:Background(),
      ),
      Align(
        alignment: Alignment.center,
      child: ProfileImage(imageUrl: imageUrl),
      )
    ],
  ),
);
  }
}