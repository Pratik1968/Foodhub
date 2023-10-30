import 'package:flutter/material.dart';
import 'SearchIcon/layout.dart';
import 'TextField/layout.dart';
// ignore: must_be_immutable
class InputContainer extends StatefulWidget {
  InputContainer({super.key, required this.CheckWritingOrNot,required this.TextFieldValueChanged});
 Function CheckWritingOrNot;
 Function TextFieldValueChanged;
  @override
  State<InputContainer> createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer> {
 
  void  isUserWritting(bool writing){
    setState(() {
widget.CheckWritingOrNot(writing);     
    });

  }
  @override
  Widget build(BuildContext context) {
   
    return (Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFEFEFEF),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: MediaQuery.sizeOf(context).width,
      height: 51.0,
      margin: const EdgeInsets.only(
          left: 27.0, top: 10.0, right: 27.0, bottom: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const  Expanded(flex: 1, child: SearchIcon()),
          Expanded(flex: 9, child: Center(child: Text_Field(setStateOfInputContainer:(writing)=>isUserWritting(writing), TextFieldValueChanged: (value)=>widget.TextFieldValueChanged(value) ,)))
        ],
      ),
    ));
  }
}
