import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widget/drawer.dart';
import 'package:flutter_application_2/models/cateloge.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Catelog App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatelogModel.items != null && CatelogModel.items.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    final Item = CatelogModel.items[index];
                    return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        child: GridTile(child: Image.network(Item.image)));
                  },
                  itemCount: CatelogModel.items.length,
                )
              : const Center(
                  child: CircularProgressIndicator(),
                )),


                // bottom navigator bar
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
