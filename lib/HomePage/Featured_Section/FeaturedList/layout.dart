import 'package:flutter/material.dart';
import 'package:foodhub/HomePage/Featured_Section/FeaturedList/Card/layout.dart';

class Featured_List extends StatelessWidget{
  const Featured_List({super.key});
  
  @override
  Widget build(BuildContext context) {
return SizedBox(
  height: 183,
  child:   (
     ListView(  
      scrollDirection: Axis.horizontal,
      
      children:const   <Widget> [
         CardTemplate(id:"1",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test.png",storeName: "Puri Vuri",),
        CardTemplate(id:"2",title:"Taco",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test.png",storeName: "Puri Vuri",),
        CardTemplate(id:"3",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test.png",storeName: "Puri Vuri",),
        CardTemplate(id:"4",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test.png",storeName: "Puri Vuri",),
        CardTemplate(id:"5",title:"Burger",price:"23",time:"20 min",rating:4.5,noOfRating:23,like:false,imageUrl:"assets/images/test.png",storeName: "Puri Vuri",),
        
      ],
    )
  ),
);
  }
}