import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_shoes/service/category_service.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../const/app_font.dart';

class CategoryTab extends StatelessWidget {
  final Stream<QuerySnapshot> getCategory = CategoryService.readCategories();

  @override
  Widget build(BuildContext context) {
    double cardWidth = ((MediaQuery.of(context).size.width - 40) / 2);

    return Container(
      child: SizedBox(
        height: cardWidth / 0.59,
        child: StreamBuilder(
          stream: getCategory,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 2,
                // padding: EdgeInsets.all(1.0),

                childAspectRatio: 1 / 1.25,
                children: snapshot.data!.docs.map((e) {
                  print(e);
                  return Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.orange)),
                    child: GridTile(
                      child: InkWell(
                        onTap: () {
                          Get.toNamed("/category-product", arguments: {
                            "name": e["name"],
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Container(
                              width: 400,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, right: 2),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.network(
                                            e["image"],
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: 120,
                                          ),
                                        ),
                                      ),
                                      // Positioned(
                                      //   top: 5,
                                      //   left: 10,
                                      //   child: Container(
                                      //     padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                                      //     decoration: BoxDecoration(
                                      //       color: AppColors.primaryColorRed,
                                      //       borderRadius: BorderRadius.circular(90),
                                      //     ),
                                      //     child: Text('20%',style: TextStyle(
                                      //       color: Colors.white,
                                      //       fontSize: 12
                                      //     ),),
                                      //   )
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      e["name"],
                                      textAlign: TextAlign.center,
                                      style: AppFont.regular.copyWith(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),

                      // GridTilesProducts(
                      //     data: e,
                      //     name: e["name"],
                      //     imageUrl: e["thumbnail"].toString(),
                      //     slug: e["name"],
                      //     price: e["price"])
                    ),
                  );
                }).toList(),
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
    );
  }
}
