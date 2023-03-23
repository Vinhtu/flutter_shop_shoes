import 'package:flutter/material.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
enum Fruit { address, paypal }

class CheckoutScreen extends StatelessWidget {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  CheckoutScreen({super.key});

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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.backpack,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                          Text("In your cart")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.backpack,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                          Text("4"),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
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
                                    height: 500,
                                    color: Colors.blue,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.network(
                                                "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                height: 200,
                                                width: 200),
                                            Column(
                                              children: [
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Ho chi minh"),
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
                                    height: 500,
                                    color: Colors.blue,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.network(
                                                "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                height: 200,
                                                width: 200),
                                            Column(
                                              children: [
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Ho chi minh"),
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
                                    height: 500,
                                    color: Colors.blue,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.network(
                                                "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                height: 200,
                                                width: 200),
                                            Column(
                                              children: [
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Ho chi minh"),
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
                                    height: 500,
                                    color: Colors.blue,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.network(
                                                "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                height: 200,
                                                width: 200),
                                            Column(
                                              children: [
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                                Text("Ho chi minh"),
                                                Text("Ten giay"),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Ho chi minh"),
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
                Divider(),
                Container(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.backpack,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                            Text("Dia chi")
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.backpack,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                            Text("4"),
                          ],
                        )
                      ],
                    ),
                    Container(
                        child: Column(
                      children: [
                        Text("Ap 1, xa phu tan, huyen dinh quan, tinh don nai"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Chinh sua"), Text("2-3 ngay")],
                        )
                      ],
                    ))
                  ]),
                ),
                Divider(),
                Container(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.backpack,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                            Text("Thanh toan")
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.backpack,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                            Text("4"),
                          ],
                        )
                      ],
                    ),
                    Container(
                        child: Column(
                      children: [
                        ListTile(
                          title: const Text('Thanh toan khi nhan hang'),
                          leading: Radio<Fruit>(
                            value: Fruit.address,
                            groupValue: _fruit, onChanged: (Fruit? value) {},
                            // onChanged: (Fruit? value) {
                            //   setState(() {
                            //     _fruit = value;
                            //   });
                            // },
                          ),
                        ),
                        ListTile(
                          title: const Text('Thanh toan qua paypal'),
                          leading: Radio<Fruit>(
                            value: Fruit.paypal,
                            groupValue: _fruit, onChanged: (Fruit? value) {},
                            // onChanged: (value) {
                            //   setState(() {
                            //     _fruit = value;
                            //   });
                            // },
                          ),
                        ),
                      ],
                    ))
                  ]),
                ),
                Center(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.backpack,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        Text("Check out")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
