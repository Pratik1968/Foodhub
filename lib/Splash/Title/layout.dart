import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});
  
  @override
  Widget build(BuildContext context) {
return  const Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        
         Food() ,
  Padding(
    padding: EdgeInsets.only(left:8.0),
    child: Hub(),
  )
  ],
);
  }
}

class Food extends StatelessWidget{
  const Food({super.key});
  
  @override
  Widget build(BuildContext context) {
return(
Text("Food",
style: GoogleFonts.inter(
  color: Colors.white,
  fontSize: 32,
  fontWeight: FontWeight.w700),

)
);

  }
  
}
class Hub extends StatelessWidget{
  const Hub({super.key});
  
  @override
  Widget build(BuildContext context) {
return Opacity(
  opacity: 0.6,
  child:   (
  Text("Hub",
  style: GoogleFonts.inter(
      color: Colors.white,
  fontSize: 32,
  fontWeight: FontWeight.w700
  ),
  )
  
  ),
);
  }
}