import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceText extends StatelessWidget{
  const PriceText({super.key, required this.price, required this.id});
  final String price;final String id;
  @override
  Widget build(BuildContext context) {
return Hero(
  tag: "Price$id",
  child:   Row(
  
    textBaseline: TextBaseline.alphabetic,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    children: [
          (
        Text("₹",
        style: GoogleFonts.inter(color: const Color(0xFFFE724C),
        fontSize: 17.011,
        fontWeight: FontWeight.w500,
        ),  )
      ),
  Text(price,
  style: GoogleFonts.inter(
    color: const Color(0xFFFE724C),
  fontWeight: FontWeight.w600,
  fontSize: 31,
  ),
  )
    ],
  ),
);
  }
}