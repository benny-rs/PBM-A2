//ini berada di page pembayaran
import 'package:agristore/models/produk_models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdukWidget extends StatelessWidget {
  const ProdukWidget({required this.produk, Key? key}) : super(key: key);

  final produkmodels produk;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        //1) container utk gambar
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.11,
          decoration: BoxDecoration(
            // color: Colors.blue,
            image: DecorationImage(
                image: AssetImage(produk.gambar), fit: BoxFit.cover),
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
              produk.nama,
              style: GoogleFonts.openSans(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
            //b) topik
            Text(
              produk.jumlah,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
    // Column(
    //   children: <Widget>[
    //     Container(
    //       margin: EdgeInsets.only(top: 10),
    //       width: MediaQuery.of(context).size.width * 1,
    //       height: MediaQuery.of(context).size.height * 0.08,
    //       // height: 50,
    //       color: Colors.blue,
    //     ),
    //   ],
    // );
  }
}
