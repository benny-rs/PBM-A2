// import 'package:firebase_authentication_01/Auth_Services.dart';
import 'package:agristore/Page_register1.dart';
import 'package:agristore/camera.dart';
import 'package:agristore/maps.dart';
import 'package:agristore/page_awal.dart';
import 'package:agristore/page_login.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_authentication_01/wrapper.dart';
import 'package:provider/provider.dart';
// import 'wrapper.dart';
import 'package:flutter/material.dart';
// import 'dart:js';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page_awal(),
    );
  }
}
