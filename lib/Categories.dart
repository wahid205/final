import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/pages/item_list.dart';

import 'forall.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 120, 129),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    const BoxShadow(
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'What are you looking for ?')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Browse product",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View more",
                        style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                              Stack(alignment: Alignment(-0.7, 0.8), children: [
                            Image.asset('assets/images/bed1.jpg'),
                            Text('Beds',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 19, 61, 72),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'myfont'))
                          ])),
                      iconSize: 300,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>beds()));
                      },
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                              Stack(alignment: Alignment(-0.7, 0.8), children: [
                            Image.asset('assets/images/Chest of drawers.jpg'),
                            Text('Drawers',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 35, 114, 134),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'myfont'))
                          ])),
                      iconSize: 300,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>drawer()));
                      },
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                              Stack(alignment: Alignment(-0.7, 0.8), children: [
                            Image.asset('assets/images/mirrors.jpg'),
                            Text('Mirrors',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 19, 61, 72),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'myfont'))
                          ])),
                      iconSize: 300,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>mirror()));
                      },
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                              Stack(alignment: Alignment(-0.7, 0.8), children: [
                            Image.asset('assets/images/sofas.jpg'),
                            Text('Sofas',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 19, 61, 72),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'myfont'))
                          ])),
                      iconSize: 300,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>sofas()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
