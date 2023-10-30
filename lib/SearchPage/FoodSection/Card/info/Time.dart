import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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