import 'package:flutter/material.dart';

import 'Page_Awal.dart';

void main() {
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
