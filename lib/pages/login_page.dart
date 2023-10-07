// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utills/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Username",
                        ),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      InkWell(
                        onTap: () async {
                          setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 80 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              shape: changeButton
                                  ? BoxShape.rectangle
                                  : BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(
                                  changeButton ? 10 : 20)),
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                        ),
                      )

                      // ElevatedButton(
                      //     child: Text("Login"),
                      //     style:
                      //         TextButton.styleFrom(minimumSize: Size(150, 40)),
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //     }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
