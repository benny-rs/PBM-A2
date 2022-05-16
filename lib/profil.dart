import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  var text;

  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading : Icon(Icons.arrow_back),
        iconTheme: IconThemeData(
          color: Colors.blue,),
        backgroundColor: Color.fromARGB(255, 230, 255, 223),
        title: Text('Profil', 
        style: TextStyle(color: Colors.blue),),
      ),
    
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Container(
         padding: EdgeInsets.only(
           top: 20,
           bottom: 30,
           left: 30,
         ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 230, 255, 223),
                radius: 40.0,
                child: Image.asset('indah'),
              ),

              SizedBox(width: 40,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nurita Indah Amalia',
                  style: TextStyle(fontSize: 16,),),
                  Text('0123456987',
                  style: TextStyle(fontSize: 16),),
              ])
            ],
          ),
        ],
      )),


      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
               color: Color.fromARGB(255, 230, 255, 223),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5,),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('nama', style: TextStyle(fontSize: 20,)),

                  // SizedBox(width: 80,),

                  IconButton(
                    onPressed: () {},
                    iconSize: 30, 
                    icon: Icon(Icons.arrow_forward))
                    // Icons.arrow_forward, size: 30,)
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 230, 255, 223),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5,),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8,),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('username', style: TextStyle(fontSize: 20,)),

                  // SizedBox(width: 80,),

                  IconButton(
                    onPressed: () {},
                    iconSize: 30, 
                    icon: Icon(Icons.arrow_forward))
                  // Icon(Icons.arrow_forward,size: 30,)
                ],
              )
            ),
            Container(
               color: Color.fromARGB(255, 230, 255, 223),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5,),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8,),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('nomor hp', style: TextStyle(fontSize: 20,)),

                  // SizedBox(width: 80,),

                  IconButton(
                    onPressed: () {},
                    iconSize: 30, 
                    icon: Icon(Icons.arrow_forward))
                  // Icon(Icons.arrow_forward, size: 30,)
                ],
              ),
            ),
            Container(
               color: Color.fromARGB(255, 230, 255, 223),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5,),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8,),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('email', style: TextStyle(fontSize: 20,)),

                  // SizedBox(width: 80,),

                  IconButton(
                    onPressed: () {},
                    iconSize: 30, 
                    icon: Icon(Icons.arrow_forward))
                  // Icon(Icons.arrow_forward, size: 30,)
                ],
              ),
            ),
             Container(
               color: Color.fromARGB(255, 230, 255, 223),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5,),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8,),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('nomor rekening', style: TextStyle(fontSize: 20,)),

                  // SizedBox(width: 80,),

                  IconButton(
                    onPressed: () {},
                    iconSize: 30, 
                    icon: Icon(Icons.arrow_forward))
                  // Icon(Icons.arrow_forward, size: 30,)
                ],
              ),
            ),
             Container(
               color: Color.fromARGB(255, 230, 255, 223),
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 5,),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8,),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ubah password', style: TextStyle(fontSize: 20,)),

                  // SizedBox(width: 80,),

                  IconButton(
                    onPressed: () {},
                    iconSize: 30, 
                    icon: Icon(Icons.arrow_forward))
                  // Icon(Icons.arrow_forward, size: 30,)
                ],
              ),
            ),],
      )
      // bottomNavigationBar: const CinematixBar(),
       ] ));
    }
  }