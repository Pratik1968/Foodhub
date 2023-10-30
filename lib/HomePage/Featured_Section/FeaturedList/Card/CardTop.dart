import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTop extends StatelessWidget{
  const CardTop({super.key, required  this.rating, required  this.noOfRating, required  this.like, required this.imageUrl, required  this.id});
  final double rating; final int noOfRating; final bool like;final String imageUrl;final String id;
  @override
  Widget build(BuildContext context) {
return (
  SizedBox(
    child:  Stack(
      children: [
        ClipRRect(
          borderRadius:const  BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0),),
          
          child: Hero(
            tag: "FoodImage$id",
            child: Image(
              width: 266,
             height: 122.934,
              image: AssetImage(imageUrl)),
          ))
        
        ,
    Align(
    alignment: Alignment.topLeft,
    child: RatingContainer(rating:rating,noOfRating:noOfRating)),
     Align(
    alignment: Alignment.topRight,
    child: LikeBox(like:like)),
      ],
    ),
  )
);
  }

}
class RatingContainer extends StatelessWidget{
  const RatingContainer({super.key, required  this.rating, required this.noOfRating});
   final double rating; final int noOfRating;
  @override
  Widget build(BuildContext context) {
return(
   Container(
    width: 69,
    height: 25.7,
    margin:const  EdgeInsets.only(left: 11,top: 9,bottom: 0,right: 0),
decoration:  BoxDecoration(
  color: Colors.white,
borderRadius: BorderRadius.circular(100.0)
),
    
   
child:   Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(rating.toString(),
    style: GoogleFonts.inter(
      color: Colors.black,
    fontSize: 11.69,
fontWeight: FontWeight.w600,
    ),
    ),
   const SizedBox(width: 2.44,),
   
   const  Image(
    width: 9.887,
    height: 8.539,
    image: AssetImage("assets/images/star.png")),
        const SizedBox(width: 2.44,),

     Text("($noOfRating)",
    style: GoogleFonts.inter(
      color: const Color(0xFF9796A1),
    fontSize: 8.186,
    fontWeight: FontWeight.w400,

    ),
    )

  ],
),
  )
);
  }

}

// ignore: must_be_immutable
class LikeBox extends StatefulWidget{
   LikeBox({super.key, required this.like});
  bool like;

  @override
  State<LikeBox> createState() => _LikeBoxState();
}

class _LikeBoxState extends State<LikeBox> {
  @override
  Widget build(BuildContext context) {

return GestureDetector(
  onTap: (){
    setState(() {
      widget.like = !widget.like;
    });
  },
  child:   (
    Container(
  width: 28,
  height: 25.31,
      margin:const  EdgeInsets.only(right: 11,top: 9,bottom: 0,left: 0),
  
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(100),
  color: widget.like==true ?const Color(0xFFFE724C):Colors.white.withAlpha(50)
  ),
  child: const  Image(image: AssetImage("assets/images/heart.png")),
  
    )
  ),
);
  }
}