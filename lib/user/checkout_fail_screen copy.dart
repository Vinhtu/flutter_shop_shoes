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
                Text("Finish"),
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  child: Image.network(
                      'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.fill),
                ),
                Text("Comfirm Success"),
                Text("You Order code: #0393788"),
                Text("Thank you for choosing our product"),
                Center(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.backpack,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        Text("Continue Shopping")
                      ],
                    ),
                  ),
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
                        Text("Back to home")
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
