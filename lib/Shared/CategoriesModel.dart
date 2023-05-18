import 'package:flutter/material.dart';

class categoriesModel extends StatelessWidget {
  final String type;
  final String imagepath;

  categoriesModel({
    Key? key,
    required this.type,
    required this.imagepath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(type,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontFamily: "myfont",
                fontWeight: FontWeight.bold,
              )),
          IconButton(
            icon: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(imagepath)),
            iconSize: 230,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

