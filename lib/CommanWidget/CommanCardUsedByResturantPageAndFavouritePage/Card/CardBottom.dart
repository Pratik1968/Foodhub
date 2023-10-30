import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  CardBottom extends StatelessWidget {
  const CardBottom({super.key, required this.title, required this.time,required this.id});
   final String title; final String time;final String id;
  @override
  Widget build(BuildContext context) {
return  Padding(
  padding: const EdgeInsets.symmetric(horizontal:12.0),
  child:   (
      Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
  Align(
    alignment: Alignment.centerLeft,
    child: TextTitle(title:title,id: id,),
  
  ),
    Align(alignment: Alignment.centerRight,
    child: Timer(time:time,id:id),
    )  
      
      
      ],)
  ),
);
  }
}
class TextTitle extends StatelessWidget{
  const TextTitle({super.key, required this.title,required this.id});
  final String title;final String id ;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Title$id",
      child: (
        Text(title,
        style: GoogleFonts.inter(color: Colors.black,
        fontSize: 18.21,
        fontWeight: FontWeight.w600,
    
        ),
        )
      ),
    );
  }
}
class Timer extends StatelessWidget {
  const Timer({super.key, required this.time, required this.id});
final String time;  final String id;
  @override
  Widget build(BuildContext context) {
return Hero(
  tag:"Time$id",
  child:   (
   Row(children: [
   const  Image(image: AssetImage("assets/images/watch.png"),),
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