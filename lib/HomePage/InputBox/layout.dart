import 'package:flutter/material.dart';
import 'package:foodhub/HomePage/InputBox/SearchIcon/layout.dart';
import 'package:foodhub/HomePage/InputBox/TextField/layout.dart';

class InputBox extends StatelessWidget {
  const InputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFEFEFEF),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: MediaQuery.sizeOf(context).width,
      height: 51.0,
      margin: const EdgeInsets.only(
          left: 27.0, top: 10.0, right: 27.0, bottom: 18.0),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: SearchIcon()),
          Expanded(flex: 9, child: Center(child: Text_Field()))
        ],
      ),
    ));
  }
}
