import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String id;
  final String name;
  final String thumbnail;
  final String thumbnail1;
  final String thumbnail2;
  final String thumbnail3;
  final String price;
  final String color;
  final String size;
  final String discription;
  final String pprice;
  final String amount;
  final String brand;
  final String category;

  ProductModel({
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.thumbnail1,
    required this.thumbnail2,
    required this.thumbnail3,
    required this.price,
    required this.color,
    required this.size,
    required this.discription,
    required this.pprice,
    required this.amount,
    required this.brand,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'thumbnail': thumbnail,
      'thumbnail1': thumbnail1,
      'thumbnail2': thumbnail2,
      'thumbnail3': thumbnail3,
      'price': price,
      'color': color,
      'size': size,
      'pprice': pprice,
      'discription': discription,
      'amount': amount,
      'brand': brand,
      'category': category,
    };
  }

  ProductModel.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : id = snapshot["id"],
        name = snapshot["name"],
        thumbnail = snapshot["thumbnail"],
        thumbnail1 = snapshot["thumbnail1"],
        thumbnail2 = snapshot["thumbnail2"],
        thumbnail3 = snapshot["thumbnail3"],
        price = snapshot["price"],
        color = snapshot["color"],
        size = snapshot["size"],
        discription = snapshot["discription"],
        pprice = snapshot["pprice"],
        amount = snapshot["amount"],
        brand = snapshot["brand"],
        category = snapshot["category"];

  ProductModel.fromMap(Map<String, dynamic> productMap)
      : id = productMap["id"],
        name = productMap["name"],
        thumbnail = productMap["thumbnail"],
        thumbnail1 = productMap["thumbnail1"],
        thumbnail2 = productMap["thumbnail2"],
        thumbnail3 = productMap["thumbnail3"],
        price = productMap["price"],
        color = productMap["color"],
        size = productMap["size"],
        discription = productMap["discription"],
        pprice = productMap["pprice"],
        amount = productMap["amount"],
        brand = productMap["brand"],
        category = productMap["category"];
}