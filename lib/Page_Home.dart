import 'package:agristore/Kategori_BerTani.dart';
import 'package:agristore/Kategori_Buah&Sayur.dart';
import 'package:agristore/Kategori_Daging&Ikan.dart';
import 'package:agristore/Kategori_Telur&Unggas.dart';
import 'package:agristore/constants_Home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: HomeScreen(),
    );
    ;
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          // title: Text("AppBar"),
          // centerTitle: true,
          title: Container(
            width: size.width * 1,
            // margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9.5),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                icon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
          // IconButton(
          //   onPressed: () {
          //     print("Home");
          //   },
          //   icon: Icon(Icons.menu),
          // ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.location_on_outlined),
            ),
            // Text(
            //   "Alamat Pengiriman",
            //   style: TextStyle(fontSize: 15),
            // )
          ],
          backgroundColor: Color(0xFF6FA15D),
          elevation: 2,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
                    padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                    width: size.width * 1,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Cek Voucher saya \nCek Sekarang",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: size.width * .4,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                        //     Text(
                        //   nama,
                        //   textAlign: TextAlign.center,
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .titleSmall
                        //       ?.copyWith(fontSize: 15),
                        // )
                        // Container(
                        //   decoration: BoxDecoration(),
                        // )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 30),
                //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(29.5)),
                //   child: TextField(
                //     decoration: InputDecoration(
                //       hintText: "Search",
                //       icon: Icon(Icons.search),
                //       border: InputBorder.none,
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                //   alignment: Alignment.center,
                //   width: size.width * 1,
                //   height: 72,
                //   decoration: BoxDecoration(color: Colors.amber),
                // ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .80,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/gambartani.png",
                          nama: "BerTani",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BerTani();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/NANAS.png",
                          nama: "Buah & Sayur",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BuahSayur();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/telur.png",
                          nama: "Telur & Unggas",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return TelurUnggas();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/daging.png",
                          nama: "Daging & Ikan",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return DagingIkan();
                            }));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
    // Stack(
    //   children: <Widget>[
    //     Container(
    //       height: size.height * .25,
    //       decoration: BoxDecoration(
    //         color: Color(0xFF6FA15D),
    // image: DecorationImage(
    //   alignment: Alignment.centerLeft,
    //   image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
    // ),
    // ),
    // child: Row(
    //   children: <Widget>[
    //     Container(
    //       height: 20,
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage("assets/images/sayurbuah.png"),
    //         ),
    //       ),
    //     )
    //   ],
    // ),
    // ),
    // Container(
    //   margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
    //   alignment: Alignment.center,
    //   width: size.width * 1,
    //   height: 72,
    //   decoration: BoxDecoration(color: Colors.amber),
    // ),
    // SafeArea(
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 20),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: <Widget>[
    //         // Row(
    //         //   children: <Widget>[
    //         //     Container(
    //         //       height: 200,
    //         //       decoration: BoxDecoration(
    //         //         image: DecorationImage(
    //         //           image: AssetImage("assets/images/sayurbuah.png"),
    //         //         ),
    //         //       ),
    //         //     )
    //         //   ],
    //         // ),
    //         // Container(
    //         //   margin: EdgeInsets.symmetric(vertical: 30),
    //         //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    //         //   decoration: BoxDecoration(
    //         //       color: Colors.white,
    //         //       borderRadius: BorderRadius.circular(29.5)),
    //         //   child: TextField(
    //         //     decoration: InputDecoration(
    //         //       hintText: "Search",
    //         //       icon: Icon(Icons.search),
    //         //       border: InputBorder.none,
    //         //     ),
    //         //   ),
    //         // ),
    //         // Container(
    //         //   margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
    //         //   alignment: Alignment.center,
    //         //   width: size.width * 1,
    //         //   height: 72,
    //         //   decoration: BoxDecoration(color: Colors.amber),
    //         // ),
    //         Expanded(
    //           child: GridView.count(
    //             crossAxisCount: 2,
    //             childAspectRatio: .95,
    //             crossAxisSpacing: 20,
    //             mainAxisSpacing: 20,
    //             children: <Widget>[
    //               CatergoryCard(
    //                   size: size,
    //                   gambar: "assets/images/Logo.png",
    //                   nama: "BerTani",
    //                   press: () {
    //                     Navigator.of(context)
    //                         .push(MaterialPageRoute(builder: (_) {
    //                       return BerTani();
    //                     }));
    //                   }),
    //               CatergoryCard(
    //                   size: size,
    //                   gambar: "assets/images/Logo.png",
    //                   nama: "Buah & Sayur",
    //                   press: () {
    //                     Navigator.of(context)
    //                         .push(MaterialPageRoute(builder: (_) {
    //                       return BuahSayur();
    //                     }));
    //                   }),
    //               CatergoryCard(
    //                   size: size,
    //                   gambar: "assets/images/Logo.png",
    //                   nama: "Telur & Unggas",
    //                   press: () {
    //                     Navigator.of(context)
    //                         .push(MaterialPageRoute(builder: (_) {
    //                       return TelurUnggas();
    //                     }));
    //                   }),
    //               CatergoryCard(
    //                   size: size,
    //                   gambar: "assets/images/Logo.png",
    //                   nama: "Daging & Ikan",
    //                   press: () {
    //                     Navigator.of(context)
    //                         .push(MaterialPageRoute(builder: (_) {
    //                       return DagingIkan();
    //                     }));
    //                   }),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ));
    //     ],
    //   ),
    // );
  }
}

class CatergoryCard extends StatelessWidget {
  final String gambar;
  final String nama;
  final VoidCallback press;
  const CatergoryCard({
    Key? key,
    required this.size,
    required this.gambar,
    required this.nama,
    required this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // margin: EdgeInsets.only(top: 10),
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xFF6FA15D),
            // color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kShadowColor,
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    height: size.height * 0.15,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(gambar),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    nama,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
        // child: Column(
        //   children: <Widget>[
        //     Image.asset("assets/images/Logo.png")
        //   ],
        // ),
      ),
    );
  }
}
