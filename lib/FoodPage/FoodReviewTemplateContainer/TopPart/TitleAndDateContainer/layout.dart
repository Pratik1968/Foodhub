import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleAndDateContainer extends StatelessWidget{
  const TitleAndDateContainer({super.key, required this.title, required this.date});
final String title;final String date;
  
  @override
  Widget build(BuildContext context) {
return(
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Title(title: title,),
    Date(date: date,)
  ],)
);
  }
}
class Title extends StatelessWidget{
  const Title({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
return(
  Text(title,
  style: GoogleFonts.inter(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400
  ),)
);
  }
}
class Date extends StatelessWidget{
  const Date({super.key, required this.date});
  final String date;
  @override
  Widget build(BuildContext context) {

return(
  Text(date,
  style: GoogleFonts.inter(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFB3B3B3),
  ),
  )
);
  }
}