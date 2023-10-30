import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodhub/Splash/SplashIcon/layout.dart';
import 'package:foodhub/Splash/Title/layout.dart';
import 'package:foodhub/global.dart';
import 'package:foodhub/login/layout.dart';
class Splash extends StatelessWidget{
  const Splash({super.key});



  @override
  Widget build(BuildContext context) {

Timer.periodic(const Duration(seconds: 1), (timer) {

    
  Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) => const Login(),
    transitionDuration: const Duration(seconds: 1),
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
  ),
);
 timer.cancel();
 });  
return(
   Scaffold(
    body: const SizedBox(
      width: double.infinity,
     height: double.infinity,
      child:  Layout(),
    ),
    backgroundColor:Global.primaryColor ,
  )
);
  }
}
class Layout extends StatelessWidget{
  const Layout({super.key});
  
  @override
  Widget build(BuildContext context) {
  
  return (
   Column(
mainAxisAlignment: MainAxisAlignment.center,
  children: [
   const Align(
    alignment: Alignment.center,
    child: SplashIcon()),
  Container(
    margin: const EdgeInsets.only(top: 16),
    child: const TitleText())
  ],
  )
  );
  
  }
}