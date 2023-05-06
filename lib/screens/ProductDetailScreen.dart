import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../common_widget/AppBarWidget.dart';
import '../common_widget/CircularProgress.dart';
import '../models/CartModel.dart';
import '../models/ProductDetails.dart';
import '../utils/Urls.dart';

class ProductDetailScreen extends StatefulWidget {
  String slug;

  ProductDetailScreen({required this.slug});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

//https://api.evaly.com.bd/core/public/products/leather-backpack-for-women-6dba2a50d/
//https://api.evaly.com.bd/core/public/products/special-women-kids-cotton-panjabi-kameez-by-swapons-world-combo-pack-c8648f9f9/

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context, listen: false);
    var cartData = Provider.of<CartModel>(context);
    return Scaffold(
      backgroundColor: Color(0xFFfafafa),
      // appBar: AppBarWidget(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*Image.network(
              widget.productDetails.data.productVariants[0].productImages[0]),*/
            Image.network(
              "${Get.arguments['thumbnail']}",
              fit: BoxFit.fill,
              // loadingBuilder: (BuildContext context, Widget child,
              //     ImageChunkEvent loadingProgress) {
              //   if (loadingProgress == null) return child;
              //   return Center(
              //     child: CircularProgressIndicator(
              //       value: loadingProgress.expectedTotalBytes != null
              //           ? loadingProgress.cumulativeBytesLoaded /
              //               loadingProgress.expectedTotalBytes
              //           : null,
              //     ),
              //   );
              // },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("SKU".toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF565656))),
                  Text("${Get.arguments['name']}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFfd0100))),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF999999),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Price".toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF565656))),
                  Text(" ${Get.arguments['price']} VND".toUpperCase(),
                      style: TextStyle(
                          color: 1 != 0 ? Color(0xFFf67426) : Color(0xFF0dc2cd),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Color".toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF565656))),
                  Text(" ${Get.arguments['color']}".toUpperCase(),
                      style: TextStyle(
                          color: 1 != 0 ? Color(0xFFf67426) : Color(0xFF0dc2cd),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Size".toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF565656))),
                  Text(" ${Get.arguments['size']}".toUpperCase(),
                      style: TextStyle(
                          color: 1 != 0 ? Color(0xFFf67426) : Color(0xFF0dc2cd),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
              color: Color(0xFFFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Description",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF565656))),
                  SizedBox(
                    height: 15,
                  ),
                  Text("${Get.arguments['description']}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4c4c4c))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
              color: Color(0xFFFFFFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Rating",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF565656))),
                  SizedBox(
                    height: 15,
                  ),
                  // Column(
                  //   children: generateProductSpecification(context),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20, right: 10),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Color(0xFF5e5e5e),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    side: BorderSide(color: Color(0xFFfef2f2))),
                primary: Color(0xFFfef2f2),
              ),
              onPressed: () {},
              child: Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                child: Text("${cartData.itemCount}".toUpperCase(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFff665e))),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    side: BorderSide(color: Color(0xFFff665e))),
                primary: Color(0xFFff665e),
              ),
              onPressed: () {
                cart.addItems(
                    Get.arguments['name'],
                    Get.arguments['id'],
                    int.parse(Get.arguments['price']) as double,
                    Get.arguments['thumbnail']);
              },
              child: Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                child: Text("Add To Cart".toUpperCase(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF))),
              ),
            ),
          ],
        ),
      ),
    );
  }
  //  List<Widget> generateProductSpecification(BuildContext context) {
  //   List<Widget> list = [];
  //   int count = 0;
  //   widget.productDetails.data.productSpecifications.forEach((specification) {
  //     Widget element = Container(
  //       height: 30,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: <Widget>[
  //           Text(specification.specificationName,
  //               textAlign: TextAlign.left,
  //               style: TextStyle(
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w400,
  //                   color: Color(0xFF444444))),
  //           Text(specification.specificationValue,
  //               textAlign: TextAlign.left,
  //               style: TextStyle(
  //                   fontSize: 14,
  //                   fontWeight: FontWeight.w400,
  //                   color: Color(0xFF212121))),
  //         ],
  //       ),
  //     );
  //     list.add(element);
  //     count++;
  //   });
  //   return list;
  // }
}

// class BottomNavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 20, right: 10),
//       child: Row(
//         children: <Widget>[
//           Icon(
//             Icons.favorite_border,
//             color: Color(0xFF5e5e5e),
//           ),
//           Spacer(),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               elevation: 0,
//               shape: new RoundedRectangleBorder(
//                   borderRadius: new BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       bottomLeft: Radius.circular(10)),
//                   side: BorderSide(color: Color(0xFFfef2f2))),
//               primary: Color(0xFFfef2f2),
//             ),
//             onPressed: () {
//               cart.addItems(
//                   Get.arguments['data']!.name,
//                   Get.arguments['data']!.id,
//                   int.parse(Get.arguments['data']!.price) as double);
//             },
//             child: Container(
//               padding: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
//               child: Text("Add to cart".toUpperCase(),
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xFFff665e))),
//             ),
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               elevation: 0,
//               shape: new RoundedRectangleBorder(
//                   borderRadius: new BorderRadius.only(
//                       topRight: Radius.circular(10),
//                       bottomRight: Radius.circular(10)),
//                   side: BorderSide(color: Color(0xFFff665e))),
//               primary: Color(0xFFff665e),
//             ),
//             onPressed: () {},
//             child: Container(
//               padding: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
//               child: Text("available at shops".toUpperCase(),
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color(0xFFFFFFFF))),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
