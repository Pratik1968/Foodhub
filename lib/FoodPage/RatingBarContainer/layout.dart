import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarContainer extends StatelessWidget{
  const RatingBarContainer({super.key});
  
  @override
  Widget build(BuildContext context) {
return Container(
  margin: const EdgeInsets.only(bottom: 17),
  child:   (
    RatingBar(
      itemSize: 30,
     initialRating: 0,
     direction: Axis.horizontal,
     allowHalfRating: true,
     itemCount: 5,
     ratingWidget: RatingWidget(
       full: Image.asset("assets/images/filled_star.png"),
       half: const Icon(Icons.star_half,color:  Color(0xFFFFC529),
       shadows: [
         
                Shadow(
                    color: Color.fromARGB(25,255, 197, 41),
                    blurRadius: 5.0,
                    offset: Offset(1, 5))
              
       ],
       ),
       empty: Image.asset("assets/images/empty_star.png"),
     ),
     itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
     onRatingUpdate: (rating) {
       print(rating);
     },
  )
  ),
);

  }
}