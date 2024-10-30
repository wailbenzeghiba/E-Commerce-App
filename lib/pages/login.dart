// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, use_build_context_synchronously, unrelated_type_equality_checks

import 'package:e_commerce_app/pages/bottomNavBar.dart';
import 'package:e_commerce_app/pages/forgotPassword.dart';
import 'package:e_commerce_app/pages/signUp.dart';
import 'package:e_commerce_app/widgets/Support_Widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
  String password = "";
  final _formkey = GlobalKey<FormState>();

  TextEditingController useremailcontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();

  userLogin() async {
    if (!_formkey.currentState!.validate()) return;

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Container(
            padding: EdgeInsets.all(10),
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 44, 32, 32),
            ),
            child: Row(
              children: [
                SizedBox(width: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    Text(
                      "Logged in Successfully",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          width: 350,
        ));

        // Only immediate navigation after showing the snackbar
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BotNavBar()));
      }
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        String errorMessage = e.code == "user-not-found"
            ? "User Not Found!"
            : e.code == "wrong-password"
                ? "Wrong Password!"
                : "An error occurred.";

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Container(
            padding: EdgeInsets.all(10),
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 238, 137, 137),
            ),
            child: Row(
              children: [
                SizedBox(width: 90),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6),
                    Text(
                      errorMessage,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          width: 350,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color.fromARGB(255, 241, 238, 207),
                    const Color.fromARGB(255, 240, 234, 176),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              // ignore: sort_child_properties_last
              child: SingleChildScrollView(
                reverse: true,
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          'images/logo1.png',
                          height: 150,
                          width: 150,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 1.25,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                child: Text(
                                  "Sign in",
                                  style: Appwidget.HeaderTextFieldStyle(),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                controller: useremailcontroller,
                                validator: (value) {
                                  if (value == null || value == value.isEmpty) {
                                    return "please enter email";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.email)),
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              TextFormField(
                                controller: userpasswordcontroller,
                                validator: (value) {
                                  if (value == null || value == value.isEmpty) {
                                    return "please enter password";
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: Icon(Icons.password)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Forgotpassword()));
                                },
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child: Text('Forgot Password?',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (_formkey.currentState!.validate()) {
                                    setState(() {
                                      email = useremailcontroller.text;
                                      password = userpasswordcontroller.text;
                                    });
                                  }
                                  userLogin();
                                },
                                child: Container(
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.only(top: 50),
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Poppins1'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: Text(
                          "Don't Have An Account? Sign up!",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
            ),
          ],
        ),
      ),
    );
  }
}
