import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreNameAndRatingContainer extends StatelessWidget

{
  const StoreNameAndRatingContainer({super.key, required this.storeName, required this.rating, required this.noOfRating});

  final String storeName;
  final double rating;
  final int noOfRating;
  
  @override
  Widget build(BuildContext context) {
return(
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
StoreName(storeName: storeName),
RatingContainer(rating: rating, noOfRating: noOfRating)
    ],
  )
)
;

  }
}
class StoreName extends StatelessWidget{
  const StoreName({super.key, required this.storeName});
final String storeName;
  @override
  Widget build(BuildContext context) {

return(
Text(storeName,
style: GoogleFonts.inter(
  fontSize: 45,
  fontWeight: FontWeight.w700,
  color: Colors.white,
),
)

);
  }}
  class RatingContainer extends StatelessWidget{
  const RatingContainer({super.key, required  this.rating, required this.noOfRating,});
   final double rating; final int noOfRating;
  @override
  Widget build(BuildContext context) {
return (
   SizedBox(
    width: 90.31,
    height: 18,

    
   
child:   Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(
decoration:const  BoxDecoration(
boxShadow:   [
            BoxShadow(
                color: Color.fromARGB(25,255, 197, 41),
                blurRadius: 5.0,
                offset: Offset(1, 5))
          ]

 ),
      child: const  Image(
      width: 17.785,
      height: 17,
      image: AssetImage("assets/images/star.png")),
    ),
  const SizedBox(width: 5,),
   Text(rating.toString(),
    style: GoogleFonts.inter(
      color: Colors.white,
    fontSize: 14,
fontWeight: FontWeight.w600,
    ),
    ),
   
   const SizedBox(width: 4,),


     Text("($noOfRating)",
    style: GoogleFonts.inter(
      color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,

    ),
    )

  ],
),
  )
);
  }


}

