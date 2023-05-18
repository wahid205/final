// ignore: file_names
import 'package:flutter/material.dart';

List Beds = [
  'assets/images/Beds2.jpg',
  'assets/images/bed1.jpg',
  'assets/images/Bedroom.jpg'
];

List Living = ['assets/images/LivingRoom.jpg'];
List Mirrors = [
  'assets/images/mirrors.jpg',
];
List Chairs = [
  'assets/images/chair.jpeg',
  'assets/images/Chair.jpg',
  'assets/Chair.jpg'
];
List DiningRooms = ['assets/images/DiningRoom.jpg'];
List Drawers = [
  'assets/images/Chest of drawers.jpg',
  'assets/images/drawer1.jpg'
];
List Sofas = ['assets/images/Sofa1.jpg'];
List BedPrice = [100, 200, 300];
List SofaPrice = [550, 2500, 3000];
List ChairPrice = [1600, 300, 400];
List DrawerPrice = [600, 700, 500];
List MirrorPrice = [1000, 2000, 3000];
List LivingPrice = [10000, 20000, 30000];
List DiningPrice = [1000, 2000, 3000];

class CartItems extends ChangeNotifier {
  // ignore: non_constant_identifier_names
  final List CartList = [];
  final List CartPrice = [];
  final List Favourite = [];
  add(product) {
    CartList.add(product);
    notifyListeners();
  }

  remove(product) {
    CartList.remove(product);
    notifyListeners();
  }

  addFav(product) {
    Favourite.add(product);
    notifyListeners();
  }

  removeFav(product) {
    Favourite.remove(product);
    notifyListeners();
  }

  SumPrice() {
    int i = 0;
    dynamic sum = 0;
    for (i = 0; i < CartPrice.length; i++) {
      sum += CartPrice[i];
    }
    return sum;
  }

  SubtractPrice( dynamic product) {
    int i = 0;
    dynamic sub = 0;
    dynamic num = SumPrice();
    sub = num - product;
    return sub;
  }
}
