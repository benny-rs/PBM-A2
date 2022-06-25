import 'package:agristore/camera.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../camera copy.dart';

class Ulasan extends StatefulWidget {
  const Ulasan({Key? key}) : super(key: key);

  @override
  State<Ulasan> createState() => _UlasanState();
}

class _UlasanState extends State<Ulasan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            // margin: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * .15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFF6FA15D),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                //1) container utk gambar
                Container(
                  // margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage("assets/images/Logo.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                //2) column utk judul & topik
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //a) judul
                    Text(
                      "Nama Produk",
                      style: GoogleFonts.openSans(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      width: MediaQuery.of(context).size.width * .3,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 0, 133, 216),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return camera();
                          }));
                        },
                        child: Center(
                          child: Text(
                            "Ulasan",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // margin: EdgeInsets.only(top: 10),
      // width: MediaQuery.of(context).size.width * 0.2,
      // height: MediaQuery.of(context).size.height * 0.1,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(5),
      //   color: Colors.amber,
    );
    // return Center(child: Text("Tidak Ada Barang"));
  }
}
