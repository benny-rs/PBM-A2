// ignore: unused_import
import 'package:flutter/material.dart';

class page_awal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("AgriStore",
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: "Allura",),
                )
              ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 250, 
              height: 250,
              decoration: new BoxDecoration(

                image: DecorationImage(
                  image: AssetImage('assets/images/gambar.png'),
                  fit: BoxFit.fill

            )
          )
            ),
            SizedBox(
              height: 100,
            ),
            
            
            ElevatedButton(
              onPressed: (){}, child: Text('Get Start',
              style: TextStyle(fontSize: 16,color: Colors.black)) , 
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20), 
                primary: Colors.white
                // side: BorderSide(width:3, color:Colors.brown), 
              )
              
            ),
          ]),
      ),
    );
    
  }
}

