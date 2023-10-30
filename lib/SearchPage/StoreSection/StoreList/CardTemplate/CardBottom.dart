import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  CardBottom extends StatelessWidget {
  const CardBottom({super.key, required this.title,required this.id});
   final String title; final String id;
  @override
  Widget build(BuildContext context) {
return  Padding(
  padding: const EdgeInsets.symmetric(horizontal:20.0),
  child:   (
      Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
  Align(
    alignment: Alignment.centerLeft,
    child: TextTitle(title:title,id: id,),
  
  ),
 
      
      
      ],)
  ),
);
  }
}
class TextTitle extends StatelessWidget{
  const TextTitle({super.key, required this.title,required this.id});
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
  }
}
