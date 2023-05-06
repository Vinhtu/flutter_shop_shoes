import 'dart:developer';
import 'package:flutter/material.dart';

import '../screens/ProductsScreen.dart';
import '../screens/SubCategoryScreen.dart';

class GridTilesCategory extends StatelessWidget {
  String name;
  String imageUrl;
  String slug;
  bool fromSubProducts = true;

  GridTilesCategory({
    required this.name,
    required this.imageUrl,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (fromSubProducts) {
          print(slug);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductsScreen(
                      slug: "products/?page=1&limit=12&category=" + slug,
                      name: "name",
                    )),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategoryScreen(
                      slug: "slug",
                    )),
          );
        }
      },
      child: Card(
          color: Colors.white,
          elevation: 0,
          child: Center(
            child: Column(
              children: <Widget>[
                // Image.network(
                //   imageUrl,
                //   width: 100,
                //   height: 100,
                // ),
                Text("name",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Roboto-Light.ttf',
                        fontSize: 12))
              ],
            ),
          )),
    );
  }
}
