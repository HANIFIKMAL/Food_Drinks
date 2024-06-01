import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'homepage.dart'; // Import the Home page
import 'order.dart';
import 'profile.dart';
import 'map.dart'; // Ensure Map page is correctly defined and imported

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Homepage(), // Use Home page here
    Order(),
    Profile(),
    Map(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.grey.shade400,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: GNav(
            backgroundColor: Colors.grey.shade400,
            tabBackgroundColor: Colors.white,
            gap: 4,
            padding: EdgeInsets.all(16.0),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.list,
                text: 'Order Now',
              ),
              GButton(
                icon: Icons.people,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.map,
                text: 'Map',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}