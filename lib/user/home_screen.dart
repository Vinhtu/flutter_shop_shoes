import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    "All",
    "Giay the thao",
    "Giay nam",
    "Giay nu",
    "Giay cao got",
    "Giay boot",
    "Giay nam",
    "Giay nu",
    "Giay cao got",
    "Giay boot",
  ];
  final List<String> itemss = [
    'Bình Thường',
    'Từ cao đến thấp',
    'Từ thấp đến cao',
  ];
  Map<String, bool> values = {
    'foo': true,
    'bar': false,
  };

  List<String> productTopSale = [
    "All",
    "Giay the thao",
    "Giay nam",
    "Giay nu",
    "Giay cao got",
    "Giay boot",
  ];
  String? selectedValue;
  int current_select = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFAFAFA),
        body: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: ListView(
              shrinkWrap: true,
              reverse: true,
              children: [
                Container(
                    margin:
                        new EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                    child: Column(
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
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_left,
                                        color: Colors.black,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            GestureDetector(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.all(5),
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
                                    Icons.arrow_right,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF4F6F0)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: Column(
                              children: [
                                TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 30),
                                  decoration: new InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      //<-- SEE HERE
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                    // prefixIcon: Icon(Icons.search),
                                    hintText: 'Search',
                                    // enabledBorder: OutlineInputBorder(
                                    //   borderRadius: BorderRadius.all(
                                    //       Radius.circular(20.0)),
                                    //   borderSide: BorderSide(
                                    //       color: Colors.grey, width: 0.0),
                                    // ),
                                    // focusedBorder: OutlineInputBorder(
                                    //   // borderRadius: BorderRadius.all(
                                    //   //     Radius.circular(10.0)),
                                    //   borderSide: BorderSide(
                                    //       color: Colors.blue, width: 0.0),
                                    // ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 16, left: 5, right: 5, bottom: 16),
                                  width: double.infinity,
                                  // height: double.infinity,
                                  child: Column(children: [
                                    SizedBox(
                                      height: 48,
                                      width: double.infinity,
                                      child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          // itemCount: items.length,
                                          itemCount: 6,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (ctx, index) {
                                            return MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    current_select = index;
                                                    pageController
                                                        .jumpToPage(index);
                                                  });
                                                },
                                                child: AnimatedContainer(
                                                  duration: const Duration(
                                                      milliseconds: 300),
                                                  margin: EdgeInsets.all(5),
                                                  // width: 80,
                                                  height: 40,

                                                  padding: EdgeInsets.only(
                                                      left: 16, right: 16),
                                                  decoration: BoxDecoration(
                                                    // backgroundBlendMode:,
                                                    color:
                                                        current_select == index
                                                            ? Colors.white70
                                                            : Colors.white54,

                                                    borderRadius:
                                                        current_select == index
                                                            ? BorderRadius
                                                                .circular(10)
                                                            : BorderRadius
                                                                .circular(10),
                                                    // border: current_select ==
                                                    //         index
                                                    //     ? Border.all(
                                                    //         color: Colors
                                                    //             .deepOrangeAccent,
                                                    //         width: 2)
                                                    //     : null,
                                                    boxShadow:
                                                        current_select == index
                                                            ? [
                                                                BoxShadow(
                                                                  color: Color.fromRGBO(
                                                                          207,
                                                                          207,
                                                                          207,
                                                                          1)
                                                                      .withOpacity(
                                                                          0.5),
                                                                  spreadRadius:
                                                                      1,
                                                                  blurRadius: 1,
                                                                  offset: Offset(
                                                                      0,
                                                                      2), // changes position of shadow
                                                                ),
                                                              ]
                                                            : null,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      items[index],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              current_select ==
                                                                      index
                                                                  ? Colors.black
                                                                  : Colors
                                                                      .grey),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 4),
                                    ),
                                    Divider(),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      width: double.infinity,
                                      height: 500,
                                      child: PageView(
                                        controller: pageController,
                                        children: [
                                          SingleChildScrollView(
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(8.0),
                                                    ),
                                                    child: Image.network(
                                                        'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                                                        width: double.infinity,
                                                        height: 200,
                                                        fit: BoxFit.fill),
                                                  ),
                                                  Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 16,
                                                              bottom: 16),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  GestureDetector(
                                                                    child:
                                                                        AnimatedContainer(
                                                                      duration: const Duration(
                                                                          milliseconds:
                                                                              300),
                                                                      margin: EdgeInsets.only(
                                                                          right:
                                                                              16),
                                                                      width: 40,
                                                                      height:
                                                                          40,
                                                                      decoration: BoxDecoration(
                                                                          color: Colors.white54,
                                                                          borderRadius: BorderRadius.circular(10),
                                                                          // border: Border.all(
                                                                          //     color: Colors.deepOrangeAccent,
                                                                          //     width: 2),
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              color: Color.fromRGBO(207, 207, 207, 1).withOpacity(0.5),
                                                                              spreadRadius: 1,
                                                                              blurRadius: 1,
                                                                              offset: Offset(0, 2), // changes position of shadow
                                                                            ),
                                                                          ]),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .auto_graph,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Top Sale",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .black),
                                                                  )
                                                                ],
                                                              ),
                                                              GestureDetector(
                                                                child:
                                                                    AnimatedContainer(
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          300),
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              5),
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
                                                                          color:
                                                                              Color.fromRGBO(207, 207, 207, 1).withOpacity(0.5),
                                                                          spreadRadius:
                                                                              1,
                                                                          blurRadius:
                                                                              1,
                                                                          offset: Offset(
                                                                              0,
                                                                              2), // changes position of shadow
                                                                        ),
                                                                      ]),
                                                                  child: Center(
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_right_outlined,
                                                                      color: Colors
                                                                          .black,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      )),
                                                  Container(
                                                      height: 1000,
                                                      child: GridView.builder(
                                                        itemCount:
                                                            productTopSale
                                                                .length,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        primary: false,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisSpacing: 10,
                                                          mainAxisSpacing: 10,
                                                          crossAxisCount: 2,
                                                          childAspectRatio:
                                                              (1 / 1.4),
                                                        ),
                                                        itemBuilder:
                                                            (context, index) =>
                                                                Container(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(0),
                                                            child: Container(
                                                                height: 500,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color: Color.fromRGBO(
                                                                                207,
                                                                                207,
                                                                                207,
                                                                                1)
                                                                            .withOpacity(0.5),
                                                                        spreadRadius:
                                                                            1,
                                                                        blurRadius:
                                                                            1,
                                                                        offset: Offset(
                                                                            0,
                                                                            2), // changes position of shadow
                                                                      ),
                                                                    ]),
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1,
                                                                child: Column(
                                                                  children: [
                                                                    // Image
                                                                    //     .network(
                                                                    //   "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                                    //   height:
                                                                    //       230,
                                                                    //   width: double
                                                                    //       .maxFinite,
                                                                    // ),
                                                                    Container(
                                                                      height:
                                                                          230,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                        child:
                                                                            Image(
                                                                          image:
                                                                              NetworkImage('https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                                        ),
                                                                      ),
                                                                    ),

                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                4,
                                                                            bottom:
                                                                                4),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "Ho chi minh",
                                                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                                                            ),
                                                                          ],
                                                                        )),

                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                4,
                                                                            bottom:
                                                                                8),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "Giay nam the thao",
                                                                              style: TextStyle(fontSize: 14, color: Colors.black),
                                                                            ),
                                                                          ],
                                                                        )),

                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                4),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "10.000vnd",
                                                                              style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                            ),
                                                                            Text(
                                                                              "-",
                                                                              style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                            ),
                                                                            Text(
                                                                              "20.000vnd",
                                                                              style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.underline),
                                                                            )
                                                                          ],
                                                                        )),
                                                                  ],
                                                                )),
                                                          ),
                                                        ),
                                                      )),
                                                  // Container(
                                                  //   height: 120,
                                                  //   margin:
                                                  //       const EdgeInsets.only(
                                                  //           bottom: 16.0),
                                                  //   padding:
                                                  //       const EdgeInsets.all(
                                                  //           16.0),
                                                  //   decoration: BoxDecoration(
                                                  //       borderRadius:
                                                  //           BorderRadius
                                                  //               .circular(16),
                                                  //       color: Colors.orange),
                                                  //   child: Row(
                                                  //       mainAxisAlignment:
                                                  //           MainAxisAlignment
                                                  //               .spaceBetween,
                                                  //       children: [
                                                  //         Icon(
                                                  //           Icons.backpack,
                                                  //           color: Colors.black,
                                                  //           size: 24.0,
                                                  //         ),
                                                  //         Text("Free ship"),
                                                  //         Icon(
                                                  //           Icons.search,
                                                  //           color: Colors.black,
                                                  //           size: 24.0,
                                                  //         )
                                                  //       ]),
                                                  // ),

