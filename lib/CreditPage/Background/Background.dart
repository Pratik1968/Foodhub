import 'package:flutter/material.dart';

class Background extends StatelessWidget{
  const Background({super.key});
  
  @override
  Widget build(BuildContext context) {
return SizedBox(
  width: double.infinity,
  
child: Image.asset("assets/images/backgroundDecoration.png",
  width: double.infinity,
  height: 268,
),
);

  }
}