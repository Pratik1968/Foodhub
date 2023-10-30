import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteButton  extends StatelessWidget{
  const FavouriteButton({super.key});
  
  @override
  Widget build(BuildContext context) {

return (
  Container(
    width: 130,
    height: 53,
       margin: const EdgeInsets.only(bottom: 32),

    decoration: BoxDecoration(
      
      boxShadow: const  [
        BoxShadow(
       
                  color: Color.fromARGB(20, 254, 114, 76),
                  blurRadius: 2.0,
                  
                  offset: Offset(1, 5))
            
       
      ],
      borderRadius: BorderRadius.circular(40),
    color: const Color(0xFFFE724C)
    ),
 child: const Row(
crossAxisAlignment: CrossAxisAlignment.center,
  children: [

  Expanded(
    flex: 3,
    child: HeartContainer()),
  Expanded(
    flex: 6,
    child: SaveText())
 ]),
  )
);
  }
}
class HeartContainer extends StatelessWidget{
  const HeartContainer({super.key});
  
  @override
  Widget build(BuildContext context) {

return
  Padding(
    padding: const EdgeInsets.only(top:8.0,left: 8.0,bottom: 8.0),
    child: Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
  borderRadius: BorderRadius.circular(200),
      ),
  child:
   const Icon(Icons.favorite,
  color: Color(0xFFFE724C),)),
  );
  }
}

class SaveText extends StatelessWidget{
  const SaveText({super.key});
  
  @override
  Widget build(BuildContext context) {

return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:
  
  [   (Text("Save",
  style: GoogleFonts.inter(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  ),
  )),]
);
  }
}