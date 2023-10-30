import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodReviewInput extends StatelessWidget{
  const FoodReviewInput({super.key});
  
  @override
  Widget build(BuildContext context) {
return  (
Container(
  margin: const EdgeInsets.only(bottom: 35.0),
decoration: BoxDecoration(
    border: Border.all(
          color: const Color(0xFFEEEEEE),
        ),
  borderRadius: BorderRadius.circular(10),

  
),
child: Row(
  children: [
  Expanded(
  flex: 2,
   child:   Container(
    margin: const  EdgeInsets.only(left: 13,top:10,bottom:10),
     child: const CircleAvatar(
     radius: 20,
     backgroundImage:  AssetImage("assets/images/test4.png"),
     ),
   ),
 ),
  Expanded(
    flex: 7,
    child: TextField(
   
      onTap: ()=>ShowModal().build(context),
    keyboardType:TextInputType.multiline ,
       maxLines: null,
          cursorColor: const Color(0xFF9AA0B4),
    
    style: GoogleFonts.inter(
    
    color: const Color(0xFF111719),
    ),
      decoration: const InputDecoration(
    border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        hintText: "Write your review..."
      ),
    ),
  ),
 const Expanded(
  flex: 2,
  child:  Icon(Icons.send,color:Color(0xFFFE724C)))
  ],
),
)

);

  }
}
class ShowModal {
  
  Future<void> build(BuildContext context) {
return showModalBottomSheet<void>(
  isDismissible: true,
  isScrollControlled: true
  ,context: context, builder: (BuildContext context){
  return Padding(
    padding:  EdgeInsets.only(
      top: 10,
      left: 40,
      right: 40,
      bottom: MediaQuery.of(context).viewInsets.bottom
    ),
    child: (
      Container(
    margin: const EdgeInsets.only(bottom: 10.0),
  decoration: BoxDecoration(
      border: Border.all(
            color: const Color(0xFFEEEEEE),
          ),
    borderRadius: BorderRadius.circular(10),
  
    
  ),
  child: Row(
    children: [
    Expanded(
    flex: 2,
     child:   Container(
      margin: const  EdgeInsets.only(left: 13,top:10,bottom:10),
       child: const CircleAvatar(
       radius: 20,
       backgroundImage:  AssetImage("assets/images/test4.png"),
       ),
     ),
   ),
    Expanded(
      flex: 7,
      child: Focus(
onFocusChange: (hasFocus){
  if(!hasFocus){
    FocusManager.instance.primaryFocus?.unfocus();
  }
},
        child: TextField(
          
             autofocus: true,
        keyboardType:TextInputType.multiline ,
           maxLines: null,
              cursorColor: const Color(0xFF9AA0B4),
        
          style: GoogleFonts.inter(
        
        color: const Color(0xFF111719),
          ),
          decoration: const InputDecoration(
        border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            hintText: "Write your review..."
          ),
        ),
      ),
    ),
   const Expanded(
    flex: 2,
    child:  Icon(Icons.send,color:Color(0xFFFE724C)))
    ],
  ),
  )
  
    ),
  );
} );
  }
}

