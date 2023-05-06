import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List searchResult = [];

  void searchFromFirebase(String query) async {
    final result = await FirebaseFirestore.instance
        .collection("products")
        .where("name", arrayContains: query)
        .get();
    setState(() {
      searchResult = result.docs.map((e) => e.data()).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    print(searchResult.length);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Theme(
              child: TextField(
                onChanged: (query) {
                  searchFromFirebase(query);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color(0xFFF2F4F5),
                  hintStyle: new TextStyle(color: Colors.grey[600]),
                  hintText: "Search ?",
                ),
                autofocus: false,
              ),
              data: Theme.of(context).copyWith(
                primaryColor: Colors.grey[600],
              )),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: searchResult.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchResult[index]["name"]),
                    subtitle: Text(searchResult[index]["price"]),
                  );
                }))
      ],
    );
  }
}
