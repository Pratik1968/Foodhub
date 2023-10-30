// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/Login/AuthMethods/GoogleAuth.dart';
import 'package:foodhub/HomePage/layout.dart';
import 'package:foodhub/MainPage/layout.dart';
import 'package:foodhub/ServerMethods/AuthAndUserCreation/Auth.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomContainer extends StatelessWidget{
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
return(
const  Column(
  children: [
  SignInText(),
  SizedBox(height: 8,),
 Padding(
   padding: EdgeInsets.symmetric(horizontal:8.0),
   child: GoogleSignUpButton(),
 ),
  SizedBox(height: 0,),
  AlreadySignInTextAndButton()
 ],)
);
  }
}
class SignInText extends StatelessWidget{
  const SignInText({super.key});
 Widget Line(){
  return(Container(
    width: 89,
    height: 1,
    color: Colors.white,
  ));
 } 
  @override
  Widget build(BuildContext context) {
return(
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Padding(

      padding: const EdgeInsets.only(right:11.0),
      child: Line(),
    ),
    
    
     Text("Sign Up ",
    style: GoogleFonts.inter(
      color: Colors.white,
fontSize: 14,
fontWeight: FontWeight.w500,
    ),
    ),
    Padding(
      padding: const EdgeInsets.only(left : 11.0),
      child: Line(),
    )
  ],
  )

);
  }

}

class GoogleSignUpButton extends StatelessWidget{
  const GoogleSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
return GestureDetector(
  onTap: () {
      Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) =>  const MainPage(),
    transitionDuration: const Duration(seconds: 1),
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
  ),
);
  },
  child:   Padding(
    padding: const EdgeInsets.all(8.0),
    child: (
  
    // ignore: avoid_unnecessary_containers
    Container( 
     height: 50,
      decoration: BoxDecoration(
       color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20)),
    child:   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     const  Image(image: AssetImage("assets/images/Google_icon.png"),
      
      ),
      const SizedBox(
width: 19,

      )
      ,
    Text("Sign Up with Google",
    style: GoogleFonts.inter(
      color: Colors.black,
    fontSize: 13,
fontWeight: FontWeight.w500,
letterSpacing: 0.65,
    ),
    )
    ]),
    
    )
    
    
    ),
  ),
);
  }
}


class AlreadySignInTextAndButton extends StatelessWidget{
  const AlreadySignInTextAndButton({super.key});
  
  @override
  Widget build(BuildContext context) {
return(
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Already have an account? ",
    style: GoogleFonts.inter(color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    ),
    ),
TextButton(
  onPressed: ()=>{

      Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) =>  const MainPage(),
    transitionDuration: const Duration(seconds: 1),
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
  ),
) 
  
  }, child: 
Text("Sign In ",
    style: GoogleFonts.inter(color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
decoration: TextDecoration.underline
    ),
    )
)
    
  ],)
);

  }
}

