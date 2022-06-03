// ignore: unused_import
import 'package:agristore/Page_Login.dart';
import 'package:agristore/Page_Register.dart';
import 'package:flutter/material.dart';

class Pengenalan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              child: Text(
            "AgriStore",
            style: TextStyle(
              fontSize: 50,
              fontFamily: "Allura",
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 250,
            height: 250,
            margin: EdgeInsets.all(10),
            child: Text(
              "Selamat Datang di AgriStore, Aplikasi penjualan hasil tani",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Login();
                }));
              },
              child: Text('Next',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20), primary: Colors.white
                  // side: BorderSide(width:3, color:Colors.brown),
                  )),
        ]),
      ),
    );
  }
}
