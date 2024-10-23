// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, empty_statements

import 'package:e_commerce_app/widgets/Support_Widget.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  int totalPrice = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*Back Arrow*/
      body: Container(
        margin: EdgeInsets.only(
          top: 50,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            /*Back Arrow End*/
            /* Image */
            Container(
              margin: EdgeInsets.only(top: 30, right: 15, bottom: 30),
              child: Material(
                elevation: 3,
                child: Container(
                  child: Image.asset(
                    'images/firstProduct.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            /* Image End */
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /* product Name */
                    Text(
                      'Product Name',
                      style: Appwidget.SemiBoldTextFieldStyle(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    /*Product name End */
                    /* Product Description */
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Text(
                        'Small Description',
                        style: Appwidget.SemiBoldTextFieldStyle(),
                      ),
                    ),
                    /* Product Description End */
                  ],
                ),
                /* Order Number */
                /* Icon Remove */
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      a--;
                      totalPrice = totalPrice - 30;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Container(
                            padding: EdgeInsets.all(10),
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 247, 161, 161),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 98,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "minimum is 1!",
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
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                /* Icon Remove End */
                /* Number */
                Text(
                  a.toString(),
                  style: Appwidget.boldTextFieldStyle(),
                ),
                /* Number End */
                /* Icon Add */
                GestureDetector(
                  onTap: () {
                    a++;
                    totalPrice = totalPrice + 30;
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                /* Icon Add End */
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 55,
                ),
                Text(
                  'Small Description',
                  style: Appwidget.LightTextFieldStyle(),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total Price :',
                          style: Appwidget.boldTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$',
                              style: Appwidget.boldTextFieldStyle(),
                            ),
                            Text(
                              totalPrice.toString(),
                              style: Appwidget.boldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.black87,
                      child: Row(
                        children: [
                          Text(
                            'Add To Cart',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
