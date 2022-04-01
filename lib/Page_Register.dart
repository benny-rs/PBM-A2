import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tampilan Register"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                },
                child: Text("kembali"))
          ],
        ),
      ), 
    );
  }
}
