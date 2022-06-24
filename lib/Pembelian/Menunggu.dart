import 'package:flutter/cupertino.dart';

class Menunggu extends StatefulWidget {
  const Menunggu({Key? key}) : super(key: key);

  @override
  State<Menunggu> createState() => _MenungguState();
}

class _MenungguState extends State<Menunggu> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Tidak Ada Barang"));
  }
}
