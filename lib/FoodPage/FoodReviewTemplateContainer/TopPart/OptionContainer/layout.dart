import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionContainer extends StatelessWidget{
  const OptionContainer({super.key});
  
  @override
  Widget build(BuildContext context) {
// return const Icon(
//   Icons.more_vert,
//   color: Color(0xFFC4C4C4),
//   size: 20,
//   );
return(const PopOption());
  }
}
class PopOption extends StatelessWidget{
  const PopOption({super.key});
  
  @override
  Widget build(BuildContext context) {

return(
      
PopupMenuButton(
  color: Colors.white,
  icon: const Icon(Icons.more_vert,color: Color(0xFFC4C4C4),),
  iconSize: 20,
  onSelected: (value) {
    // your logic
  },
  itemBuilder: (BuildContext bc) {
    return  [
      PopupMenuItem(
        
        value: '/report',
     child: Text(
          "Report",
          
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            color: Colors.redAccent),
             ),
      ),

    ];
  },));

  }
}