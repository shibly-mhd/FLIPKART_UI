import 'package:flipkart_ecommerce/Cart.dart';
import 'package:flipkart_ecommerce/acPage.dart';
import 'package:flipkart_ecommerce/grocessiesAccess.dart';
import 'package:flipkart_ecommerce/homescreen.dart';
import 'package:flipkart_ecommerce/notifyPage.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _currentIndex = 0;

  // List of screens for navigation
  final List Screens = [
    const Homescreen(),
    const Grocessiesaccess(),
    const Notifypage(),
    const Acpage(),
    const Cart(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 240, 242),
      body: Screens[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
        child: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 238, 240, 242)),
          height: size.height * .09,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              unselectedFontSize: 11,
              selectedFontSize: 12,
              type: BottomNavigationBarType.fixed,
              onTap: _onTap, // State is managed here using setState
              backgroundColor: const Color(0xFFFFFFFF),
              currentIndex: _currentIndex,
              selectedItemColor: const Color.fromARGB(255, 68, 109, 221),
              unselectedItemColor: const Color(0xFF98A3B3),
              showUnselectedLabels: true,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 25,
                  ),
                  label: 'Home',

                  //
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_outlined,
                    size: 25,
                  ),
                  label: 'Category',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notification_add_outlined,
                    size: 25,
                  ),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 25,
                  ),
                  label: 'Account',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25,
                  ),
                  label: 'Cart',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
