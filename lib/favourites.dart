import 'package:flutter/material.dart';
import 'package:flutter_application_1/Shared/PopularProdcut.dart';
import 'package:flutter_application_1/Shared/SharedFav.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_application_1/pages/Products.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';

class favourite extends StatelessWidget {
  const favourite({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<CartItems>(context);
    roadfav() {
      if (classInstancee.Favourite.isEmpty) {
        return Kanbti();
      } else {
        return fav();
      }
    }

    return roadfav();
  }
}
