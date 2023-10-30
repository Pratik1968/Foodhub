import 'package:flutter/material.dart';
import 'package:foodhub/ResturantPage/layout.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextAndViewAll extends StatelessWidget{
  const TitleTextAndViewAll({super.key, required this.title, required this.storeId, required this.storeImageUrl, required this.storeName, });
  final String title;
  final String storeId,storeImageUrl,storeName;

  @override
  Widget build(BuildContext context) {
return Container(
  margin: const EdgeInsets.only(right:30 ,),
  child:   
  Row(
    textBaseline: TextBaseline.alphabetic,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TitleText(title_: title,),
       ViewAll(
        storeId: storeId,
      storeImageUrl: storeImageUrl,
      storeName: storeName,

      )
    ],
  
  
  ),
);
  }

}
class TitleText extends StatelessWidget{
  const TitleText({super.key, required this.title_});
  final String title_;
  @override
  Widget build(BuildContext context) {
return GestureDetector(
 
  child:   Text(title_,
  
  style: GoogleFonts.inter(
    color: const Color(0xFF323643),
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  
  ),
  ),
)
;
  }
}
class ViewAll extends StatelessWidget{
  const ViewAll({super.key, required this.storeName, required this.storeImageUrl, required this.storeId,});
  final String storeName,storeImageUrl,storeId;
  
  @override
  Widget build(BuildContext context) {

return GestureDetector(
onTap: () =>  Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => ResturantPage(
              Name: storeName,
              storeImageUrl: storeImageUrl,
              resturantid: storeId,
                ),
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          ),
        )
,
  child:   (
    Text("View All",
    style: GoogleFonts.inter(
      color:const  Color(0xFFF56844),
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    )
  ),
);
  }
}