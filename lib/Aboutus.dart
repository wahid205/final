

import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.arrow_back),
        title: Text('About Us'),
      ),
      body: Stack(children: [
        Container(
          child: Image.asset(
            'assets/Chair.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(10),
          child: Center(
            child: Text(
              'Were an Egyptian furniture local company based in Damietta. We aspire to produce a high  quality pieces with affordable prices that gives spirit to your home making it comfortable and elegant',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20, fontFamily:"myfont",), textAlign: TextAlign.center,
            ),
          ),
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(70, 100, 120, 129),
          ),
        ),
      ]),
    );
  }
}
