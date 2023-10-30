import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer(
      {super.key, required this.rating, required this.noOfRating, required this.id});
  final double rating;
  final int noOfRating;final String id;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag:"Rating$id",
      child: (Container(
        width: 69,
        height: 25.7,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(20, 254, 114, 76),
                  blurRadius: 5.0,
                  offset: Offset(1, 5))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              rating.toString(),
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 11.69,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 2.44,
            ),
            const Image(
                width: 9.887,
                height: 8.539,
                image: AssetImage("assets/images/star.png")),
            const SizedBox(
              width: 2.44,
            ),
            Text(
              noOfRating.toString(),
              style: GoogleFonts.inter(
                color: const Color(0xFF9796A1),
                fontSize: 8.186,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      )),
    );
  }
}
