import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodName extends StatelessWidget{
  const FoodName({super.key, required this.title,required this.id});
  final String title;final String id ;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Title$id",
      child: (
        Text(title,
        style: GoogleFonts.inter(color: Colors.black,
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
    
        ),
        )
      ),
    );
  }}