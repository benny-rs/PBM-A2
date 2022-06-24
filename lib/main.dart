// import 'package:firebase_authentication_01/Auth_Services.dart';
import 'package:agristore/Cart/Page_Keranjang.dart';
import 'package:agristore/Coba/Hide.dart';
import 'package:agristore/Coba/alert.dart';
import 'package:agristore/Page_register1.dart';
import 'package:agristore/Pembelian/Pembelian.dart';
import 'package:agristore/camera.dart';
import 'package:agristore/maps.dart';
import 'package:agristore/navbar.dart';
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
      home: NavBar(),
      // home: BeliPage(),
      // home: page_awal(),
    );
  }
}
