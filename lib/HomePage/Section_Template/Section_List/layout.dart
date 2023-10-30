import 'package:flutter/material.dart';
import 'Card/layout.dart';
class Section_List extends StatelessWidget{
  const Section_List({super.key, required this.Url, required this.id});
final String id;
  final String  Url; 
  @override
  Widget build(BuildContext context) {
return SizedBox(
  height: 200,
  child:   (
     ListView(  
      scrollDirection: Axis.horizontal,
      
      children: <Widget> [
        CardTemplate(id:"11$id",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test2.png",storeName: "Puri Vuri",),
        CardTemplate(id:"12$id",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test2.png",storeName: "Puri Vuri",),
        CardTemplate(id:"13$id",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test2.png",storeName: "Puri Vuri",),
        CardTemplate(id:"14$id",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test2.png",storeName: "Puri Vuri",),
        CardTemplate(id:"15$id",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test2.png",storeName: "Puri Vuri",),
        
      ],
    )
  ),
);
// return(const CardTemplate(title: "Burger", price:"25" , time:"20 min", rating: 4.3, noOfRating: 23, like: false, imageUrl:"assets/images/test2.png"));
  }
}