import 'package:flutter/material.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
enum Fruit { address, paypal }

class CheckoutFailScreen extends StatelessWidget {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  CheckoutFailScreen({super.key});

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
                  margin: EdgeInsets.only(bottom: 200),
                  child: Center(
                    child: Text(
                      "Finish",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrXGamrsFy2UCW-Lkn4xg61LRms4oLuV3R24rjsIO4A2p0hcKUGVeOZvOz7L1Ey63vpkM&usqp=CAU',
                    width: 100,
                    height: 100,
                    // fit: BoxFit.fill
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  child: Center(
                    child: Text(
                      "Confirmation Failed",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 40),
                //   child: Center(
                //     child: Text(
                //       "Your Id Order: #1228493",
                //       style: TextStyle(fontSize: 16, color: Colors.black),
                //     ),
                //   ),
                // ),
                Container(
                  // margin: EdgeInsets.only(bottom: 40),
                  child: Center(
                    child: Text(
                      "Please choose product again",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Center(
                    child: Text(
                      "Thank you for choosing for product !",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
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
                      label: Text("Continue Shopping"), //label text
                    )),
              ],
            ),
          ),
        ));
  }
}
