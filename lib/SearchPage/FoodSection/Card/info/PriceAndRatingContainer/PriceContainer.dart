import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key, required this.price, required this.id});
  final String price;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Price$id",
      child: (Container(
        width: 58.54,
        height: 28.26,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(20, 254, 114, 76),
                  blurRadius: 5.0,
                  offset: Offset(1, 5))
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "₹",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFFE724C),
              ),
            ),
            Text(
              price,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF111719),
              ),
            )
          ],
        ),
      )),
    );
  }
}