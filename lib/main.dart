import 'package:flutter/material.dart';

import 'page_awal.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page_awal(),
    );
  }
}