//hinh anh banner 2
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(8.0),
                                                    ),
                                                    child: Image.network(
                                                        'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                                                        width: double.infinity,
                                                        height: 150,
                                                        fit: BoxFit.fill),
                                                  ),
                                                  Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              top: 16,
                                                              bottom: 16),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  GestureDetector(
                                                                    child:
                                                                        AnimatedContainer(
                                                                      duration: const Duration(
                                                                          milliseconds:
                                                                              300),
                                                                      margin: EdgeInsets.only(
                                                                          right:
                                                                              16),
                                                                      width: 40,
                                                                      height:
                                                                          40,
                                                                      decoration: BoxDecoration(
                                                                          color: Colors.white54,
                                                                          borderRadius: BorderRadius.circular(10),
                                                                          // border: Border.all(
                                                                          //     color: Colors.deepOrangeAccent,
                                                                          //     width: 2),
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              color: Color.fromRGBO(207, 207, 207, 1).withOpacity(0.5),
                                                                              spreadRadius: 1,
                                                                              blurRadius: 1,
                                                                              offset: Offset(0, 2), // changes position of shadow
                                                                            ),
                                                                          ]),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .ac_unit,
                                                                          color:
                                                                              Colors.black,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Recommendation Product",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color: Colors
                                                                            .black),
                                                                  )
                                                                ],
                                                              ),
                                                              GestureDetector(
                                                                child:
                                                                    AnimatedContainer(
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          300),
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              5),
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
                                                                          color:
                                                                              Color.fromRGBO(207, 207, 207, 1).withOpacity(0.5),
                                                                          spreadRadius:
                                                                              1,
                                                                          blurRadius:
                                                                              1,
                                                                          offset: Offset(
                                                                              0,
                                                                              2), // changes position of shadow
                                                                        ),
                                                                      ]),
                                                                  child: Center(
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_right,
                                                                      color: Colors
                                                                          .black,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      )),
                                                  Container(
                                                      height: 1000,
                                                      child: GridView.builder(
                                                        itemCount:
                                                            productTopSale
                                                                .length,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        primary: false,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisSpacing: 10,
                                                          mainAxisSpacing: 10,
                                                          crossAxisCount: 2,
                                                          childAspectRatio:
                                                              (1 / 1.4),
                                                        ),
                                                        itemBuilder:
                                                            (context, index) =>
                                                                Container(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(0),
                                                            child: Container(
                                                                height: 500,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color: Color.fromRGBO(
                                                                                207,
                                                                                207,
                                                                                207,
                                                                                1)
                                                                            .withOpacity(0.5),
                                                                        spreadRadius:
                                                                            1,
                                                                        blurRadius:
                                                                            1,
                                                                        offset: Offset(
                                                                            0,
                                                                            2), // changes position of shadow
                                                                      ),
                                                                    ]),
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1,
                                                                child: Column(
                                                                  children: [
                                                                    // Image
                                                                    //     .network(
                                                                    //   "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                                    //   height:
                                                                    //       230,
                                                                    //   width: double
                                                                    //       .maxFinite,
                                                                    // ),
                                                                    Container(
                                                                      height:
                                                                          230,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                        child:
                                                                            Image(
                                                                          image:
                                                                              NetworkImage('https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                                        ),
                                                                      ),
                                                                    ),

                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                4,
                                                                            bottom:
                                                                                4),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "Ho chi minh",
                                                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                                                            ),
                                                                          ],
                                                                        )),

                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                4,
                                                                            bottom:
                                                                                8),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "Giay nam the thao",
                                                                              style: TextStyle(fontSize: 14, color: Colors.black),
                                                                            ),
                                                                          ],
                                                                        )),

                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                4),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(
                                                                              "10.000vnd",
                                                                              style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                            ),
                                                                            Text(
                                                                              "-",
                                                                              style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                            ),
                                                                            Text(
                                                                              "20.000vnd",
                                                                              style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.underline),
                                                                            )
                                                                          ],
                                                                        )),
                                                                  ],
                                                                )),
                                                          ),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    // margin:
                                                    //     const EdgeInsets.only(top: 10),
                                                    width: double.infinity,
                                                    // height: 500,
                                                    child: Column(
                                                      // mainAxisAlignment:
                                                      //     MainAxisAlignment.center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border.all(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    width: 1),
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: IconButton(
                                                                icon: const Icon(
                                                                    Icons
                                                                        .sort_outlined),
                                                                onPressed: () =>
                                                                    _dialogBuilder(
                                                                        context),
                                                                color: Colors
                                                                    .black,
                                                                // size: 24.0,
                                                              ),
                                                            ),
                                                            Center(
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton2(
                                                                  isExpanded:
                                                                      true,
                                                                  hint: Row(
                                                                    children: const [
                                                                      // Icon(
                                                                      //   Icons.list,
                                                                      //   size: 16,
                                                                      //   color: Color.fromARGB(255, 0, 0, 0),
                                                                      // ),
                                                                      SizedBox(
                                                                        width:
                                                                            4,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          'Select Item',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                          ),
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  items: itemss
                                                                      .map((item) =>
                                                                          DropdownMenuItem<
                                                                              String>(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Text(
                                                                              item,
                                                                              style: const TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w100,
                                                                                color: Color.fromARGB(255, 0, 0, 0),
                                                                              ),
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  value:
                                                                      selectedValue,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      selectedValue =
                                                                          value
                                                                              as String;
                                                                    });
                                                                  },
                                                                  buttonStyleData:
                                                                      ButtonStyleData(
                                                                    height: 50,
                                                                    width: 160,
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            14,
                                                                        right:
                                                                            14),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              14),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .black26,
                                                                      ),
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                    ),
                                                                    elevation:
                                                                        2,
                                                                  ),
                                                                  iconStyleData:
                                                                      const IconStyleData(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_forward_ios_outlined,
                                                                    ),
                                                                    iconSize:
                                                                        14,
                                                                    iconEnabledColor:
                                                                        Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    iconDisabledColor:
                                                                        Colors
                                                                            .grey,
                                                                  ),
                                                                  dropdownStyleData:
                                                                      DropdownStyleData(
                                                                          maxHeight:
                                                                              200,
                                                                          width:
                                                                              200,
                                                                          padding:
                                                                              null,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14),
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                255,
                                                                                255),
                                                                          ),
                                                                          elevation:
                                                                              8,
                                                                          offset: const Offset(
                                                                              -20,
                                                                              0),
                                                                          scrollbarTheme:
                                                                              ScrollbarThemeData(
                                                                            radius:
                                                                                const Radius.circular(40),
                                                                            thickness:
                                                                                MaterialStateProperty.all(6),
                                                                            thumbVisibility:
                                                                                MaterialStateProperty.all(true),
                                                                          )),
                                                                  menuItemStyleData:
                                                                      const MenuItemStyleData(
                                                                    height: 40,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            14,
                                                                        right:
                                                                            14),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 16),
                                                            height: 1000,
                                                            child:
                                                                GridView.count(
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              primary: false,
                                                              crossAxisSpacing:
                                                                  10,
                                                              mainAxisSpacing:
                                                                  10,
                                                              crossAxisCount: 2,
                                                              childAspectRatio:
                                                                  (1 / 1.4),
                                                              children: <
                                                                  Widget>[
                                                                Center(
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(0),
                                                                    child: Container(
                                                                        height: 500,
                                                                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                Color.fromRGBO(207, 207, 207, 1).withOpacity(0.5),
                                                                            spreadRadius:
                                                                                1,
                                                                            blurRadius:
                                                                                1,
                                                                            offset:
                                                                                Offset(0, 2), // changes position of shadow
                                                                          ),
                                                                        ]),
                                                                        width: MediaQuery.of(context).size.width * 1,
                                                                        child: Column(
                                                                          children: [
                                                                            // Image
                                                                            //     .network(
                                                                            //   "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                                            //   height:
                                                                            //       230,
                                                                            //   width: double
                                                                            //       .maxFinite,
                                                                            // ),
                                                                            Container(
                                                                              height: 230,
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                child: Image(
                                                                                  image: NetworkImage('https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                                                ),
                                                                              ),
                                                                            ),

                                                                            Container(
                                                                                margin: EdgeInsets.only(left: 4, bottom: 4),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "Ho chi minh",
                                                                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                                                                    ),
                                                                                  ],
                                                                                )),

                                                                            Container(
                                                                                margin: EdgeInsets.only(left: 4, bottom: 8),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "Giay nam the thao",
                                                                                      style: TextStyle(fontSize: 14, color: Colors.black),
                                                                                    ),
                                                                                  ],
                                                                                )),

                                                                            Container(
                                                                                margin: EdgeInsets.only(left: 4),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "10.000vnd",
                                                                                      style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                                    ),
                                                                                    Text(
                                                                                      "-",
                                                                                      style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                                    ),
                                                                                    Text(
                                                                                      "20.000vnd",
                                                                                      style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.underline),
                                                                                    )
                                                                                  ],
                                                                                )),
                                                                          ],
                                                                        )),
                                                                  ),
                                                                ),
                                                                Center(
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(0),
                                                                    child: Container(
                                                                        height: 500,
                                                                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                Color.fromRGBO(207, 207, 207, 1).withOpacity(0.5),
                                                                            spreadRadius:
                                                                                1,
                                                                            blurRadius:
                                                                                1,
                                                                            offset:
                                                                                Offset(0, 2), // changes position of shadow
                                                                          ),
                                                                        ]),
                                                                        width: MediaQuery.of(context).size.width * 1,
                                                                        child: Column(
                                                                          children: [
                                                                            // Image
                                                                            //     .network(
                                                                            //   "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                                            //   height:
                                                                            //       230,
                                                                            //   width: double
                                                                            //       .maxFinite,
                                                                            // ),
                                                                            Container(
                                                                              height: 230,
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                child: Image(
                                                                                  image: NetworkImage('https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                                                                ),
                                                                              ),
                                                                            ),

                                                                            Container(
                                                                                margin: EdgeInsets.only(left: 4, bottom: 4),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "Ho chi minh",
                                                                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                                                                    ),
                                                                                  ],
                                                                                )),

                                                                            Container(
                                                                                margin: EdgeInsets.only(left: 4, bottom: 8),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "Giay nam the thao",
                                                                                      style: TextStyle(fontSize: 14, color: Colors.black),
                                                                                    ),
                                                                                  ],
                                                                                )),

                                                                            Container(
                                                                                margin: EdgeInsets.only(left: 4),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "10.000vnd",
                                                                                      style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                                    ),
                                                                                    Text(
                                                                                      "-",
                                                                                      style: TextStyle(fontSize: 16, color: Colors.grey),
                                                                                    ),
                                                                                    Text(
                                                                                      "20.000vnd",
                                                                                      style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.underline),
                                                                                    )
                                                                                  ],
                                                                                )),
                                                                          ],
                                                                        )),
                                                                  ),
                                                                ),
                                                              ],
                                                            )),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                8.0),
                                                          ),
                                                          child: Image.network(
                                                              'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                                                              width: double
                                                                  .infinity,
                                                              height: 150,
                                                              fit: BoxFit.fill),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 30),
                                            width: double.infinity,
                                            height: 500,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [Text("test 2")],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 30),
                                            width: double.infinity,
                                            height: 500,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [Text("test 2")],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }

  Future<void> _dialogBuilder(BuildContext context) {
    bool valuefirst = false;
    bool valuesecond = false;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filter'),
          content: Container(
              width: 500,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        Text(
                          'Brand ',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nike",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Transform.scale(
                        scale: .7,
                        child:
                            Checkbox(value: valuefirst, onChanged: (value) {}),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Convert",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Transform.scale(
                        scale: .7,
                        child:
                            Checkbox(value: valuefirst, onChanged: (value) {}),
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jordan",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Transform.scale(
                        scale: .7,
                        child:
                            Checkbox(value: valuefirst, onChanged: (value) {}),
                      )
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 16, top: 24),
                    child: Row(
                      children: [
                        Text(
                          'Address ',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tp Hồ Chí Minh",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Transform.scale(
                        scale: .7,
                        child:
                            Checkbox(value: valuefirst, onChanged: (value) {}),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hà Nội",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Transform.scale(
                        scale: .7,
                        child:
                            Checkbox(value: valuefirst, onChanged: (value) {}),
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Đà Nẵng",
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Transform.scale(
                        scale: .7,
                        child:
                            Checkbox(value: valuefirst, onChanged: (value) {}),
                      )
                    ],
                  ),
                  // CheckboxListTile(
                  //   contentPadding:
                  //       EdgeInsets.only(left: 0, right: 0, bottom: 0),

                  //   // secondary: const Icon(Icons.alarm),
                  //   title: const Text('Nike'),
                  //   // subtitle: Text('Nike'),
                  //   value: valuefirst,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       valuefirst == value;
                  //     });
                  //   },
                  // ),
                  // CheckboxListTile(
                  //   contentPadding: EdgeInsets.only(left: 0, right: 0),
                  //   controlAffinity: ListTileControlAffinity.trailing,
                  //   // secondary: const Icon(Icons.alarm),
                  //   title: const Text('Adidas'),
                  //   // subtitle: Text('Adidas'),
                  //   value: valuesecond,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       valuesecond == value;
                  //     });
                  //   },
                  // ),
                ],
              )),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Huỷ'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Tim kiếm'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
