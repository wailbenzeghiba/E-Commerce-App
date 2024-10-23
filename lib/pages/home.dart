// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:e_commerce_app/pages/details.dart';
import 'package:e_commerce_app/widgets/Support_Widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool jeans = false;
  bool shirt = false;
  bool cap = false;
  bool shoe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(
        top: 50,
        left: 10,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /*hello user*/
            Text("Hello Wail,", style: Appwidget.boldTextFieldStyle()),
            /*end hello user*/
            /*shopping cart icon*/
            Container(
              margin: EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )
            /*end shopping cart icon*/
          ],
        ),
        const SizedBox(
          height: 40.0,
        ),
        /*Header Text*/
        Text(
          "Great fits",
          style: Appwidget.HeaderTextFieldStyle(),
        ),
        /* end Header Text*/
        /*Header Text Description*/
        Text(
          "Discover Our Best Sellers",
          style: Appwidget.LightTextFieldStyle(),
        ),
        /*end Header Text Description*/
        SizedBox(
          height: 20.0,
        ),
        /*Category items*/
        Container(margin: EdgeInsets.only(right: 10), child: showitem()),
        /*End Category items*/
        SizedBox(
          height: 40,
        ),
        /*Horizontal products 1*/
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()));
                },
                child: Container(
                  margin: EdgeInsets.all(4),
                  child: Material(
                    elevation: 9,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/firstProduct.png',
                            height: 150,
                            width: 150,
                            fit: BoxFit.scaleDown,
                          ),
                          Text(
                            'Product Name',
                            style: Appwidget.SemiBoldTextFieldStyle(),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Description',
                            style: Appwidget.LightTextFieldStyle(),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "\$25",
                            style: Appwidget.boldTextFieldStyle(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              /*second product*/
              Container(
                margin: EdgeInsets.all(4),
                child: Material(
                  elevation: 9,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/secondProduct.png',
                          height: 150,
                          width: 150,
                          fit: BoxFit.scaleDown,
                        ),
                        Text(
                          'Product Name',
                          style: Appwidget.SemiBoldTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Description',
                          style: Appwidget.LightTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "\$25",
                          style: Appwidget.boldTextFieldStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              /* Second Product End */
              /* third Product */
              Container(
                margin: EdgeInsets.all(4),
                child: Material(
                  elevation: 9,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/thirdProduct.png',
                          height: 150,
                          width: 150,
                          fit: BoxFit.scaleDown,
                        ),
                        Text(
                          'Product Name',
                          style: Appwidget.SemiBoldTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Description',
                          style: Appwidget.LightTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "\$25",
                          style: Appwidget.boldTextFieldStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              /*third product end*/
            ],
          ),
        ),
        /*End Horizontal products 1*/
        SizedBox(
          height: 25,
        ),
        /*Horizontal products 2*/
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Material(
            elevation: 9,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(4),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                /*Image*/
                Image.asset(
                  "images/fourthProduct.png",
                  height: 120,
                  width: 120,
                  fit: BoxFit.scaleDown,
                ),
                /*Image End*/
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      /*Product Name*/
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "Product Name",
                          style: Appwidget.SemiBoldTextFieldStyle(),
                        ),
                      ),
                      /*Product Name End*/
                      /*description*/
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "Description",
                          style: Appwidget.LightTextFieldStyle(),
                        ),
                      ),
                      /*Description End*/
                      /*Price*/
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "\$25",
                          style: Appwidget.boldTextFieldStyle(),
                        ),
                      ),
                    ],
                  ),
                ),
                /* End First Product */
                /* second product */

                /* End second product */
              ]),
            ),
          ),
        )
        /*end Horizontal products 2*/
      ]),
    ));
  }

  /*Show Items Widget*/

  Widget showitem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            jeans = true;
            shirt = false;
            cap = false;
            shoe = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: jeans ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Container(
                  child: Image.asset(
                'images/jeans.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: jeans ? Colors.white : Colors.black,
              )),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            jeans = false;
            shirt = true;
            cap = false;
            shoe = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: shirt ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Container(
                  child: Image.asset(
                'images/shirt.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: shirt ? Colors.white : Colors.black,
              )),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            jeans = false;
            shirt = false;
            cap = true;
            shoe = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: cap ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Container(
                  child: Image.asset(
                'images/cap.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: cap ? Colors.white : Colors.black,
              )),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            jeans = false;
            shirt = false;
            cap = false;
            shoe = true;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: shoe ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Container(
                  child: Image.asset(
                'images/shoe.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: shoe ? Colors.white : Colors.black,
              )),
            ),
          ),
        ),
      ],
    );
  }
}
