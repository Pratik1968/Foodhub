import 'package:flutter/material.dart';
import 'PriceText/layout.dart';
import 'TitleText/layout.dart';
class TitleAndPriceContainer extends StatelessWidget{
  const TitleAndPriceContainer({super.key, required this.text, required this.id, required this.price});
  final String text, id,price;

  @override
  Widget build(BuildContext context) {
return Container(
margin:const  EdgeInsets.only(bottom: 12),
  child:   Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
  TitleText(text: text, id: id),
  PriceText(price: price, id: id)
    ],
  ),
);
  }
}