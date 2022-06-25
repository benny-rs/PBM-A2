import 'package:agristore/Pembelian/Menunggu.dart';
import 'package:agristore/Pembelian/Pengiriman.dart';
import 'package:agristore/Pembelian/Proses.dart';
import 'package:agristore/Pembelian/Ulasan.dart';
import 'package:flutter/material.dart';

import '../Kategori/Kategori_Buah&Sayur.dart';

class BeliPage extends StatelessWidget {
  const BeliPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Pembelian"),
            bottom:
                TabBar(indicatorColor: Colors.white, isScrollable: true, tabs: [
              Tab(
                text: "Menunggu",
              ),
              Tab(
                text: "Proses",
              ),
              Tab(
                text: "Pengiriman",
              ),
              Tab(
                text: "Ulasan",
              ),
            ]),
            elevation: 10,
            titleSpacing: 5,
            backgroundColor: const Color(0xFF6FA15D),
          ),
          body: TabBarView(children: [
            Menunggu(),
            Proses(),
            Pengiriman(),
            Ulasan(),
          ]),
          // Text(
          //   "BELI",
          //   style: TextStyle(fontSize: 50),
          // ),
        ),
      ),
    );
  }
}
