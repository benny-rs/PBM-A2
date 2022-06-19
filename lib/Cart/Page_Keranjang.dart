import 'package:agristore/Cart/Page_Pembayaran.dart';
import 'package:flutter/material.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF6FA15D),
        title: Text(
          'KERANJANG',
        ),
        centerTitle: true,
      ),
      body: CheckoutPage(),
    );
  }
}

// import "package:flutter/material.dart";
// import 'package:project/app/views/main/checkout/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 245, 184, 184),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.check_box),
                    Text("Pilih Semua"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CheckoutCard(
                    size: size,
                    gambar: "assets/images/Logo.png",
                    nama: "nama \n Rp15.000"),
                const SizedBox(
                  height: 10,
                ),
                CheckoutCard(
                    size: size,
                    gambar: "assets/images/Logo.png",
                    nama: "nama \n Rp15.000"),
                const SizedBox(
                  height: 10,
                ),
                CheckoutCard(
                    size: size,
                    gambar: "assets/images/Logo.png",
                    nama: "nama \n Rp15.000"),
                const SizedBox(
                  height: 10,
                ),
                CheckoutCard(
                    size: size,
                    gambar: "assets/images/Logo.png",
                    nama: "nama \n Rp15.000"),
                // const CheckoutCard(image: "assets/makanan/ayam_bakar_madu.jpg", food: "Ayam bakar madu", quantity: 2),
                // const SizedBox(
                //   height: 5,
                // ),
                // const CheckoutCard(image: "assets/makanan/ayam_geprek.jpg", food: "Ayam geprek bawang", quantity: 2),
                // const SizedBox(
                //   height: 5,
                // ),
                // const CheckoutCard(image: "assets/makanan/ayam_crispy.jpg", food: "Ayam crispy sambal", quantity: 1),
                // const SizedBox(
                //   height: 5,
                // ),
                // const CheckoutCard(image: "assets/makanan/ayam_bakar_rica.jpg", food: "Ayam bakar rica", quantity: 4),
                // const SizedBox(
                //   height: 5,
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return PagePembayaran();
                    }));
                  },
                  child: Ink(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff2f4858),
                    ),
                    child: const Center(
                      child: Text(
                        "Checkout Sekarang",
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
          ),
        ),
      ),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  final String gambar;
  final String nama;
  // final VoidCallback press;
  const CheckoutCard({
    Key? key,
    required this.size,
    required this.gambar,
    required this.nama,
    // required this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 3,
      height: 70,
      // color: Colors.amber,
      child: Row(
        children: [
          Icon(Icons.check_box_sharp),
          // Spacer(),
          Container(
            width: 100,
            // width: size.width * .3,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: AssetImage(gambar),
              ),
            ),
          ),
          // Spacer(),
          Container(
            decoration: BoxDecoration(border: Border.all(width: 2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Text(
                //   "Rp15.000",
                //   textAlign: TextAlign.start,
                //   style: Theme.of(context)
                //       .textTheme
                //       .titleSmall
                //       ?.copyWith(fontSize: 15),
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Color(0xFF000000),
                      child: Icon(
                        Icons.minimize_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        width: 15,
                        color: Colors.white,
                        child: Text(
                          "1",
                          textAlign: TextAlign.center,
                        )),
                    Container(
                      color: Color(0xFF000000),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      // child: Column(
      //   children: <Widget>[
      //     Image.asset("assets/images/Logo.png")
      //   ],
      // ),
    );
  }
}
