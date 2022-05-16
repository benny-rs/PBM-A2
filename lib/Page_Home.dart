import 'package:agristore/Page_Keranjang.dart';
import 'package:agristore/Page_Profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("AppBar"),
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print("Hello");
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.location_on_outlined),
          ),
        ],
        backgroundColor: Color(0xFF6FA15D),
        elevation: 2,
      ),
      //   body: Column(
      //     children: [
      //       Container(
      //         margin: EdgeInsets.only(top: 10.0),
      //         height: MediaQuery.of(context).size.height * 0.13,
      //         // width: MediaQuery.of(context).size.width * 1,
      //         color: Colors.amber,
      //         child: Column(
      //           children: <Widget>[
      //             Container(
      //               child: Text(
      //                 "Gratis Onkir",
      //                 // style: GoogleFonts.sahitya(),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //     ],
      //   ),
      // );
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10.0),
            child: Image(
              image: NetworkImage(
                  "https://asset.kompas.com/crops/6Cm4ADFEXy6gq_6Xx8PLQ2kNGFw=/0x70:864x646/750x500/data/photo/2018/07/20/421001284.jpg"),
            ),
          ),
          Container(
            // color: Colors.blue,
            margin: EdgeInsets.all(10.0),
            child: Image(
              image: NetworkImage(
                  "https://rsud.luwuutarakab.go.id/upload/berita/makan-sayur-dan-buah.jpg"),
            ),
          ),
          Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10.0),
          ),
          Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }
}
