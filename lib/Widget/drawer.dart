import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'infocard.dart';
import 'slide_menu_ti;e.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final imageUrl =
    //     "https://cmsv2-assets.apptegy.net/uploads/2242/file/2131943/fb5a25a4-2153-4677-a1c5-a1677a80897c.png";
    return Drawer(
      
      child: Container(
        padding: const EdgeInsets.fromLTRB(2, 15, 0, 0),
        color: const Color(0xFF17203A),
        child: SafeArea(
          child: Column(
            children: [
              const InfoCard(
                name: "Smuggler",
                emailid: "rv736042@gmail.com",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text(
                  "Browser".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              // here the icon is rive assets because it's animated
              //  if you
              const SlideMenu(),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Divider(
                      color: Colors.white24,
                      height: 1,
                    ),
                  ),
                  ListTile(
                    // onTap: () {},
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      // child: RiveAnimation.asset(
                      //   "assets/images/home.gif",
                      //   artboard: "Home",
                      // ),
                      child: Icon(
                        CupertinoIcons.bell,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Bell",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Divider(
                      color: Colors.white24,
                      height: 1,
                    ),
                  ),
                  ListTile(
                    // onTap: () {},
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      // child: RiveAnimation.asset(
                      //   "assets/images/home.gif",
                      //   artboard: "Home",
                      // ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Divider(
                      color: Colors.white24,
                      height: 1,
                    ),
                  ),
                  ListTile(
                    // onTap: () {},
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      // child: RiveAnimation.asset(
                      //   "assets/images/home.gif",
                      //   artboard: "Home",
                      // ),
                      child: Icon(
                        CupertinoIcons.profile_circled,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: Divider(
                      color: Colors.white24,
                      height: 1,
                    ),
                  ),
                  ListTile(
                    // onTap: () {},
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      // child: RiveAnimation.asset(
                      //   "assets/images/home.gif",
                      //   artboard: "Home",
                      // ),
                      child: Icon(
                        CupertinoIcons.timer,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Timer",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text(
                  "About Us".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
