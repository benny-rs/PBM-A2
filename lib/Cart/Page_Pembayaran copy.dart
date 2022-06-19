// import 'package:flutter/material.dart';

// class PagePembayaran extends StatelessWidget {
//   const PagePembayaran({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Pembayaran(),
//     );
//   }
// }

// class Pembayaran extends StatefulWidget {
//   const Pembayaran({Key? key}) : super(key: key);

//   @override
//   State<Pembayaran> createState() => _PembayaranState();
// }

// class _PembayaranState extends State<Pembayaran> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () => Navigator.pop(
//             context,
//             // MaterialPageRoute(
//             //   builder: (_) => const BulanPage(),
//             //   // builder: (_) => const BulanPage(),
//             // ),
//           ),
//           icon: const Icon(Icons.arrow_back),
//         ),
//         title: const Text("Pembayaran"),
//         centerTitle: true,
//         backgroundColor: Color(0xFF6FA15D),
//         elevation: 2,
//       ),
//       body: Column(
//         children: <Widget>[
//           kotak(context, "Alamat Pengiriman", Icons.add_location_alt_sharp),
//           kotak(context, "Catatan Pembelian(Opsional)",
//               Icons.text_snippet_outlined),
//         ],
//       ),
//     );
//   }

//   Container kotak(BuildContext context, String name, IconData ikon) {
//     return Container(
//       margin: EdgeInsets.fromLTRB(10, 15, 10, 5),
//       padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//       width: MediaQuery.of(context).size.width * 1,
//       height: MediaQuery.of(context).size.height * 0.07,

//       // color: Colors.amber,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5), color: Colors.amber),
//       child: Row(
//         children: [
//           Text(name),
//           SizedBox(
//             // width: MediaQuery.of(context).size.width * 0.1,
//             width: 100,
//           ),
//           Icon(
//             ikon,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }
