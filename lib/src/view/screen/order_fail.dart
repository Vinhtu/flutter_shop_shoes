import 'package:flutter_shop_shoes/src/data/service/order_service.dart';
import 'package:flutter_shop_shoes/src/view/screen/cartutil.dart';
import 'package:flutter_shop_shoes/src/view/screen/component/carttab/cart_empty_screen.dart';
import 'package:flutter_shop_shoes/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../const/app_colors.dart';
import '../../const/app_font.dart';
import '../../router/router_path.dart';
import '../../viewmodel/user_viewmodel.dart';
import 'component/carttab/cart_scroll.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartData = Provider.of<CartViewModel>(context);
    var userData = Provider.of<UserViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 22,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: AppFont.semiBold,
        ),
      ),
      body: SizedBox(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // buildTextHeader(title: "Shipping address"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.1),
                          blurRadius: 4,
                          spreadRadius: 5,
                          offset: Offset(2, 2),
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${userData.itemCount > 0 ? userData!.items.values.toList()[0].name : "Chưa có dữ liệu"}",
                            style: AppFont.medium.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              if (userData.itemCount > 0) {
                                Get.toNamed("/chooseaddress");
                              } else {
                                Get.toNamed("/login");
                              }
                            },
                            child: Text(
                              "Change",
                              style: AppFont.regular.copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: AppColors.primaryColorRed),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${userData.itemCount > 0 ? userData!.items.values.toList()[0].phone : ""}",
                        style: AppFont.regular.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${userData.itemCount > 0 ? userData!.items.values.toList()[0].line + " - " + userData.items.values.toList()[0].district + " - " + userData.items.values.toList()[0].ward : ""} ",
                        style: AppFont.regular.copyWith(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Total", style: TextStyle(fontSize: 20)),
                            const Spacer(),
                            Chip(
                              label: Text(
                                cartData.totalPrice.toString(), // text value
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .headline6
                                      ?.color,
                                ),
                              ),
                              backgroundColor: Colors.orange,
                            ),
                            const SizedBox(width: 10),
                            // OrderButton(cartData: cartData)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      child: Expanded(
                          child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(0.0),
                        itemCount: cartData.itemCount,
                        itemBuilder: (_, index) {
                          return Dismissible(
                            key: UniqueKey(),
                            onDismissed: (value) {
                              // cartViewModel.removeCart(index);
                            },
                            background: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.delete_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(cartData
                                            .items.values
                                            .toList()[index]
                                            .thumbnail),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cartData.items.values
                                              .toList()[index]
                                              .title,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppFont.semiBold.copyWith(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Color: ",
                                                    style: AppFont.regular
                                                        .copyWith(
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14),
                                                    children: [
                                                      TextSpan(
                                                        text: cartData
                                                            .items.values
                                                            .toList()[index]
                                                            .color,
                                                        style: AppFont.regular
                                                            .copyWith(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 14),
                                                      )
                                                    ]),
                                              ]),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Size: ",
                                                    style: AppFont.regular
                                                        .copyWith(
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 14),
                                                    children: [
                                                      TextSpan(
                                                        text: cartData
                                                            .items.values
                                                            .toList()[index]
                                                            .size,
                                                        style: AppFont.regular
                                                            .copyWith(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontSize: 14),
                                                      )
                                                    ]),
                                              ]),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Text(
                                                  "x ${cartData.items.values.toList()[index].quantity}    ${cartData.items.values.toList()[index].price.toInt() * cartData.items.values.toList()[index].quantity.toInt()}"),
                                            ),
                                            Container(
                                              child: Row(children: [
                                                IconButton(
                                                  icon:
                                                      const Icon(Icons.remove),
                                                  onPressed: () {
                                                    cartData.removeSingleItem(
                                                        cartData.items.keys
                                                            .toList()[index]);
                                                  },
                                                ),
                                                IconButton(
                                                  icon: const Icon(Icons.add),
                                                  onPressed: () {
                                                    cartData.addSingleItem(
                                                        cartData.items.keys
                                                            .toList()[index]);
                                                  },
                                                ),
                                                IconButton(
                                                  icon:
                                                      const Icon(Icons.delete),
                                                  onPressed: () {
                                                    cartData.removeItem(cartData
                                                        .items.keys
                                                        .toList()[index]);
                                                  },
                                                ),
                                              ]),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                    ),
                  ],
                ),

                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Delivery",
                    style: AppFont.medium.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: AppColors.primaryColorGray),
                  ),
                  Spacer(),
                  Text(
                    "Free ship",
                    style: AppFont.semiBold.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        child: Text(
                          "Total",
                          style: AppFont.medium.copyWith(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Text(
                        "${cartData.totalPrice.toInt()} VND",
                        style: AppFont.semiBold.copyWith(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.primaryColorRed,
                          textStyle: AppFont.medium.copyWith(
                              fontSize: 15, fontWeight: FontWeight.normal)),
                      onPressed: () async {
                        if (userData.itemCount > 0) {
                          var response = await OrderService.addOrder(
                              username:
                                  userData!.items.values.toList()[0].username,
                              phone: userData!.items.values.toList()[0].phone,
                              line: userData!.items.values.toList()[0].line,
                              district:
                                  userData!.items.values.toList()[0].district,
                              ward: userData!.items.values.toList()[0].ward,
                              total: cartData.totalPrice.toString(),
                              product: cartData.itemCount.toString(),
                              status: "Pending");

                          if (response.code != 200) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text(response.message.toString()),
                                  );
                                });
                            Get.toNamed("/order_fail");
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text(response.message.toString()),
                                  );
                                });

                            Get.toNamed("/order_success");
                          }
                        } else {
                          Get.toNamed("/login");
                        }
                        // cartViewModel.checkOutCart();
                        // Navigator.pushNamed(context, OrderSuccessScreens),
                      },
                      child: Text('Checkout'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
