import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget{
  const SearchIcon({super.key});
  
  @override
  Widget build(BuildContext context) {
return(const Image(
  width: 13.5,
  height: 13.5,
  image: AssetImage("assets/images/SearchIcon.png")));
  }
}