// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/FavouritePage/layout.dart';
import 'package:foodhub/FoodPage/layout.dart';
import 'package:foodhub/HomePage/layout.dart';
import 'package:foodhub/MainPage/layout.dart';
import 'package:foodhub/ResturantPage/layout.dart';
import 'package:foodhub/SearchPage/layout.dart';
import 'package:foodhub/SettingPage/layout.dart';
import 'package:foodhub/Splash/layout.dart';
import 'package:foodhub/firebase_options.dart';
import 'package:foodhub/login/layout.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {

//  Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );

return(
MaterialApp(
  navigatorKey: navigatorKey,
initialRoute: "/",
routes: {
  "/":(context)=>const Splash(),
"/login": (context)=> const Login(),
"/foodPage": (context) => const FoodPage(title: "Test", price: "69", time: "2 min ", rating: 4.3, noOfRating: 23, like: false, imageUrl: "assets/images/test2.png", id: "100",storeName: "Puri Vuri",),
"/home" :(context)=> const HomePage(visible: true,),
"/resturant" : (context) => const ResturantPage(resturantid: "3", Name: "Name", storeImageUrl: "assets/images/test3.jpg",),
"/mainPage":(context)=>const MainPage(),
"/searchPage":(context)=> const SearchPage(),
"/favouritePage":(context)=> const FavouritePage(),
"/settingPage":(context) =>  SettingPage(selectItemFunction: (){},)
},

)
);


  }

}
