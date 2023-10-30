import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'StoreList/layout.dart';
class StoreSection extends StatelessWidget{
  const StoreSection({super.key});
  
  @override
  Widget build(BuildContext context) {
return (
 const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
 
 StoreList(),
],)
);

  }
}
class StoreText extends StatelessWidget{
  const StoreText({super.key});
  
  @override
  Widget build(BuildContext context) {
return Text("Store",
style: GoogleFonts.inter(
  color: const Color(0xFF323643),
fontSize: 18,
fontWeight: FontWeight.w600,
),
); 
  }
}
