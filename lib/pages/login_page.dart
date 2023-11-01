// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../utills/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "assets/images/user2.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "W E L C O M E ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,

                    // fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            labelText: "Email",
                          ),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Email cannot be Empty";
                            }

                            return null;
                          },
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Password cannot be Empty";
                            } else if (value!.length < 6) {
                              return "Password length should be atleast 6";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Forget Password ?",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Material(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 100 : 10),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton ? 80 : 500,
                              height: 40,
                              alignment: Alignment.center,
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
                          ),
                        ),
                        Column(
                          children: const [
                            // Text(
                            //   "Get help logging in.",
                            //   style: TextStyle(
                            //       color: Colors.black,
                            //       fontSize: 13,
                            //       fontWeight: FontWeight.bold),
                            // ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    endIndent: 10,
                                  ),
                                ),
                                Text("OR"),
                                Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    indent: 10,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            // Row(
                            //   mainAxisSize: MainAxisSize.min,
                            //   children: [
                            //     Image.asset(
                            //       "assets/images/glogo.png",
                            //       fit: BoxFit.cover,
                            //       height: 20,
                            //       width: 20,
                            //     ),
                            //     SizedBox(
                            //       height: 10,
                            //     ),
                            //     Text(
                            //       " Log in with Google",
                            //       style: TextStyle(
                            //           color: Colors.blue,
                            //           fontSize: 13,
                            //           fontWeight: FontWeight.bold),
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: 80,
                            // ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  " Not a Member? ",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Register now",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
