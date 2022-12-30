import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/cartscreen.dart';
import 'package:flutterforbeginners2/screens/homescreen.dart';
import 'package:flutterforbeginners2/screens/orderscreen.dart';
import 'package:flutterforbeginners2/screens/profilescreen.dart';
import 'package:flutterforbeginners2/screens/wishlistscreen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WishListScreen(),
    CartScreen(),
    OrderScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // SingleChildScrollView(
              // child: Column(
              //    children: [

              //    ],
              //   )
              // ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Order',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.scale), label: 'cart'),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}
