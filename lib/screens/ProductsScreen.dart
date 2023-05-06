import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart';

import '../common_widget/CircularProgress.dart';
import '../common_widget/GridTilesProducts.dart';
import '../models/ProductModel.dart';
import '../utils/Urls.dart';

class ProductsScreen extends StatefulWidget {
  String name;
  String slug;

  ProductsScreen({required this.name, required this.slug});
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(color: Colors.red),
      ),
      body: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10, right: 10),
          // child: ProductListWidget(
          //   slug: widget.slug,
          // )),
          child: Text("asdfas")),
    );
  }
}

// class ProductListWidget extends StatelessWidget {
//   String slug;

//   ProductListWidget({required this.slug});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getProductList(slug, false),
//       builder: (context, AsyncSnapshot snapshot) {
//         switch (snapshot.connectionState) {
//           case ConnectionState.none:
//           case ConnectionState.waiting:
//             return CircularProgress();
//           default:
//             if (snapshot.hasError)
//               return Text('Error: ${snapshot.error}');
//             else
//               return createListView(context, snapshot);
//         }
//       },
//     );
//   }
// }

// Future<ProductModels> getProductList(String slug, bool isSubList) async {
//   ProductModels? products;
//   if (isSubList) {
//     products = null;
//   }
//   if (products == null) {
//     Response response;
//     response = await get((Urls.ROOT_URL + slug) as Uri);
//     int statusCode = response.statusCode;
//     final body = json.decode(response.body);
//     if (statusCode == 200) {
//       products = ProductModels.fromJson(body);
//       return products;
//     } else {
//       return products = ProductModels.fromJson(body);
//     }
//   } else {
//     return products;
//   }
// }



// Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
//   ProductModels values = snapshot.data;
//   List<Results> results = values.results;
//   return GridView.count(
//     crossAxisCount: 2,
// //    physics: NeverScrollableScrollPhysics(),
//     padding: EdgeInsets.all(1.0),
//     childAspectRatio: 8.0 / 12.0,
//     children: List<Widget>.generate(results.length, (index) {
//       return GridTile(
//           child: GridTilesProducts(
//         name: results[index].name,
//         imageUrl: results[index].imageUrls[0],
//         slug: results[index].slug,
//         price: results[index].maxPrice,
//         fromSubProducts: results[index].fromSubProducts,
//       ));
//     }),
//   );
// }
