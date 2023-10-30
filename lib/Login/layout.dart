// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/Login/BottomContainer/layout.dart';
import 'package:foodhub/Login/TitleText/layout.dart';
import 'package:foodhub/firebase_options.dart';
import 'package:foodhub/main.dart';

class Login extends StatelessWidget{
  const Login({super.key});
@override
StatelessElement createElement() {

    return super.createElement();
  }
  @override
  Widget build(BuildContext context) {
    
return(
  const Scaffold(body: Layout(),)
);
  }

}
class Layout extends StatelessWidget{
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {

return(
  const Stack(
    fit: StackFit.expand,
    children: [
    Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/login_image.png"),)),
    Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/login_background.png"),)),
  
 Positioned(
   top: 160,
      left: 0,
      right: 0,
    
   child: Column(
    children: [
      TitleText()
    ],
   ),
 ),
Positioned(
  left: 0,
  right: 0,
  bottom: 0,
  child: BottomContainer())
 
  ],
  
  )
);
  }
}