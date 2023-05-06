import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_shoes/common_widget/GridTilesProducts.dart';
import 'package:flutter_shop_shoes/test/model/product_model.dart';
import 'package:get/get.dart';

import 'package:http/http.dart';

import '../common_widget/CircularProgress.dart';
import '../common_widget/GridTilesCategory.dart';
import '../models/ShopModel.dart';
import '../service/product_service.dart';
import '../utils/Urls.dart';

List<String> items = [
  "All",
  "Giày thể thao",
  "Giày nam",
  "Giày nữ",
  "Giày cao gót",
  "Giày boot",
  "Giày nam",
  "Giày nữ",
  "Giày cao gót",
  "Giày boot",
];

class ShopHomePage extends StatefulWidget {
  String slug;
  bool isSubList;

  ShopHomePage({required this.slug, this.isSubList = false});
  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  final Stream<QuerySnapshot> collectionReferenceProduct =
      ProductService.readProduct();

  @override
  void initState() {
    super.initState();
  }

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
                              onTap: () {
                                Get.toNamed("/product-detail", arguments: {
                                  "id": e["id"],
                                  "name": e["name"],
                                  "thumbnail": e["thumbnail"],
                                  "thumbnail1": e["thumbnail1"],
                                  "thumbnail2": e["thumbnail2"],
                                  "thumbnail3": e["thumbnail3"],
                                  "price": e["price"],
                                  "color": e["color"],
                                  "size": e["size"],
                                  "description": e["description"],
                                  "promotion": e["promotion"],
                                  "amount": e["amount"],
                                  "brand": e["brand"],
                                  "category": e["category"]
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Card(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                    ),
                                    elevation: 0,
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Image.network(
                                            e["thumbnail"],
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.fill,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10, top: 15),
                                            child: Text(
                                                (e["name"].length <= 40
                                                    ? e["name"]
                                                    : e["name"]
                                                        .substring(0, 40)),
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color(0xFF444444),
                                                    fontFamily:
                                                        'Roboto-Light.ttf',
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ),
                                          Center(
                                            child: Container(
                                              width: double.infinity,
                                              // alignment: Alignment.bottomLeft,
                                              padding: EdgeInsets.only(
                                                  left: 10, right: 10, top: 10),
                                              child: Text(
                                                  "${(e["price"] != null) ? e["price"] : 'Unavailable'} VND",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: (e["price"] !=
                                                              null)
                                                          ? Color(0xFFf67426)
                                                          : Color(0xFF0dc2cd),
                                                      fontFamily:
                                                          'Roboto-Light.ttf',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ),
                            ),

                            // GridTilesProducts(
                            //     data: e,
                            //     name: e["name"],
                            //     imageUrl: e["thumbnail"].toString(),
                            //     slug: e["name"],
                            //     price: e["price"])
                          );
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
}
