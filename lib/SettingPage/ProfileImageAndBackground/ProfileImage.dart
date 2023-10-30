import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget{
  const ProfileImage({super.key, required this.imageUrl});
  final String imageUrl ; 
  @override
  Widget build(BuildContext context) {
return CircleAvatar(
  backgroundColor: Colors.white,
  radius: 45,
  child:   CircleAvatar(
  backgroundImage: AssetImage(imageUrl),
  radius: 40,
  ),
);
  }

}