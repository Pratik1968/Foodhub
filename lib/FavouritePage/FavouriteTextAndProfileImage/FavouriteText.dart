import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteText extends StatelessWidget{
  const FavouriteText({super.key});
  
  @override
  Widget build(BuildContext context) {
return  Text("Favourite",
style: GoogleFonts.inter(
  color: const Color(0xFF111719),
fontWeight: FontWeight.w600,
fontSize: 18,
),
);
  }
}