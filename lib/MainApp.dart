// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/Profile.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/favourites.dart';
import 'package:flutter_application_1/pages/ProfileInform.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  
  final _pages = [Home(), favourite(), ProfileInform(),Cart()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 54, 67, 72),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, size: 30),
            label: 'Favorite',
            backgroundColor: Color.fromARGB(255, 54, 67, 72),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 54, 67, 72),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: 30),
            label: 'Cart',
            backgroundColor: Color.fromARGB(255, 54, 67, 72),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 57, 165, 205),
        onTap: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
