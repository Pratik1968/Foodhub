import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingAndTimeAndStoreNameContainer extends StatelessWidget{
  const RatingAndTimeAndStoreNameContainer({super.key, required this.rating, required this.noOfRating, required this.id, required this.time, required this.storeName,});
  final double rating ; final int noOfRating; final String id ;final String time,storeName;
  
  @override
  Widget build(BuildContext context) {
 return Container(
   margin: const EdgeInsets.only(bottom: 17.0),
   child: (
 Row(
mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        flex: 1,
        child: RatingContainer(rating: rating, noOfRating: noOfRating,id:id)),
  Expanded(
    flex: 1,
    child: StoreName(storeName: storeName)),
  
   Expanded(
    flex: 1,
    child: Timer(time: time, id: id))
    ],
 )
 
   ),
 );
  }
}

class RatingContainer extends StatelessWidget{
  const RatingContainer({super.key, required  this.rating, required this.noOfRating,required this.id});
   final double rating; final int noOfRating;final String id;
  @override
  Widget build(BuildContext context) {
return Hero (
  tag: "Rating$id",
  child:   (
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
    const SizedBox(width: 1,),
     Text(rating.toString(),
      style: GoogleFonts.inter(
        color: Colors.black,
      fontSize: 14,
  fontWeight: FontWeight.w600,
      ),
      ),
     
     const SizedBox(width: 4,),

  
       Text("($noOfRating)",
      style: GoogleFonts.inter(
        color: const Color(0xFF9796A1),
      fontSize: 14,
      fontWeight: FontWeight.w400,
  
      ),
      )
  
    ],
  ),
    )
  ),
);
  }


}

class StoreName extends StatelessWidget{
  const StoreName({super.key, required this.storeName});
  final String storeName;
  @override
  Widget build(BuildContext context) {
return Container(
  alignment: Alignment.center,
  child:   (
     Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(Icons.store,
      color:   Color(0xFFFE724C),
      ),
  const SizedBox(
    width: 5,
  ),
  
      Text(storeName,
      style: GoogleFonts.inter(color:const  Color(0xFF7E8392),
      fontSize: 12,
  fontWeight: FontWeight.w500,
      ),
      )
      
    ],
    )
  ),
);

  }
}
class Timer extends StatelessWidget {
  const Timer({super.key, required this.time, required this.id});
  final String time;final String id;
  
  @override
  Widget build(BuildContext context) {
return Hero(
  tag: "Time$id",
  child:   (
   Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
   const  Image(
    width: 10.68,
    height: 10.927,
    image: AssetImage("assets/images/watch.png"),),
  const SizedBox(width: 4.32,),
  Text(time,
  style: GoogleFonts.inter(color:const  Color(0xFF7E8392),
  fontSize: 12.0,
  fontWeight: FontWeight.w400,
  ),
  )
  ],
  
  )
  
  ),
);

  }
 }