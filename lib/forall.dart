
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ItemDetails.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/pages/Products.dart';
import 'package:provider/provider.dart';

class beds extends StatefulWidget {
  const beds({Key? key}) : super(key: key);

  @override
  State<beds> createState() => _bedsState();
}

class _bedsState extends State<beds> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beds',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.CartList.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Cart()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
                Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "${classInstancee.SumPrice()}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Beds.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailbed(
                                product: '${Beds[index]}', index: index, price: BedPrice[index],
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        '${Beds[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 250,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text('${BedPrice[index]} Pound',style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 3, 39, 56),
                        ),))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class sofas extends StatefulWidget {
  const sofas({Key? key}) : super(key: key);

  @override
  State<sofas> createState() => _sofasState();
}

class _sofasState extends State<sofas> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        title: const Text(
          'Sofas',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.CartList.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "${classInstancee.SumPrice()}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Sofas.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailsofas(
                                product: '${Sofas[index]}',index: index,
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        '${Sofas[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text('${SofaPrice[index]} Pound',style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 3, 39, 56),
                        ),))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class mirror extends StatefulWidget {
  const mirror({super.key});

  @override
  State<mirror> createState() => _mirrorState();
}

class _mirrorState extends State<mirror> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        title: const Text(
          'Mirror',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.CartList.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
                Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "${classInstancee.SumPrice()}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Mirrors.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ItemDetailsmirror(product: '${Mirrors[index]}',index: index,)));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        '${Mirrors[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text('${MirrorPrice[index]} Pound',style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 3, 39, 56),
                        ),))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        title: const Text(
          'Drawers',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.CartList.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
                Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "${classInstancee.SumPrice()}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
          
            ],
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Drawers.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailsofas(
                                product: '${Drawers[index]}',index: index,
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        '${Drawers[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text('${DrawerPrice[index]} Pound',style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 3, 39, 56),
                        ),))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class living extends StatefulWidget {
  const living({super.key});
  @override
  State<living> createState() => _livingState();
}

class _livingState extends State<living> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        title: const Text(
          'Living Room',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.CartList.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "${classInstancee.SumPrice()}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Living.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailsliving(
                                product: '${Living[index]}',index: index,
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        '${Living[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text('${LivingPrice[index]} Pound',style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 3, 39, 56),
                        ),))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class dining extends StatefulWidget {
  const dining({super.key});
  @override
  State<dining> createState() => _diningState();
}

class _diningState extends State<dining> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        title: const Text(
          'Living Room',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.CartList.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "${classInstancee.SumPrice()}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: DiningRooms.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailsliving(
                                product: '${DiningRooms[index]}',index: index,
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        '${DiningRooms[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text('${DiningPrice[index]} Pound',style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 3, 39, 56),
                        ),))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class chair extends StatefulWidget {
  const chair({super.key});
  @override
  State<chair> createState() => _chairState();
}

class _chairState extends State<chair> {
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        title: const Text(
          'Chair',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                        child: Text(
                          "${classInstancee.CartList.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "${classInstancee.SumPrice()}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Chairs.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ItemDetailsliving(
                                product: '${Chairs[index]}',index: index,
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        '${Chairs[index]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Text('${ChairPrice[index]} Pound',style: TextStyle(
                          fontSize: 20,
                          color:  Color.fromARGB(255, 3, 39, 56),
                        ),))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
