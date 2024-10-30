import 'package:e_commerce_app/widgets/Support_Widget.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        margin: const EdgeInsets.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: Text(
                    "Wallet",
                    style: Appwidget.HeaderTextFieldStyle(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(74, 220, 219, 245),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  const Icon(
                    Icons.wallet,
                    size: 50,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Wallet",
                            style: Appwidget.boldTextFieldStyle(),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // ignore: prefer_adjacent_string_concatenation
                          Text("\$" + "100",
                              style: Appwidget.HeaderTextFieldStyle()),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Add Money",
                style: Appwidget.SemiBoldTextFieldStyle(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE9E2E2)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "100 da",
                        style: Appwidget.SemiBoldTextFieldStyle(),
                      )),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE9E2E2)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "500 da",
                        style: Appwidget.SemiBoldTextFieldStyle(),
                      )),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE9E2E2)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "1000 da",
                        style: Appwidget.SemiBoldTextFieldStyle(),
                      )),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 250, 220, 220)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "2000 da",
                        style: Appwidget.SemiBoldTextFieldStyle(),
                      )),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE9E2E2)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "5000 da",
                        style: Appwidget.SemiBoldTextFieldStyle(),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
