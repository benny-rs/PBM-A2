import 'package:agristore/models/produk_models.dart';
import 'package:agristore/Cart/widget/produk_widget.dart';
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
    var size = MediaQuery.of(context).size;
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
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 243, 207, 207)),
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
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 243, 207, 207)),
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
              width: size.width * 1,
              height: size.height * .8,
              // color: Colors.amber,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF6FA15D)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 15, 5, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: size.height * .26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 243, 207, 207)),
                    child: ListView.builder(
                        itemCount: konten.length,
                        itemBuilder: (context, index) =>
                            ProdukWidget(produk: konten[index])),
                  ),
                  //PEMISAH
                  //PEMISAH
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: size.height * .05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 243, 207, 207)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Subtotal(2 Produk)",
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "Total",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: size.height * .05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 243, 207, 207)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "METODE PEMBAYARAN",
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_right_rounded),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    height: size.height * .108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 243, 207, 207)),
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Text(
                              "Subtotal(2 Produk)",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Total",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Biaya Pengiriman",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Total",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Voucher",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Total",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Total Pembayaran",
                              style: TextStyle(fontSize: 15),
                            ),
                            Spacer(),
                            Text(
                              "Total",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text(
                      "BAYAR",
                      style: TextStyle(color: Colors.white),
                    ),
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all(Colors.red),
                    // ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
