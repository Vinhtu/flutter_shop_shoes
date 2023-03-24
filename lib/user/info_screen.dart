import 'package:flutter/material.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
enum Fruit { address, paypal }

class InfoScreen extends StatelessWidget {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  InfoScreen({super.key});

  Fruit? _fruit = Fruit.address;
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
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      child: Image.network(
                          'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Center(
                    child: Text(
                      "Truong ngoc vinh tu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
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
                                  Icons.description_outlined,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Infomation",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
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
                              Icons.arrow_right_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
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
                                  Icons.notification_add,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Notifications",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
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
                              Icons.arrow_right_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
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
                                  Icons.one_k_rounded,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "List Order",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
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
                              Icons.arrow_right_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
