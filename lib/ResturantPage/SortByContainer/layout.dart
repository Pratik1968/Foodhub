import 'package:flutter/material.dart';
import 'package:foodhub/global.dart';
import 'package:google_fonts/google_fonts.dart';

class SortByContainer extends StatelessWidget{
  const SortByContainer({super.key});

  @override
  Widget build(BuildContext context) {
return Container(
  margin:const EdgeInsets.only(left: 20,bottom: 22),
  child:   (
    const Row(
  children: [
    SortByText(),
    SizedBox(width: 5,),
    SortByDropDown()
  ],
    )
  ),
);
  }
}
class SortByText extends StatelessWidget{
  const SortByText({super.key});

  @override
  Widget build(BuildContext context) {
return(
  Text(
    "Sort By : ",
    style: GoogleFonts.inter(
      fontSize: 14,
color: const Color(0xFF111719),
fontWeight: FontWeight.w400,

    ),
  )
);
  }
}
class SortByDropDown extends StatefulWidget {
  const SortByDropDown({super.key});

  @override
  State<SortByDropDown> createState() => _SortByDropDownState();
}
 List<String> SortByDropDownlistText = <String>["Popular","Affordable","Expensive"];

class _SortByDropDownState extends State<SortByDropDown> {
  
  String dropdownValue = SortByDropDownlistText.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.expand_more,
     
      ),
      elevation: 16,
style: GoogleFonts.inter(color: Colors.black),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      selectedItemBuilder: (BuildContext context) {
          // This is the widget that will be shown when you select an item.
          // Here custom text style, alignment and layout size can be applied
          // to selected item string.
          return SortByDropDownlistText.map((String value) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Text(
                dropdownValue,
                style: GoogleFonts.inter(color: Global.primaryColor),
              ),
            );
          }).toList();
        },
      items: SortByDropDownlistText.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,
          style: GoogleFonts.inter(
            


          ),
          ),
        );
      }).toList(),
    );
  }
}