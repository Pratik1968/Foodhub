import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feature_Title extends StatelessWidget{
  const Feature_Title({super.key,});
  
  @override
  Widget build(BuildContext context) {
return(
Text("Featured Food",
style: GoogleFonts.inter(
  color: const Color(0xFF323643),
  fontSize: 18.0,
  fontWeight: FontWeight.w600,

),
)

);
  }

}