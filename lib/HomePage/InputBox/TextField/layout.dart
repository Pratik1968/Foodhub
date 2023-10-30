import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text_Field extends StatelessWidget {
  const Text_Field({super.key});

  @override
  Widget build(BuildContext context) {
    return (TextField(
     onTap: ()=>Navigator.of(context).pushNamed("/searchPage"),
      
      onChanged: (value) => print(value),
      maxLines: 1,
      cursorColor: const Color(0xFF9AA0B4),
      textAlignVertical: TextAlignVertical.center,
      style: GoogleFonts.inter(color: const Color.fromRGBO(130, 135, 151, 1)),
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(11.0),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: "Find for food or restaurant..."),
    ));
  }
}
