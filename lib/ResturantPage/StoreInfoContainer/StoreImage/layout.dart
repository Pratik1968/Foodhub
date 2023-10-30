import 'package:flutter/material.dart';
import 'package:themed/themed.dart';

class StoreImage extends StatelessWidget{
  const StoreImage({super.key, required this.storeImageUrl});
  final String storeImageUrl;
  @override
  Widget build(BuildContext context) {
return ChangeColors(
brightness: -0.2,
  child:   Image(
    fit: BoxFit.cover,
    height: 239,
  
    image: AssetImage(storeImageUrl)),
);
  }
}