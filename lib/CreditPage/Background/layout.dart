import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Background.dart';

class BackgroundContainer extends StatelessWidget{
  const BackgroundContainer({super.key,});
  
  @override
  Widget build(BuildContext context) {

return   SizedBox(
width: double.infinity,
height: 268,
  child:   Stack(
    children: [
     const   Positioned(
        top: 0,
        left: 0,
        right: 0,
        child:Background(),
      ),
    Positioned(
bottom: 40,
left:0,
      child: Text("Credit",
style: GoogleFonts.inter(
  fontSize: 32,
  fontWeight: FontWeight.w700
),
),
    )
    ],
  ),
);
  }
}