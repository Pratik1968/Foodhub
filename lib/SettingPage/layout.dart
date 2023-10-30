import 'package:flutter/material.dart';
import 'package:foodhub/MainPage/layout.dart';
import 'ProfileImageAndBackground/layout.dart';
import 'SettingList/layout.dart';
class SettingPage extends StatelessWidget{
  const SettingPage({super.key,required this.selectItemFunction});
 final  Function selectItemFunction ; 
  @override
  Widget build(BuildContext context) {

return  Scaffold(
  body: WillPopScope(
    onWillPop: () async{
    
     Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (_, __, ___) => const MainPage(),
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
  ),
);

    return false ; 
    },
    child:const  Layout()),
);
  }

}
class Layout extends StatelessWidget{
  const Layout({super.key});
  
  @override
  Widget build(BuildContext context) {

return const Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
ProfileImageAndBackground(imageUrl: 'assets/images/test4.png',),
 Expanded(
  flex: 7,
  child: SettingList())
  ],
);
  }
}