// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Products.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';

class Cart extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const Cart({
    super.key,
  });
  // ignore: non_constant_identifier_names
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int item = 0;
  int item2 = 0;
  String value = '';
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 120, 129),
      appBar: AppBar(
        elevation: 25,
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        // ignore: prefer_const_constructors
        title: Text(
          "Your Cart",
          softWrap: true,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "myfont",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: classInstancee.CartList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Image.asset(
                                    "${classInstancee.CartList[index]}",
                                    width: 120,
                                    height: double.infinity,
                                  ),
                                  SizedBox(
                                    width: 220,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        TextButton(
                                          child: Text(
                                            'Remove',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 100, 120, 129),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() async {
                                              classInstancee.remove(
                                                  classInstancee
                                                      .CartList[index]);
                                              value = classInstancee.SumPrice()
                                                  .toString();
                                            });
                                          },
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 20, 0, 0),
                                          child: Text("Product name : Bed",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 0, 0),
                                          child: Text("EGP before/after : ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 8, 0, 0),
                                          child: Text("Color:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: SliderButton(
            action: () {
              Navigator.pushNamed(context, "/favourites");
            },
            label: Text(
              "Add from wishlist",
              style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            icon: Icon(
              Icons.arrow_forward,
              size: 40,
            ),
            width: 230,
            height: 70,
            radius: 10,
            highlightedColor: Colors.white,
            baseColor: Color.fromARGB(255, 59, 105, 146),
          )),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  blurRadius: 4,
                ),
              ],
            ),
            child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.slideshow),
                    hintText: ("Enter your promo"),
                    border: InputBorder.none)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total amount ",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                TextButton(
                    onPressed: () {
                      setState(() async {
                        await classInstancee.SumPrice();
                        value = classInstancee.SumPrice();
                      });
                    },
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/PaymentConfirmation");
              },
              child: Text(
                "Check out",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 50, 95, 116)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
