import 'package:flutter/material.dart';

class PaymentData extends StatelessWidget {
  const PaymentData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add New Card",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, "/PaymentMethod");
                      }),
                      icon: Icon(Icons.close))
                ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Card Number",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: (InputDecoration(
                        hintText: "Enter 12 digit card number",
                        hintStyle: TextStyle(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 202, 202, 202)),
                            borderRadius: BorderRadius.circular(16)),
                      ))),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Valid Thru",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(children: [
                          Container(
                            width: 110,
                            // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: TextField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: (InputDecoration(
                                  hintText: "Month",
                                  hintStyle: TextStyle(),
                                  suffixIcon: RotatedBox(
                                    quarterTurns: 3,
                                    child: Icon(Icons.arrow_back_ios_new),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 202, 202, 202)),
                                      borderRadius: BorderRadius.circular(16)),
                                ))),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            width: 110,
                            // padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: TextField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                decoration: (InputDecoration(
                                  hintText: "Year",
                                  hintStyle: TextStyle(),
                                  suffixIcon: RotatedBox(
                                    quarterTurns: 3,
                                    child: Icon(Icons.arrow_back_ios_new),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 202, 202, 202)),
                                      borderRadius: BorderRadius.circular(16)),
                                ))),
                          )
                        ]),
                      )
                    ]),
                  ),
                  Container(
                    width: 90,
                    child: Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "CVV",
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: TextField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: (InputDecoration(
                              hintText: "CVV",
                              hintStyle: TextStyle(),
                              suffixIcon: Icon(Icons.visibility_off),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(255, 202, 202, 202)),
                                  borderRadius: BorderRadius.circular(16)),
                            ))),
                      )
                    ]),
                  )
                ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Card Holder's Name",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: (InputDecoration(
                        hintText: "Name in Card",
                        hintStyle: TextStyle(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 202, 202, 202)),
                            borderRadius: BorderRadius.circular(16)),
                      ))),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 150),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(50, 95, 115, 1)),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
              ),
              child: Text(
                "Save card and Proceed",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
