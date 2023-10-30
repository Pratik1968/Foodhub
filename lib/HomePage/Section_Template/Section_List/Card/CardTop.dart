import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTop extends StatelessWidget {
  const CardTop(
      {super.key,
      required this.price,
      required this.like,
      required this.imageUrl,
      required this.id});
  final String price;
  final bool like;
  final String imageUrl;
  final String id;
  @override
  Widget build(BuildContext context) {
    return (SizedBox(
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Hero(
                tag: "FoodImage$id",
                child: Image(
                    fit: BoxFit.cover,
                    width: 154.43,
                    height: 147.364,
                    image: AssetImage(imageUrl)),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: PriceContainer(
                price: price,
                id: id,
              )),
          Align(alignment: Alignment.topRight, child: LikeBox(like: like)),
        ],
      ),
    ));
  }
}

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
        margin: const EdgeInsets.only(left: 11, top: 9),
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

// ignore: must_be_immutable
class LikeBox extends StatefulWidget {
  LikeBox({super.key, required this.like});
  bool like;
  @override
  State<LikeBox> createState() => _LikeBoxState();
}

class _LikeBoxState extends State<LikeBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.like = !widget.like;
        });
      },
      child: (Container(
        width: 28,
        height: 25.31,
        margin: const EdgeInsets.only(right: 11, top: 9, bottom: 0, left: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: widget.like == true
                ? const Color(0xFFFE724C)
                : Colors.white.withAlpha(50)),
        child: const Image(image: AssetImage("assets/images/heart.png")),
      )),
    );
  }
}
