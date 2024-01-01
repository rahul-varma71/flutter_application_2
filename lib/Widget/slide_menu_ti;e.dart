// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SlideMenu extends StatelessWidget {
  const SlideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        Column(
          children: [
            ListTile(
              //  onTap: () {},
              leading: SizedBox(
                height: 34,
                width: 34,
                // child: RiveAnimation.asset(
                //   "assets/images/test_icon.riv",
                //   artboard: "HOME",
                //   // onInit: (artboard) {
                //   //  its animated part
                //   // },
                // ),
                child: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  //   artboard:"HOME",
                  //   onInit:(artboard){
                  // },
                ),
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
