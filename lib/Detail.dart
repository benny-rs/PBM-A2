import 'package:agristore/Cart/Page_Keranjang.dart';
import 'package:agristore/Cart/Page_Pembayaran.dart';
import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({Key? key}) : super(key: key);

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.75,
              decoration: BoxDecoration(
                color: Color(0xFF6FA15D),
                image: DecorationImage(
                    image: AssetImage("assets/images/gambar.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              "Nama Produk",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff499595)),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              width: width * 0.8,
              child: Text(
                "Nymphs blitz quick vex dwarf jog. DJs flock by when MTV ax quiz prog. Big fjords vex quick waltz nymph. Bawds jog, flick quartz, vex nymph.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: width * .3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF6FA15D)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => KeranjangPage()));
                    },
                    child: Text("Keranjang"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: width * .3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF6FA15D)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PagePembayaran()));
                    },
                    child: Text("Beli"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
