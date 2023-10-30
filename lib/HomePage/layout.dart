// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/HomePage/Featured_Section/layout.dart';
import 'package:foodhub/HomePage/InputBox/layout.dart';
import 'package:foodhub/HomePage/Section_Template/layout.dart';
// import 'package:foodhub/firebase_options.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key, required this.visible});
final bool visible;

  @override
  Widget build(BuildContext context) {
    

return(  Scaffold(body: Center(child:Layout(visible: visible,)),));
  }
}


class Layout extends StatelessWidget {
  const Layout({super.key, required this.visible});
final bool visible;
  @override
  Widget build(BuildContext context) {
return  SafeArea(
  child:   AnimatedOpacity(
    opacity: visible ? 1.0 : 0.0,
  duration: const Duration(milliseconds: 500),
    child: Container(
      decoration:const  BoxDecoration(
        color: Colors.white
      ),
      child: (
        ListView(
      scrollDirection: Axis.vertical,  
        children: const   [
      InputBox(),
      Feature_Section(),
      Section_Template(Title: "Filter Coffee",id:"",storeId: "1",storeImageUrl: "assets/images/test3.jpg",storeName: "Puri Vuri",),
      Section_Template(Title: "Shakers and Movers",id:"_",storeId: "2",storeImageUrl: "assets/images/test3.jpg",storeName: "Puri Vuri",)
      
      ],
      
      )
      
      ),
    ),
  ),
);

  }

}
