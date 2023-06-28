import 'package:flutter/material.dart';
import '../reusable component/Page1.dart';
import '../reusable component/Page2.dart';
import '../reusable component/Page3.dart';
import '../reusable component/Page4.dart';

void main() {
  runApp(HomePage1());
}

class HomePage1 extends StatefulWidget {
  @override
  State<HomePage1> createState() => _HomePageState1();
}

class _HomePageState1 extends State<HomePage1> {
  int _currentIndex = 0;
  
  final List<Widget> _children = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            _children[_currentIndex],
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 4, // Tinggi kotak putih
                color: Colors.white,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          backgroundColor: Color(int.parse('FF6440', radix: 16)).withOpacity(1.0), // Warna latar belakang biru
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        ),
      ),
    );
  }
}
