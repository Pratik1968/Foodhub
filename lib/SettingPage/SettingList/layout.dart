// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/ChangeAccountDetailsPage/layout.dart';
import 'package:foodhub/CreditPage/layout.dart';
import 'package:foodhub/Login/layout.dart';
import 'package:foodhub/firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ListItem/ListItem.dart';

class SettingList extends StatelessWidget {
  const SettingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 52),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListItem(
              ItemName: "Change Account Details",
              iconData: Icons.person,
              onTapFunction: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) =>
                        const ChangeAccountDetailPage(),
                    transitionDuration: const Duration(milliseconds: 500),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              }),
          ListItem(
              ItemName: "Credit",
              iconData: Icons.info,
              onTapFunction: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const CreditPage(),
                      transitionDuration: const Duration(milliseconds: 500),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ));
              }),
          ListItem(
              ItemName: "Sign Out",
              iconData: Icons.logout,
              onTapFunction: () {
                // Firebase.initializeApp(
                //   options: DefaultFirebaseOptions.currentPlatform,
                // );
                // FirebaseAuth.instance.signOut().whenComplete(() {
            
                // });
                       Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => const Login(),
                      transitionDuration: const Duration(milliseconds: 500),
                      transitionsBuilder: (_, a, __, c) =>
                          FadeTransition(opacity: a, child: c),
                    ));
              }),
          ListItem(
              ItemName: "Delete Account",
              iconData: Icons.delete,
              IconColor: Colors.red,
              textColor: Colors.red,
              onTapFunction: () {
                print("item 4 ");
              }),
        ],
      ),
    );
  }
}
