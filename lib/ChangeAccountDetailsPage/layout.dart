import 'package:flutter/material.dart';
import 'package:foodhub/ChangeAccountDetailsPage/SaveButton.dart';
import 'ProfileImageAndBackgroundAndTextField/layout.dart';
class ChangeAccountDetailPage extends StatelessWidget{
  const ChangeAccountDetailPage({super.key});
  
  @override
  Widget build(BuildContext context) {

return const Scaffold(
  resizeToAvoidBottomInset: false,
body: Layout(),
);
  }
}
class Layout extends StatelessWidget{
  const Layout({super.key});
  
  @override
  Widget build(BuildContext context) {
return const Stack(
children: [
  Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: ProfileImageAndBackgroundAndTextField(imageUrl: "assets/images/test4.png",)),
Align(
  alignment: Alignment.bottomCenter,
  child: SaveButton())
],

);

  }
}