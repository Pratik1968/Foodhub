import 'package:flutter/material.dart';

class SplashIcon extends StatelessWidget{
  const SplashIcon({super.key});
  
  @override
  Widget build(BuildContext context) {
return(
Stack(
  children: [
    Container(
      width: 93,
      height: 93,
      
decoration: BoxDecoration(
  border: Border.all(color: Colors.white),
  color: Colors.white,
  borderRadius:BorderRadius.circular(20)),
    
    ),
  const Positioned(
top: 0,
left: 0,
right: 0,
bottom: 0,
    child:  Image(image: AssetImage("assets/images/icon.png")))
  ],
)
);

  }

}