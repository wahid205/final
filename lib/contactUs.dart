// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class contactUs extends StatelessWidget {
  const contactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        body: Container(
          child: Column(children: [
            Stack(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Container(color: Colors.black)),
                Opacity(
                  opacity: 0.7,
                  child: Image(
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/cs.png"),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.arrow_back_ios_new),
                      color: Color.fromARGB(255, 255, 255, 255),
                      iconSize: 30,
                      padding: EdgeInsets.all(55),
                    ),
                    Text(
                      "Contact us",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Karla',
                          fontWeight: FontWeight.w900),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "we will speedily and kindly answer any question you may have about our online sales service right here",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(50, 95, 115, 1)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                    ),
                    child: Container(
                      width: 200,
                      child: Text(
                        "Chat",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(50, 95, 115, 1)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                    ),
                    child: Container(
                      width: 200,
                      child: Text(
                        "Send Email",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
