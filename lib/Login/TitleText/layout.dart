import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodhub/global.dart';
class TitleText extends StatelessWidget{
  const TitleText({super.key});
  
  @override
  Widget build(BuildContext context) {
return Container(
  margin:const EdgeInsets.symmetric(horizontal: 28),
  child:   (
  const Title()
  ),
);
  }

}

class Title extends StatelessWidget{
  const Title({super.key});
  Widget FirstText(){
    return(
Text("Welcome to",
textAlign: TextAlign.start,

style: GoogleFonts.inter(color:Colors.white,
fontSize: 45,
fontWeight: FontWeight.w700,
),
)

    );
  }

Widget HighlightedText(){
  return(
Text("FoodHub",
textAlign: TextAlign.start,
style: GoogleFonts.inter(
  color:Global.primaryColor,
fontSize: 38,
fontWeight: FontWeight.w700,

),
)

  );
}

Widget Tagline(){
  return(
Text(
  "Elevate your favour by choosing your palette ",
  style: GoogleFonts.inter(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w400
  ),
)

  );
}
  @override
  Widget build(BuildContext context) {
return(
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  FirstText(),
  HighlightedText(),
const   SizedBox(height: 19),
  Tagline()
],)

);

  }
}