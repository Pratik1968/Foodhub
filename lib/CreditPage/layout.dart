import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'Background/layout.dart';
class CreditPage extends StatelessWidget{
  const CreditPage({super.key});
  
  @override
  Widget build(BuildContext context) {

return const Scaffold(
  body: Layout(),
);
  }
}
class Layout extends StatelessWidget{
  const Layout({super.key});
  
  @override
  Widget build(BuildContext context) {
return Container(
  width: double.infinity,
  height: double.infinity,
  margin:const  EdgeInsets.symmetric(horizontal: 40),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  const BackgroundContainer(),
  
  
          const Heading(title: "Developer"),
  const NameAndEmailContainer(Name: "Pratik Shekhar", Email: "pratikshekhar2004@gmail.com"),
  const Heading(title: "Design Template used:"),    
  Text("https://www.figma.com/community/file/1016293188579696778",
  style: GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.w400
  ),
  
  ),

  const Heading(title: "Image Credit"),
  
  const NameAndEmailContainer(Name: "P. Aditya", Email: "pratikshekhar2004@gmail.com"),
  const SizedBox(height: 25,),
  const NameAndEmailContainer(Name: "Subhash", Email: "pratikshekhar2004@gmail.com"),
  
  
  
  
  ],
  
  ),
);
  }
}

class NameAndEmailContainer extends StatelessWidget{
  const NameAndEmailContainer({super.key, required this.Name, required this.Email});
 final String Name,Email;
  Widget InfoTemplate (String label,String value){
    return Row(
      children: [
        Text(label,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
        ),
    
        Text(value,
        style: GoogleFonts.inter(
          color: Colors.black,
          fontWeight: FontWeight.w400,

        ),
        ),

      ],
    );
  }
  @override
  Widget build(BuildContext context) {
return Column(
  children: [
    InfoTemplate("Name:", Name),
   const  SizedBox(height: 15,),
    InfoTemplate("Email:", Email),

  ],
);

  }

}
class Heading extends StatelessWidget {
  const Heading({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
return Container(
  alignment: Alignment.centerLeft,
margin: const EdgeInsets.only(bottom: 13,top: 17),
  child:   Text(title,
  textAlign: TextAlign.start,
  style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w700),),
); 
  }
}