import 'package:flutter/material.dart';

class PopularProdcut extends StatelessWidget {
  final String imagepath;
  const PopularProdcut({Key? key, required this.imagepath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: IconButton(
        icon: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(imagepath)),
        iconSize: 200,
        onPressed: () {}
      )  );
  }
}
