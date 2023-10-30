import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text_Field extends StatefulWidget {
  const Text_Field({super.key, required this.setStateOfInputContainer, required this.TextFieldValueChanged});
final Function setStateOfInputContainer;
final Function TextFieldValueChanged;
  @override
  State<Text_Field> createState() => _Text_FieldState();
}

class _Text_FieldState extends State<Text_Field> {
 String value="" ;
  @override
  Widget build(BuildContext context) {
    return (TextField(
      onTapOutside: (event) { 
        if(value.isEmpty){
        Navigator.of(context).pushReplacementNamed("/mainPage");}
      },
      maxLines: 1,
    onChanged: (value){
      setState(() {
      this.value = value; 
widget.TextFieldValueChanged(value);
      });
      
      if(value.isNotEmpty){
      widget.setStateOfInputContainer(true);}
      else{
        widget.setStateOfInputContainer(false);
      }
    },
    autofocus: true,
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
