import 'package:flutter/material.dart';
import 'package:foodhub/global.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveButton extends StatelessWidget{
  const SaveButton({super.key});
  
  @override
  Widget build(BuildContext context) {
return Container(
  width: 297,
  height: 47,
  alignment: Alignment.center,
margin: const EdgeInsets.symmetric(horizontal: 38,vertical: 20),
decoration: BoxDecoration(
  color: Global.primaryColor,
  borderRadius: BorderRadius.circular(20),


),

child: Text("Save",
style: GoogleFonts.inter(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w700,

),
),
); 

  }
}