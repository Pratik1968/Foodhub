import 'package:flutter/material.dart';
import 'package:foodhub/FavouritePage/FavouriteList/layout.dart';
import 'package:foodhub/FavouritePage/FavouriteTextAndProfileImage/layout.dart';
class FavouritePage extends StatelessWidget{
  const FavouritePage({super.key});
  @override
  Widget build(BuildContext context) {
return const SafeArea(
  child:   Scaffold(
    backgroundColor: Colors.white,
    body: Layout(),
  ),
);

  }
}
class Layout  extends StatelessWidget{
  const Layout({super.key});
  // TODO : fetch this from server
  final String imageUrl = "assets/images/test4.png";
  
 
  
  @override
  Widget build(BuildContext context) {

return  Container(
  margin: const EdgeInsets.symmetric(horizontal: 27,),
  width: double.infinity,
  height: double.infinity,
  child:   (
  Column(children: [
    FavouriteTextAndProfileImageContainer(imageUrl: imageUrl),
  const SizedBox(height: 27,),
const Expanded(
  flex: 8,
  child: FavouriteList()),

  ],)
  
  ),
);
  }
}