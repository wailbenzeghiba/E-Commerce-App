// ignore_for_file: must_call_super, avoid_unnecessary_containers

import 'package:e_commerce_app/pages/login.dart';
import 'package:e_commerce_app/widgets/Support_Widget.dart';
import 'package:e_commerce_app/widgets/content_model.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Image.asset(
                          contents[i].image,
                          height: 450,
                          width: MediaQuery.of(context).size.width / 1.2,
                          fit: BoxFit.scaleDown,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          contents[i].title,
                          style: Appwidget.HeaderTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          contents[i].Description,
                          style: Appwidget.LightTextFieldStyle(),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              }
              _controller.nextPage(
                  duration: const Duration(microseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 131, 104),
                  borderRadius: BorderRadius.circular(20)),
              height: 60,
              margin: const EdgeInsets.all(40),
              width: double.infinity,
              child: Center(
                child: Text(
                  currentIndex == contents.length - 1 ? "Start" : "Next",
                  style: Appwidget.SemiBoldTextFieldStyle(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 18 : 7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.blueGrey),
    );
  }
}
