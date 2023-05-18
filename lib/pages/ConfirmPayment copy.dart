// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_application_1/main.dart';

const double pi = 3.1415926535897932;

class PaymentConfirmation extends StatelessWidget {
  const PaymentConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Confirm Payment',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 54, 67, 72),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {},
            color: Color.fromARGB(255, 255, 255, 255),
          )),
      body: Stack(children: [
        Image(
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          image: AssetImage("assets/images/Unsplashgk8x_xccdzg.png"),
        ),
        Column(
          children: [
            Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 0, bottom: 0, right: 0)),
            Container(
                padding: EdgeInsets.only(top: 0, left: 0, bottom: 0, right: 0),
                width: 359,
                height: 140,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(children: [
                                Text("Shipping",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 17)),
                                Container(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.production_quantity_limits,
                                  color: Colors.white,
                                ),
                              ]),
                            ),
                            Text("EGP 0.00",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 17.5))
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      color: Colors.white,
                      width: double.infinity,
                      height: 1,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5, left: 20, bottom: 0, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Marwan Ayman",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 14),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Address",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 14),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Text("City",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 14)),
                              ]),
                            ),
                            Container(
                              child: IconButton(
                                icon: const Icon(Icons.edit),
                                tooltip: 'tezk t5ena',
                                onPressed: () {},
                                color: Colors.white,
                              ),
                            )
                          ]),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                  color: Color.fromRGBO(54, 67, 72, 60),
                )),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 0, bottom: 0, right: 0),
              ),
            ),
            Container(
                width: 359,
                height: 110,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(children: [
                                Text("Payment",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 17)),
                                Container(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.payment,
                                  color: Colors.white,
                                ),
                              ]),
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      color: Colors.white,
                      width: double.infinity,
                      height: 1,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 5, left: 20, bottom: 0, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(children: [
                                Text(
                                  "Select a payment method",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 14),
                                ),
                              ]),
                            ),
                            Container(
                              child: IconButton(
                                icon: const Icon(Icons.edit),
                                tooltip: 'Tezk kbera',
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, "/PaymentMethod");
                                },
                                color: Colors.white,
                              ),
                            )
                          ]),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                  color: Color.fromRGBO(54, 67, 72, 60),
                )),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 0, bottom: 0, right: 0),
              ),
            ),
            Container(
                width: 359,
                height: 130,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(children: [
                                Text("Product",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 17)),
                                Container(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.discount,
                                  color: Colors.white,
                                ),
                              ]),
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      color: Colors.white,
                      width: double.infinity,
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 100),
                      ),
                      padding: EdgeInsets.only(
                          top: 0, left: 20, bottom: 0, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Column(children: [
                                Text(
                                  "0 item(s)",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 14),
                                ),
                              ]),
                            ),
                            Container(
                              // transform: Transform.rotate(double angle: -math.pi / 12.0),
                              child: IconButton(
                                icon: RotatedBox(
                                  quarterTurns: 3,
                                  child: Icon(Icons.arrow_back_ios_new),
                                ),
                                tooltip: 'tezk 7amra',
                                onPressed: () {},
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            )
                          ]),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                  color: Color.fromRGBO(54, 67, 72, 60),
                )),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 0, bottom: 0, right: 0),
              ),
            ),
            Container(
              width: 359,
              height: 80,
              child: Container(
                  width: 120,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(children: [
                    Container(
                        width: 290,
                        child: Text(
                          "Have you read and accept the privacy polices and purchase conditions?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14),
                        )),
                    MyStatefulWidget(),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21),
                    ),
                    color: Color.fromRGBO(54, 67, 72, 60),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 0, bottom: 0, right: 0),
              ),
            ),
            Container(
                width: 400,
                height: 157,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 1, 0, 0),
                                    fontSize: 17)),
                            Text("EGP 0.00",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 17))
                          ]),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Text("(Taxes included)",
                            style: TextStyle(
                                color: Color.fromARGB(255, 109, 109, 109),
                                fontSize: 17))),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(50, 95, 115, 1)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                      ),
                      child: Text(
                        "Confirm Payment",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.769),
                )),
          ],
        ),
      ]),
    );
  }
}
