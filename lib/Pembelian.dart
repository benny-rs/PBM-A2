import 'package:flutter/material.dart';

class BeliPage extends StatelessWidget {
  const BeliPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text(
          "BELI",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
