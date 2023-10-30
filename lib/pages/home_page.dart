import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catelog App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
              backgroundColor: Color(0xFF17203A)),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded),
              label: 'Categories',
              backgroundColor: Color(0xFF17203A)),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded),
              label: 'Notification',
              backgroundColor: Color(0xFF17203A)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_rounded),
              label: 'Account',
              backgroundColor: Color(0xFF17203A)),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              label: 'Cart',
              backgroundColor: Color(0xFF17203A)),
        ],
      ),
      drawer: MyDrawer(
          // child: Padding(
          //   padding: EdgeInsets.all(15),
          //   child: Text(
          //     " My Category",
          //     textAlign: TextAlign.center,
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          ),
    );
  }
}
