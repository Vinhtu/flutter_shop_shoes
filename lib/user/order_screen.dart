import 'package:flutter/material.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
enum Fruit { address, paypal }

class OrderScreen extends StatelessWidget {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  OrderScreen({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          child: Image.network(
                              'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill),
                        ),
                        Column(
                          children: [
                            Text("Order success"),
                            Row(
                              children: [
                                Text("1 date"),
                                Text("a order to order success")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Text("running"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          child: Image.network(
                              'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill),
                        ),
                        Column(
                          children: [
                            Text("Order success"),
                            Row(
                              children: [
                                Text("1 date"),
                                Text("a order to order success")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Text("running"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          child: Image.network(
                              'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill),
                        ),
                        Column(
                          children: [
                            Text("Order success"),
                            Row(
                              children: [
                                Text("1 date"),
                                Text("a order to order success")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Text("running"),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          child: Image.network(
                              'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill),
                        ),
                        Column(
                          children: [
                            Text("Order success"),
                            Row(
                              children: [
                                Text("1 date"),
                                Text("a order to order success")
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Text("running"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
