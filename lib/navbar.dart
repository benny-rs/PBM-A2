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
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // int _selectedIndex = 0;
  // final Screen = [
  //   HomePage(),
  //   Keranjang(),
  //   camera(),
  //   Profile(),
  // ];

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Screen[_selectedIndex],
  //     // body: Screen[currentIndex],
  //     bottomNavigationBar: GNav(
  //       backgroundColor: const Color(0xFF6FA15D),
  //       color: Colors.white,
  //       activeColor: Colors.white,
  //       tabBackgroundColor: Colors.black45,
  //       padding: EdgeInsets.all(16),
  //       gap: 8,
  //       onTabChange: (index) => setState(() => _selectedIndex = index),
  //       // currentIndex: currentIndex,
  //       // onTap: (index) => setState(() => currentIndex = index),
  //       tabs: const [
  //         GButton(
  //           icon: Icons.home,
  //           text: 'Beranda',
  //         ),
  //         GButton(
  //           icon: Icons.shopping_cart,
  //           text: 'Keranjang',
  //         ),
  //         GButton(
  //           icon: Icons.local_mall,
  //           text: 'Pembelian',
  //         ),
  //         GButton(
  //           icon: Icons.account_circle,
  //           text: 'Profile',
  //         ),
  //       ],
  //     ),
  // bottomNavigationBar: BottomNavigationBar(
  //   // backgroundColor: pBackgroundColor,
  //   backgroundColor: Colors.white,
  //   // backgroundColor: const Color(0xFF6FA15D),
  //   selectedItemColor: Colors.amber,
  //   // selectedFontSize: 15,
  //   unselectedItemColor: Color(0xFF6FA15D),
  //   // unselectedItemColor: Colors.white,
  //   // iconSize: 25,
  //   currentIndex: currentIndex,
  //   onTap: (index) => setState(() => currentIndex = index),
  //   items: <BottomNavigationBarItem>[
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.home),
  //       label: 'Home',
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.add_shopping_cart),
  //       label: 'Keranjang',
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.local_mall),
  //       label: 'Pemesanan',
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.account_circle),
  //       label: 'Profile',
  //     ),
  //   ],
  // ),

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Keranjang(),
    BeliPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: const Color(0xFF6FA15D),
              // tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Beranda',
                ),
                GButton(
                  icon: LineIcons.shoppingCart,
                  text: 'Keranjang',
                ),
                GButton(
                  icon: LineIcons.shoppingBag,
                  text: 'Pembelian',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
