import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarImageAndRatingContainer extends StatelessWidget
{
  const AvatarImageAndRatingContainer({super.key, required this.imageUrl, required this.rating});
  final String imageUrl; final double rating;
  @override
  Widget build(BuildContext context) {
return(
  Stack(
    children: [
      CircleAvatar(
        backgroundImage:AssetImage(imageUrl),
        radius: 20,

      ),
      Positioned(
        right: 0,
        bottom: 0,
        child: RatingContainer(rating: rating,)),

    ],
  )
);
  }
}
class RatingContainer extends StatelessWidget{
  const RatingContainer({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
return(
  Container(
    width: 18.232,
    height: 18.232,
    alignment: Alignment.center,
    decoration:   BoxDecoration(
      color: const Color(0xFFFE724C),
      borderRadius: BorderRadius.circular(20),
   boxShadow:const  [
        BoxShadow(
       
                  color: Color.fromARGB(20, 254, 114, 76),
                  blurRadius: 2.0,
                  
                  offset: Offset(1, 5))
            
       
      ], 
    ),
    child: Text("$rating",
    style: GoogleFonts.inter(
      color: Colors.white,
      fontWeight: FontWeight.w600,
fontSize: 8.56,

      ),
      
      ),
  )
); 
 }
}