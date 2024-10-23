// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_null_comparison, unnecessary_new, use_build_context_synchronously, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/pages/bottomNavBar.dart';
import 'package:e_commerce_app/pages/login.dart';
import 'package:e_commerce_app/widgets/Support_Widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "";
  String password = "";
  String name = "";

  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  // ignore: unused_field
  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password != null) {
      try {
        // ignore: unused_local_variable
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BotNavBar()));

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
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Registered Successfully",
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
              )),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          width: 350,
        ));
        Future.delayed(Duration(milliseconds: 500));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BotNavBar()));
      } on FirebaseException catch (e) {
        if (e.code == 'weak-password') {
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
                    SizedBox(
                      width: 90,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Weak Password!",
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
                )),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            elevation: 0,
            width: 350,
          ));
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Container(
                padding: EdgeInsets.all(10),
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 171, 171),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Email Already in Use!",
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
                )),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            elevation: 0,
            width: 350,
          ));
        }
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
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color.fromARGB(255, 241, 238, 207),
                    Color.fromARGB(255, 240, 234, 176),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const Text(""),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: SingleChildScrollView(
                reverse: true,
                // ignore: sort_child_properties_last
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
                    const SizedBox(
                      height: 25,
                    ),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 1.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: Text(
                                  "Sign Up",
                                  style: Appwidget.HeaderTextFieldStyle(),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                controller: nameController,
                                // ignore: body_might_complete_normally_nullable
                                validator: (value) {
                                  // ignore: unrelated_type_equality_checks
                                  if (value == null || value == value.isEmpty) {
                                    return 'please Enter UserName';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: 'UserName',
                                    prefixIcon: Icon(Icons.person_2_outlined)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  // ignore: unrelated_type_equality_checks
                                  if (value == null || value == value.isEmpty) {
                                    return 'Please Enter Email';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.email)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  // ignore: unrelated_type_equality_checks
                                  if (value == null || value == value.isEmpty) {
                                    return 'please Enter UserName';
                                  } else {
                                    return null;
                                  }
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    prefixIcon: Icon(Icons.password)),
                              ),
                              const SizedBox(
                                height: 0,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  if (_formkey.currentState!.validate()) {
                                    email = emailController.text;
                                    name = nameController.text;
                                    password = passwordController.text;
                                    setState(() {});
                                  }
                                  registration();
                                },
                                child: Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.black),
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.only(top: 50),
                                  child: const Text(
                                    'Sign Up',
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
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Already Have An Account? Login!",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
