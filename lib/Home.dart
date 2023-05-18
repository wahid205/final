import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';


import 'Aboutus.dart';
import 'Categories.dart';
import 'Profile.dart';
import 'Shared/getData_Firestore.dart';
import 'blog.dart';
import 'cart.dart';
import 'contactUs.dart';
import 'favourites.dart';
import 'forall.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final credential = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('Users');

  @override
  final _pages = [
    Home(),
    favourite(),
    AbadyApp(),
    Cart(),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
      ),
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Ink(
          color: Color.fromARGB(255, 100, 120, 129),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Galaxy.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    GetUserImage(
                      documentId: credential!.uid,
                      size: 40,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: GetFullname(
                          documentId: credential!.uid, colour: Colors.white),
                    ),
                  ],
                ),
              ),
              Admin(
                documentId: credential!.uid,
              ),
              ListTile(
                leading: Icon(Icons.category, color: Colors.black),
                title: const Text('Categories',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Categories())));
                },
              ),
              ListTile(
                leading: Icon(Icons.call, color: Colors.black),
                title: const Text('Contact us',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => contactUs()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.black),
                title: const Text(
                  'Blog',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Blog()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.format_quote_outlined, color: Colors.black),
                title: const Text('About us',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Aboutus()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.black),
                title: const Text('Log Out',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 100, 120, 129),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        // ignore: prefer_const_literals_to_create_immutables
        child: SingleChildScrollView(
          child: Column(

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "What are you looking for ?",
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: "myfont",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 43,
                    width: 300,
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
                      prefixIcon: Icon(Icons.search),
                      hintText: "search",
                      border: InputBorder.none,
                    )),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('Dining Room',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontFamily: "myfont",
                                fontWeight: FontWeight.bold,
                              )),
                          IconButton(
                            icon: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                    "assets/images/DiningRoom.jpg")),
                            iconSize: 230,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dining()));
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Living Room',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontFamily: "myfont",
                                fontWeight: FontWeight.bold,
                              )),
                          IconButton(
                            icon: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                    "assets/images/LivingRoom.jpg")),
                            iconSize: 230,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => living()));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Popular products",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: IconButton(
                          icon: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/Chair.jpg')),
                          iconSize: 200,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => chair()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: IconButton(
                          icon: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/Bedroom.jpg')),
                          iconSize: 200,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => beds()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: IconButton(
                          icon: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/Cupboard.jpg')),
                          iconSize: 200,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => drawer()));
                          },
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
