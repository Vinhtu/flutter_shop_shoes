import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class CartScreen extends StatelessWidget {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFAFAFA),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            reverse: true,
            child: ListView(
              shrinkWrap: true,
              // reverse: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.only(right: 16),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(10),
                                // border: Border.all(
                                //     color: Colors.deepOrangeAccent,
                                //     width: 2),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(207, 207, 207, 1)
                                        .withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ]),
                            child: Center(
                              child: Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "In Your Cart",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                    Text(
                      "4",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 24),
                        height: 1000,
                        child: GridView.count(
                          scrollDirection: Axis.vertical,
                          primary: false,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 1,
                          childAspectRatio: (1 / .4),
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(
                                        //     color: Colors.deepOrangeAccent,
                                        //     width: 2),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    height: 500,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 230,
                                              margin:
                                                  EdgeInsets.only(right: 14),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image(
                                                  image: NetworkImage(
                                                      'https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "Nike",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Giày nam thể thao ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "5 sao",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Color: White",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Size: M",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.black,
                                                  size: 24.0,
                                                ),
                                                Text("Ho chi minh"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(
                                        //     color: Colors.deepOrangeAccent,
                                        //     width: 2),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    height: 500,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 230,
                                              margin:
                                                  EdgeInsets.only(right: 14),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image(
                                                  image: NetworkImage(
                                                      'https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Nike",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Giày nam thể thao ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "5 sao",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Color: White",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Size: M",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.black,
                                                  size: 24.0,
                                                ),
                                                Text("Ho chi minh"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(
                                        //     color: Colors.deepOrangeAccent,
                                        //     width: 2),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    height: 500,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 230,
                                              margin:
                                                  EdgeInsets.only(right: 14),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image(
                                                  image: NetworkImage(
                                                      'https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Nike",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Giày nam thể thao ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "5 sao",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Color: White",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Size: M",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.black,
                                                  size: 24.0,
                                                ),
                                                Text("Ho chi minh"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(
                                        //     color: Colors.deepOrangeAccent,
                                        //     width: 2),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    height: 500,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 230,
                                              margin:
                                                  EdgeInsets.only(right: 14),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image(
                                                  image: NetworkImage(
                                                      'https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Nike",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Giày nam thể thao ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "5 sao",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Color: White",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Size: M",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.black,
                                                  size: 24.0,
                                                ),
                                                Text("Ho chi minh"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Colors.white54,
                                        borderRadius: BorderRadius.circular(10),
                                        // border: Border.all(
                                        //     color: Colors.deepOrangeAccent,
                                        //     width: 2),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    height: 500,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 230,
                                              margin:
                                                  EdgeInsets.only(right: 14),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image(
                                                  image: NetworkImage(
                                                      'https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Nike",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Giày nam thể thao ",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "5 sao",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Color: White",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        bottom: 8),
                                                    child: Text(
                                                      "Size: M",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  color: Colors.black,
                                                  size: 24.0,
                                                ),
                                                Text("Ho chi minh"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.orange,
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),

                      onPressed: () {
                        print("You pressed Icon Elevated Button");
                      },
                      icon: Icon(
                          Icons.shopping_cart), //icon data for elevated button
                      label: Text("Check Out 1.000.000 vnd"), //label text
                    )),
              ],
            ),
          ),
        ));
  }
}
