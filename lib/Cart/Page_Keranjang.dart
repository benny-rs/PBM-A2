import 'package:agristore/Cart/Page_Pembayaran.dart';
import 'package:agristore/Cart/constants_Home.dart';
import 'package:flutter/material.dart';

class Keranjang extends StatelessWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: "Cairo",
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor)),
      home: KeranjangPage(),
    );
    ;
  }
}

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({Key? key}) : super(key: key);

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
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
            color: Color(0xFFFBF3F3),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.check_box),
                    Text("Pilih Semua"),
                  ],
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                CheckoutCard(
                    size: size, gambar: "assets/images/Logo.png", nama: "nama"),
                // const SizedBox(
                //   height: 10,
                // ),
                CheckoutCard(
                    size: size, gambar: "assets/images/Logo.png", nama: "nama"),
                // const SizedBox(
                //   height: 10,
                // ),
                CheckoutCard(
                    size: size, gambar: "assets/images/Logo.png", nama: "nama"),
                // const SizedBox(
                //   height: 10,
                // ),
                CheckoutCard(
                    size: size, gambar: "assets/images/Logo.png", nama: "nama"),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 0, 133, 216),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return PagePembayaran();
                      }));
                    },
                    child: Center(
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

class CheckoutCard extends StatefulWidget {
  final String gambar;
  final String nama;
  // final VoidCallback setstate;
  // final VoidCallback press;
  CheckoutCard({
    Key? key,
    required this.size,
    required this.gambar,
    required this.nama,
    // required this.setstate,
    // required this.press,
  }) : super(key: key);

  final Size size;

  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      width: widget.size.width * 3,
      height: 100,
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
                image: AssetImage(widget.gambar),
              ),
            ),
          ),
          // Spacer(),
          Container(
            decoration: BoxDecoration(border: Border.all(width: 2)),
            width: widget.size.width * .5,
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.nama,
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rp15.000",
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: add,
                        icon: Icon(Icons.add_circle
                            // color: Colors.white,
                            ),
                      ),
                      Container(
                        color: Colors.white,
                        width: widget.size.width * .1,
                        child: Text(
                          '$_n',
                          style: new TextStyle(fontSize: 17.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      IconButton(
                        onPressed: minus,
                        icon: Icon(Icons.remove_circle
                            // color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  int _n = 0;

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void add() {
    setState(() {
      _n++;
    });
  }
}
