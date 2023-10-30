import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomPart extends StatelessWidget{
  const BottomPart({super.key,required this.review_text});
  // ignore: non_constant_identifier_names
  final String review_text;
  @override
  Widget build(BuildContext context) {

return SizedBox(
  width: double.infinity,
  child:   (
    Text(review_text,
    style: GoogleFonts.inter(
      
      color: const Color(0xFF7F7D92),
      fontSize: 15,
      fontWeight: FontWeight.w400,
      
    ),
    )
  ),
);
  }
}