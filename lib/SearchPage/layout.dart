import 'package:flutter/material.dart';
import 'package:foodhub/SearchPage/StoreSection/layout.dart';

import './InputBox/layout.dart';
import 'FoodSection/layout.dart';

class SearchPage extends StatefulWidget{
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String TextFieldValue = "";
 void TextFieldValueChanged(value){
  setState(() {
    TextFieldValue = value;
  });
 }
  @override
  Widget build(BuildContext context) {
return  SafeArea(
  child:   (
  Scaffold(
    body: WillPopScope(
      onWillPop: ()async {
        Navigator.of(context).pop();
return false;
      },
      child: Focus(
        onFocusChange: (hasFocus){
if(!hasFocus && TextFieldValue.isEmpty){
     print(TextFieldValue);
     FocusManager.instance.primaryFocus?.unfocus();
        Navigator.of(context).pop();

}
        },
        child: Layout(TextFieldValueChanged: (value)=>TextFieldValueChanged(value),))),
  )
  ),
);
  }
}
class Layout extends StatefulWidget {
   Layout({super.key,required this.TextFieldValueChanged});
Function TextFieldValueChanged;
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
 bool isUserWritting=false;
 String TextFieldValue="";

 void CheckWritingOrNot(bool writing){
  setState(() {
    isUserWritting = writing;
  });
 }
 

  @override
  Widget build(BuildContext context) {

return(
  Column( 
  children : [
    InputContainer(CheckWritingOrNot: (writing){CheckWritingOrNot(writing);}, TextFieldValueChanged: (value)=>widget.TextFieldValueChanged(value),),
  Expanded(
    flex: 8,
    child:  isUserWritting == true
                ?const  ResultList()
                :const SizedBox(width: 2,)
                
                )
    

  ]
  )
);
  }
}
class ResultList extends StatelessWidget {
  const ResultList({super.key});
  
  @override
  Widget build(BuildContext context) {
return (
const Column(
  
  children:  [
StoreSection(),
SizedBox(height: 15,),
Expanded(
  flex: 8,
  child: FoodSection())
  ],
)

);
  }
}
