import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget{
  const TitleText({super.key,required this.text,required this.id});
  final String text;final String id;
  
  @override
  Widget build(BuildContext context) {
return Hero(
  tag: "Title$id",

  child:   (
    Text(text,
    style: GoogleFonts.inter(
      color: const Color(0xFF323643),
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.56,
    ),
    )
  ),
);

  }

}