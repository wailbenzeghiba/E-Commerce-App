// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:curved_navigation_bar/curved_navigation_bar.dart";
import "package:e_commerce_app/pages/profile.dart";
import "package:e_commerce_app/pages/wallet.dart";
import "package:flutter/material.dart";
import "package:e_commerce_app/pages/home.dart";
import 'package:e_commerce_app/pages/order.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int currentTagIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homePage;
  late Profile profile;
  late Wallet wallet;
  late Order order;

  @override
  void initState() {
    homePage = Home();
    order = Order();
    wallet = Wallet();
    profile = Profile();
    pages = [homePage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 450),
          onTap: (index) {
            setState(() {
              currentTagIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.wallet,
              color: Colors.white,
            ),
            Icon(
              Icons.person_2_outlined,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTagIndex],
    );
  }
}
