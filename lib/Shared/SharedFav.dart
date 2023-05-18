import 'package:flutter/material.dart';
import 'package:flutter_application_1/Shared/PopularProdcut.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_application_1/pages/Products.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';



class Kanbti extends StatefulWidget {
  const Kanbti({super.key});

  @override
  State<Kanbti> createState() => _KanbtiState();
}

class _KanbtiState extends State<Kanbti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourites',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        elevation: 0.9,
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          color: Color.fromARGB(255, 100, 120, 129),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 220),
                child: Text(
                  'You do not have favourites',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "abady",
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Container(
                width: 220,
                child: Text(
                  'take a look at a selection we have create to you',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                margin: EdgeInsets.fromLTRB(0, 12, 0, 110),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(15, 0, 0, 12),
                child: Text(
                  'You might be interested in',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "abady",
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PopularProdcut(imagepath: "assets/images/img5.jpg"),
                    PopularProdcut(imagepath: "assets/images/img6.jpg"),
                    PopularProdcut(imagepath: "assets/images/img7.jpg")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class fav extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const fav({
    super.key,
  });
  // ignore: non_constant_identifier_names
  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
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
          "Your Favourite",
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
                  itemCount: classInstancee.Favourite.length,
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
                                    "${classInstancee.Favourite[index]}",
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
                                              classInstancee.removeFav(
                                                  classInstancee
                                                      .Favourite[index]);
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
          
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.fromLTRB(15, 0, 0, 12),
                child: Text(
                  'You might be interested in',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "abady",
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PopularProdcut(imagepath: "assets/images/img5.jpg"),
                    PopularProdcut(imagepath: "assets/images/img6.jpg"),
                    PopularProdcut(imagepath: "assets/images/img7.jpg")
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
