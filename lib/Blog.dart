import 'package:flutter/material.dart';



class Blog extends StatefulWidget {
  const Blog();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<Blog> createState() => _Blog();
}

class _Blog extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BLOG"),
          centerTitle: true,
          leading: const IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white70,
              ),
              onPressed: null,
              iconSize: 40,
              color: Colors.white70),
          backgroundColor: Color(0xff647881),
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpeg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Center(
                  child: SingleChildScrollView(
                    child: Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 400.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff92abb0).withOpacity(0.5)),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Flexible(
                                        flex: 4,
                                        child: Container(
                                          width: 150.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/garden.jpeg"),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 70),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Garden Furniture Trends 2021",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                           
                                          
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 400.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff92abb0).withOpacity(0.5)),
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/how.jpeg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 4,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 70),
                                            child: Column(
                                              children: const [
                                                Flexible(
                                                  child: Text(
                                                    "How to maintain your outdoor patio furniture?",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  flex: 4,
                                                ),
                                                SizedBox(height: 20),
                                               
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 400.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff92abb0).withOpacity(0.5)),
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/trends.jpeg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 4,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 50),
                                            child: Column(
                                              children: const [
                                                Flexible(
                                                  child: Text(
                                                    "2021 Color Trends to Take Your Home Decor to The Next level",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  flex: 4,
                                                ),
                                                SizedBox(height: 20),
                                             
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 400.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff92abb0).withOpacity(0.5)),
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/garden.jpeg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 3,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 70),
                                            child: Column(
                                              children: const [
                                                Flexible(
                                                  child: Text(
                                                    "Garden Furniture Trends 2021",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  flex: 4,
                                                ),
                                                SizedBox(height: 30),
                                               
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
