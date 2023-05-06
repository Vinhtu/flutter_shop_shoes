import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';

import '../common_widget/CircularProgress.dart';
import '../common_widget/GridTilesCategory.dart';
import '../models/CategoryModel.dart';
import '../service/category_service.dart';
import '../utils/Urls.dart';

class CategoryPage extends StatefulWidget {
  String slug;
  bool isSubList;

  CategoryPage({required this.slug, this.isSubList = false});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  get isSubList => null;
  final Stream<QuerySnapshot> collectionReferenceProduct =
      CategoryService.readCategories();

  @override
  void initState() {
    super.initState();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return FutureBuilder(
  //     future: getCategoryList(widget.slug, widget.isSubList),
  //     builder: (context, AsyncSnapshot snapshot) {
  //       switch (snapshot.connectionState) {
  //         case ConnectionState.none:
  //         case ConnectionState.waiting:
  //           return CircularProgress();
  //         default:
  //           if (snapshot.hasError)
  //             return Text('Error: ${snapshot.error}');
  //           else
  //             return createListView(context, snapshot, widget.isSubList);
  //       }
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          SizedBox(
            height: 500,
            child: Container(
              height: 500,
              child: StreamBuilder(
                stream: collectionReferenceProduct,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        padding: EdgeInsets.all(1.0),
                        childAspectRatio: 8.0 / 9.0,
                        children: snapshot.data!.docs.map((e) {
                          print(e);
                          return GridTile(
                              child: InkWell(
                            onTap: () {},
                            child: Card(
                                color: Colors.white,
                                elevation: 0,
                                child: Center(
                                  child: Column(
                                    children: <Widget>[
                                      Image.network(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShaNqo2dUiEKomYGY47AmKykFwHBVFwPkpvA&usqp=CAU",
                                          width: 200,
                                          height: 220),
                                      Text(e["name"],
                                          style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontFamily: 'Roboto-Light.ttf',
                                              fontSize: 12))
                                    ],
                                  ),
                                )),
                          ));
                        }).toList(),
                      ),
                    );
                  }

                  return SizedBox(
                    height: 100,
                    child: Container(
                      child: Text("null"),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

// Widget createListView(
//     BuildContext context, AsyncSnapshot snapshot, bool isSubList) {
//   // List<CategoryModel> values = snapshot.data;
//   var imageUrl;
//   var name;
//   var slug;

//   var list = {
//     name: "Giày nam",
//     slug: "giay-nam",
//     imageUrl:
//         "https://vcdn.tikicdn.com/ts/seller/c1/03/c2/fc3cdc0779ddf7f58ab28fb847f71ca8.jpg",
//   };
//   List<CategoryModel> values = list as List<CategoryModel>;

//   return GridView.count(
//     crossAxisCount: 3,
// //    physics: NeverScrollableScrollPhysics(),
//     padding: EdgeInsets.all(1.0),
//     childAspectRatio: 8.0 / 9.0,
//     children: List<Widget>.generate(values.length, (index) {
//       return GridTile(
//           child: GridTilesCategory(
//         name: values[index].name,
//         imageUrl: values[index].imageUrl,
//         slug: values[index].slug,
//         fromSubProducts: isSubList,
//       ));
//     }),
//   );
// }

// Future<List<CategoryModel>> getCategoryList(String slug, bool isSubList) async {
//   List<CategoryModel>? categories;
//   if (isSubList) {
//     categories = null;
//   }
//   if (categories == null) {
//     Response response;
//     response = await get(Urls.ROOT_URL + slug);
//     int statusCode = response.statusCode;
//     final body = json.decode(response.body);
//     if (statusCode == 200) {
//       categories =
//           (body as List).map((i) => CategoryModel.fromJson(i)).toList();

//       return categories;
//     } else {
//       return categories = [];
//     }
//   } else {
//     return categories;
//   }
// }

// https://api.evaly.com.bd/core/public/categories/?parent=bags-luggage-966bc8aac     sub cate by slug
}
