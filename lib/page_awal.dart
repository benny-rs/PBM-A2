// ignore: unused_import
import 'package:agristore/Page_Perkenalan.dart';
import 'package:agristore/Page_Login.dart';
import 'package:agristore/Page_Register.dart';
import 'package:flutter/material.dart';

class page_awal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Container Untuk LOGO
          Container(
            // width: 100,
            // height: 100,
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Logo.png"),
                  fit: BoxFit.fill),
            ),
            // child: Image(image: AssetImage("assets/images/Logo.png")),
          ),
          // Container Untuk Text "AgriStore"
          Container(
              child: Text(
            "AgriStore",
            style: TextStyle(
              fontSize: 50,
              fontFamily: "Allura",
            ),
          )),
          SizedBox(
            height: 40,
          ),
          // Container Untuk Gambar
          Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
              // width: 250,
              // height: 250,
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/gambar.png'),
                      fit: BoxFit.fill))),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Pengenalan();
                }));
              },
              child: Text('Get Start',
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
