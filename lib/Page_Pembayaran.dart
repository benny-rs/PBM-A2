import 'package:agristore/models/produk_models.dart';
import 'package:agristore/widget/produk_widget.dart';
import 'package:flutter/material.dart';

class PagePembayaran extends StatelessWidget {
  PagePembayaran({Key? key}) : super(key: key);
  final List<produkmodels> konten = [
    produkmodels(
        gambar: "assets/images/Logo.png",
        nama: "nama",
        harga: "harga",
        jumlah: "jumlah",
        total: "total"),
    produkmodels(
        gambar: "assets/images/Logo.png",
        nama: "nama",
        harga: "harga",
        jumlah: "jumlah",
        total: "total"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(
              context,
              // MaterialPageRoute(
              //   builder: (_) => const BulanPage(),
              //   // builder: (_) => const BulanPage(),
              // ),
            ),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Pembayaran"),
          centerTitle: true,
          backgroundColor: Color(0xFF6FA15D),
          elevation: 2,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 7.5, 10, 7.5),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.07,
              // color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.amber),
              child: Row(
                children: [
                  Text(
                    "Alamat Pengiriman",
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.1,
                    width: MediaQuery.of(context).size.width * 0.46,
                    // width: 100,
                  ),
                  Icon(
                    Icons.add_location_sharp,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            //PEMISAH
            //PEMISAH
            Container(
              margin: EdgeInsets.fromLTRB(10, 7.5, 10, 7.5),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.07,
              // color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.amber),
              child: Row(
                children: [
                  Text(
                    "Catatan Pembelian(Opsional)",
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.1,
                    width: MediaQuery.of(context).size.width * 0.29,
                    // width: 100,
                  ),
                  Icon(
                    Icons.note_add,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            //PEMISAH
            //PEMISAH
            //PEMISAH
            Container(
              margin: EdgeInsets.fromLTRB(10, 7.5, 10, 7.5),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.8,
              // color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.amber),
              child: ListView.builder(
                  itemCount: konten.length,
                  itemBuilder: (context, index) =>
                      ProdukWidget(produk: konten[index])),
            ),
          ],
        ),
      ),
    );
  }
}
