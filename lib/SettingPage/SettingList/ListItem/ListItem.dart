import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.ItemName, required this.iconData, this.IconColor=const Color(0xFFD3D1D8),  this.textColor= Colors.black, required this.onTapFunction});
  final String ItemName;
  final IconData iconData;
  final Color IconColor,textColor;  
  final Function onTapFunction;
  @override
  Widget build(BuildContext context) {

return GestureDetector(
  onTap: (){onTapFunction();},
  child:  Container(
    width: double.infinity,
  margin: const EdgeInsets.only(bottom: 20),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(iconData,
        color: IconColor,
        ),
      const   SizedBox(width: 10,),
        Expanded(
          flex: 5,
          child: Text(ItemName,style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          color: textColor,
          ),),
        )
      ],
    ),
    
  ),
);;

  }
}
