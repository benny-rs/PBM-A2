import 'package:agristore/Home/Page_Home.dart';
import 'package:agristore/Cart/Page_Keranjang.dart';
import 'package:agristore/Cart/Page_Pembayaran.dart';
// import 'package:agristore/Page_Pembayaran.dart';
import 'package:agristore/Pembelian/Pembelian.dart';
import 'package:agristore/Home/constants_Home.dart';
import 'package:agristore/camera.dart';
// import 'package:agristore/Page_Profile.dart';
import 'package:agristore/profil.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;
  final Screen = [
    HomePage(),
    Keranjang(),
    // BeliPage(),
    camera(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: pBackgroundColor,
        backgroundColor: Colors.white,
        // backgroundColor: const Color(0xFF6FA15D),
        selectedItemColor: Colors.amber,
        // selectedFontSize: 15,
        unselectedItemColor: Color(0xFF6FA15D),
        // unselectedItemColor: Colors.white,
        // iconSize: 25,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall),
            label: 'Pemesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
