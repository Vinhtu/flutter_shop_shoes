import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../service/category_service.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
enum Fruit { address, paypal }

class InfoScreen extends StatelessWidget {
  final Stream<QuerySnapshot> collectionReference =
      CategoryService.readEmployee();
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
      body: SizedBox(
        child: Container(
          child: StreamBuilder(
            stream: collectionReference,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              print(snapshot.hasData);
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListView(
                    children: snapshot.data!.docs.map((e) {
                      print(e["name"]);
                      return Card(
                          child: Column(children: [
                        ListTile(
                          title: Text(e["name"]),
                          subtitle: Container(
                            child: (Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text("Position: ",
                                    style: const TextStyle(fontSize: 14)),
                              ],
                            )),
                          ),
                        ),
                      ]));
                    }).toList(),
                  ),
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
      ),
    );
  }
}
