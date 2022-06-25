import 'package:flutter/material.dart';

import 'Kategori_BerTani.dart';

class DagingIkan extends StatelessWidget {
  const DagingIkan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF6FA15D),
          // backgroundColor: Color.fromARGB(255, 230, 255, 223),
          title: Text(
            'Daging dan Ikan',
            // style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          // title: Container(
          //   width: size.width * 1,
          //   height: size.height * 0.07,
          //   // margin: EdgeInsets.symmetric(vertical: 30),
          //   padding: EdgeInsets.only(left: 5),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(9.5),
          //   ),
          //   child: Text(
          //     "BerTani",
          //     style: TextStyle(fontSize: 20),
          //   ),
          // ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .80,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/IkanDaging/01.png",
                          nama: "Daging Sapi \n Rp15.000/Kg",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BerTani();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/IkanDaging/02.png",
                          nama: "Butut Sapi \n Rp15.000/Kg",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BerTani();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/IkanDaging/03.png",
                          nama: "Hati Sapi \n Rp15.000/Kg",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BerTani();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/IkanDaging/04.png",
                          nama: "Ikan Nila \n Rp15.000/Kg",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BerTani();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/IkanDaging/05.png",
                          nama: "Lobster \n Rp15.000/Kg",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BerTani();
                            }));
                          }),
                      CatergoryCard(
                          size: size,
                          gambar: "assets/images/IkanDaging/06.png",
                          nama: "Cumi-Cumi \n Rp15.000/Kg",
                          press: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return BerTani();
                            }));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //
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
      child:
          // ListView(
          //   children: <Widget>[
          Container(
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
                color: Color(0xFFE6E6E6),
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Container(
              // width: 50,
              height: size.height * .30,
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    height: size.height * 0.12,
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(gambar),
                        // fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  // Spacer(),
                  Text(
                    nama,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 15),
                  ),
                  // Spacer(),
                  InkWell(
                    onTap: press,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 8, 5, 0),
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      width: size.width * .9,
                      height: size.height * .035,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Detail",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
