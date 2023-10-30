// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:foodhub/firebase_options.dart';
// import 'package:foodhub/ServerMethods/AuthAndUserCreation/Auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleAuth  {
//   void load(){
//     signInWithGoogle();
//   }
// Future signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );
//   await FirebaseAuth.instance.signInWithCredential(credential).whenComplete(() {
// if(FirebaseAuth.instance.currentUser!=null){
// String? Name = FirebaseAuth.instance.currentUser?.displayName;
// String? Email = FirebaseAuth.instance.currentUser?.email;
// String? uid = FirebaseAuth.instance.currentUser?.uid;
// Auth().SaveUserInfo(Name, Email,uid);

// }
//   });

//   // Once signed in, return the UserCredential

 
// }
// }