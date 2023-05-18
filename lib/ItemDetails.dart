// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Products.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/pages/Products.dart';

import 'cart.dart';

// ignore: must_be_immutable

class ItemDetailsofas extends StatefulWidget {
  String product;
  int index;
  ItemDetailsofas({super.key, required this.product, required this.index});
  @override
  State<ItemDetailsofas> createState() => _ItemDetailsofas();
}

class _ItemDetailsofas extends State<ItemDetailsofas> {
  bool favorite = false;
  int item = 0;

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(()async {
                    classInstancee.add(Sofas[widget.index]);
                    classInstancee.CartPrice.add(SofaPrice[widget.index]);
                    await classInstancee.SumPrice();
                  });
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else {
                      item = 0;
                    }
                  });
                },
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.white70,
              ),
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (favorite == false) {
                        classInstancee.addFav(Sofas[widget.index]);
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Colors.white,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.ios_share_outlined),
                      color: Colors.white70,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ("Sofas"),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
              Container(
                   height: 200,
                  width: double.infinity,
                 decoration: BoxDecoration(
                 image: DecorationImage(
                 image: AssetImage(widget.product),
                  fit: BoxFit.cover),
                       ),
                       child: Stack(children: [
                        
                       ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                  child: Row(
                    children: [
                      Text(
                        "Elite sofa",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white70),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "This sofa looks like a 1980s century sofas "
                    "with perfect material from silk and wood",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}

class ItemDetailbed extends StatefulWidget {
  String product;
  int index;
  dynamic price;
  ItemDetailbed(
      {super.key, required this.product, required this.index, required price});
  @override
  State<ItemDetailbed> createState() => _ItemDetailbed();
}

class _ItemDetailbed extends State<ItemDetailbed> {
  bool favorite = false;
  int item = 0;

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() async {
                    classInstancee.add(Beds[widget.index]);
                    classInstancee.CartPrice.add(BedPrice[widget.index]);
                    await classInstancee.SumPrice();
                  });
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else {
                      item = 0;
                    }
                  });
                },
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.white70,
              ),
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (favorite == false) {
                        classInstancee.addFav(Sofas[widget.index]);
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Colors.white,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.ios_share_outlined),
                      color: Colors.white70,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ("Bed"),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 26, 67, 78),
                  height: MediaQuery.of(context).size.height * 0.41,
                  child: ModelViewer(
                    src: widget.product,
                    alt: "A 3D model of an astronaut",
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                  child: Row(
                    children: [
                      Text(
                        "Elite sofa",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white70),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${BedPrice[widget.index]} Pound",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white70),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "This sofa looks like a 1980s century sofas "
                    "with perfect material from silk and wood",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}

class ItemDetailsmirror extends StatefulWidget {
  String product;
  int index;
  ItemDetailsmirror({super.key, required this.product, required this.index});

  @override
  State<ItemDetailsmirror> createState() => _ItemDetailsmirrorState();
}

class _ItemDetailsmirrorState extends State<ItemDetailsmirror> {
  bool favorite = false;
  int item = 0;
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() async {
                    classInstancee.add(Mirrors[widget.index]);
                    classInstancee.CartPrice.add(MirrorPrice[widget.index]);
                    await classInstancee.SumPrice();
                  });
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else {
                      item = 0;
                    }
                  });
                },
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.white70,
              ),
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (favorite == false) {
                        classInstancee.addFav(Sofas[widget.index]);
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Colors.white,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.ios_share_outlined),
                      color: Colors.white70,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ("Mirror"),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 26, 67, 78),
                  height: MediaQuery.of(context).size.height * 0.41,
                  child: ModelViewer(
                    src: widget.product,
                    alt: "A 3D model of an astronaut",
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                  child: Row(
                    children: [
                      Text(
                        "Elite sofa",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white70),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "This sofa looks like a 1980s century sofas "
                    "with perfect material from silk and wood",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}

class ItemDetailsdrawer extends StatefulWidget {
  String product;
  int index;
  ItemDetailsdrawer({super.key, required this.product, required this.index});

  @override
  State<ItemDetailsdrawer> createState() => _ItemDetailsdrawerState();
}

class _ItemDetailsdrawerState extends State<ItemDetailsdrawer> {
  bool favorite = false;
  int item = 0;
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() async {
                    classInstancee.add(Drawers[widget.index]);
                    classInstancee.CartPrice.add(DrawerPrice[widget.index]);
                    await classInstancee.SumPrice();
                  });
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else {
                      item = 0;
                    }
                  });
                },
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.white70,
              ),
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (favorite == false) {
                        classInstancee.addFav(Sofas[widget.index]);
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Colors.white,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.ios_share_outlined),
                      color: Colors.white70,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ("Drawer"),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 26, 67, 78),
                  height: MediaQuery.of(context).size.height * 0.41,
                  child: ModelViewer(
                    src: widget.product,
                    alt: "A 3D model of an astronaut",
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                  child: Row(
                    children: [
                      Text(
                        "Elite sofa",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white70),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "This sofa looks like a 1980s century sofas "
                    "with perfect material from silk and wood",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}

class ItemDetailsliving extends StatefulWidget {
  String product;
  int index;
  ItemDetailsliving({super.key, required this.product, required this.index});

  @override
  State<ItemDetailsliving> createState() => _ItemDetailslivingState();
}

class _ItemDetailslivingState extends State<ItemDetailsliving> {
  bool favorite = false;
  int item = 0;
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(()  {
                    classInstancee.add(Living[widget.index]);
                    classInstancee.CartPrice.add(LivingPrice[widget.index]);
                     classInstancee.SumPrice();
                  });
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else {
                      item = 0;
                    }
                  });
                },
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.white70,
              ),
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (favorite == false) {
                        classInstancee.addFav(Sofas[widget.index]);
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Colors.white,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.ios_share_outlined),
                      color: Colors.white70,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ("Living Room"),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 26, 67, 78),
                  height: MediaQuery.of(context).size.height * 0.41,
                  child: ModelViewer(
                    src: widget.product,
                    alt: "A 3D model of an astronaut",
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                  child: Row(
                    children: [
                      Text(
                        "Elite sofa",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white70),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "This sofa looks like a 1980s century sofas "
                    "with perfect material from silk and wood",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}

class ItemDetailsdining extends StatefulWidget {
  String product;
  int index;
  ItemDetailsdining({super.key, required this.product, required this.index});

  @override
  State<ItemDetailsdining> createState() => _ItemDetailsdiningState();
}

class _ItemDetailsdiningState extends State<ItemDetailsdining> {
  bool favorite = false;
  int item = 0;
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() async {
                    classInstancee.add(DiningRooms[widget.index]);
                    classInstancee.CartPrice.add(DiningPrice[widget.index]);
                    await classInstancee.SumPrice();
                  });
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else {
                      item = 0;
                    }
                  });
                },
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.white70,
              ),
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (favorite == false) {
                        classInstancee.addFav(Sofas[widget.index]);
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Colors.white,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.ios_share_outlined),
                      color: Colors.white70,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ("Dining Room"),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 26, 67, 78),
                  height: MediaQuery.of(context).size.height * 0.41,
                  child: ModelViewer(
                    src: widget.product,
                    alt: "A 3D model of an astronaut",
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                  child: Row(
                    children: [
                      Text(
                        "Elite sofa",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white70),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "This sofa looks like a 1980s century sofas "
                    "with perfect material from silk and wood",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}

class ItemDetailschair extends StatefulWidget {
  String product;
  int index;
  ItemDetailschair({super.key, required this.product, required this.index});

  @override
  State<ItemDetailschair> createState() => _ItemDetailschairState();
}

class _ItemDetailschairState extends State<ItemDetailschair> {
  bool favorite = false;
  int item = 0;
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        bottomSheet: Container(
          // ignore: sort_child_properties_last
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() async {
                    classInstancee.add(Chairs[widget.index]);
                    classInstancee.CartPrice.add(ChairPrice[widget.index]);
                    await classInstancee.SumPrice();
                  });
                },
                child: const Text("ADD to cart"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff325f74),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (item > 0) {
                      item--;
                    } else {
                      item = 0;
                    }
                  });
                },
                icon: Icon(Icons.remove_circle_outline),
                color: Colors.white70,
              ),
              Text(
                "$item",
                style: TextStyle(color: Colors.white70),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    item++;
                  });
                },
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white70,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (favorite == false) {
                        classInstancee.addFav(Sofas[widget.index]);
                        favorite = true;
                      } else {
                        favorite = false;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: favorite ? Colors.red : Colors.white,
                  )),
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff24292f)),
          height: 80,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.ios_share_outlined),
                      color: Colors.white70,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  textAlign: TextAlign.center,
                  ("Dining Room"),
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 26, 67, 78),
                  height: MediaQuery.of(context).size.height * 0.41,
                  child: ModelViewer(
                    src: widget.product,
                    alt: "A 3D model of an astronaut",
                    ar: true,
                    autoRotate: true,
                    cameraControls: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30, bottom: 7),
                  child: Row(
                    children: [
                      Text(
                        "Elite sofa",
                        style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white70),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "This sofa looks like a 1980s century sofas "
                    "with perfect material from silk and wood",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ]),
            ]),
          ),
        ));
  }
}
