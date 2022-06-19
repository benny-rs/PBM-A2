// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:brew_crew/model/user.dart';

// class AuthServices {
//   static FirebaseAuth _auth = FirebaseAuth.instance;

//   static Future<User?> signInAnonymous() async {
//     try {
//       UserCredential result = await _auth.signInAnonymously();
//       User? firebaseUser = result.user;

//       return firebaseUser;
//     } catch (e) {
//       print(e.toString());

//       return null;
//     }
//   }

//   static Future<void> signOut() async {
//     _auth.signOut();
//   }

//   static Stream<User?> get firebaseAuthStream => _auth.authStateChanges();
//   // onAuthStateChanged;
// }// TODO Implement this library.