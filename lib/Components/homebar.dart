import 'package:duds/Components/home.dart';
import 'package:flutter/material.dart';
import 'package:duds/Components/uploadpreview_screen.dart';

import '../PagesOfHomePage/Page2.dart';

void main() {
  runApp(HomeBar());
}

class HomeBar extends StatefulWidget {
  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  int currentIndex=0;
  final screens=[
HomePage(),
Page2(),
HomePage(),
ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
    color: Colors.black,
  ),
    ),
    body: screens[currentIndex],
    bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(99, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 255, 100, 64),
        currentIndex: currentIndex,
        type : BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        onTap: (index) => setState(()=>currentIndex= index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Checkout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
   
        

      ),
  );
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'HomeBar',
  //     theme: ThemeData(
  //       primarySwatch: Colors.orange,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),
  //     debugShowCheckedModeBanner: false,
  //     home: Scaffold(
  //       backgroundColor: Colors.white,
  //       body: Text('Hi'),
  //       bottomNavigationBar: BottomNavigationBar(
  //       selectedItemColor: Colors.white,
  //       unselectedItemColor: Color.fromARGB(99, 255, 255, 255),
  //       backgroundColor: const Color.fromARGB(255, 255, 100, 64),
  //       currentIndex: currentIndex,
  //       type : BottomNavigationBarType.fixed,
        
  //       onTap: (index) => setState(()=>currentIndex= index),
  //       items: [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Home',
            
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.shopping_cart),
  //           label: 'Checkout',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.message),
  //           label: 'Chat',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.person),
  //           label: 'Profile',
  //         ),
  //       ],
   
        

  //     ),
      
  //   ),
    
  //   );
  // }
}