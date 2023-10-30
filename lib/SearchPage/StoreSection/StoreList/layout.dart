import 'package:flutter/material.dart';
import 'CardTemplate/layout.dart';
class StoreList extends StatelessWidget{
  const StoreList({super.key});
  
  @override
  Widget build(BuildContext context) {


return SizedBox(
  height: 178,
  child:   ListView(
    scrollDirection: Axis.horizontal,
    children: const [
     CardTemplate(StoreName: 'Puri Vuri', imageUrl: 'assets/images/test3.jpg', id: 'asdasd', rating: 4.3, noOfRating:30,),
     CardTemplate(StoreName: 'Puri Vuri', imageUrl: 'assets/images/test3.jpg', id: 'asdaszxcxzcd', rating: 4.3, noOfRating:30,),
     CardTemplate(StoreName: 'Puri Vuri', imageUrl: 'assets/images/test3.jpg', id: 'asdzcxzcasd', rating: 4.3, noOfRating:30,),
     CardTemplate(StoreName: 'Puri Vuri', imageUrl: 'assets/images/test3.jpg', id: 'asdazxczxcsd', rating: 4.3, noOfRating:30,),
     CardTemplate(StoreName: 'Puri Vuri', imageUrl: 'assets/images/test3.jpg', id: 'asdaszxcxzcd', rating: 4.3, noOfRating:30,),

    ],
  ),
); 
  }
}