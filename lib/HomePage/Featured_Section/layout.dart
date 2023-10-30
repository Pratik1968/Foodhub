import 'package:flutter/material.dart';
import 'package:foodhub/HomePage/Featured_Section/Feature_Title/layout.dart';
import 'package:foodhub/HomePage/Featured_Section/FeaturedList/layout.dart';

class Feature_Section extends StatelessWidget{
  const Feature_Section({super.key});
  
  @override
  Widget build(BuildContext context) {
return (const Layout());
  }
}
class Layout extends StatelessWidget{
  const Layout({super.key});
  
  @override
  Widget build(BuildContext context) {
return  const  Padding(
  padding:  EdgeInsets.only(left: 26,),
  child:   (
     Column(
    
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(bottom: 21.0),
        child: Feature_Title(),
      ),
      Featured_List()
    ],)
  ),
);
  }
}