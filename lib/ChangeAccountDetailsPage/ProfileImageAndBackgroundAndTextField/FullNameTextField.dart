import 'package:flutter/material.dart';
import 'package:foodhub/global.dart';
import 'package:google_fonts/google_fonts.dart';

class FullNameTextField extends StatelessWidget{
  const FullNameTextField({super.key});
  
  @override
  Widget build(BuildContext context) {

return Padding(
  padding: const EdgeInsets.symmetric(
    
    horizontal:18.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Full Name",
      style: GoogleFonts.inter(
        fontSize: 16,
        color: const Color(0xFF9796A1),
      fontWeight: FontWeight.w400
      ),
      ),
 const   SizedBox(height: 9,) ,  
   TextField(
    cursorColor: Global.primaryColor,
      decoration: InputDecoration(
    
        fillColor: Global.primaryColor,
      border: const  OutlineInputBorder() ,
      focusedBorder: OutlineInputBorder(
borderSide: BorderSide(color: Global.primaryColor)
      )
    )
  
  )
    ],
  ),
);
  }
}