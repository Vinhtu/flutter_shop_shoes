// import 'package:flutter/material.dart';

// class Cart {
//   late final int? id;
//   final String? productId;
//   final String? productName;
//   final int? initialPrice;
//   final int? productPrice;
//   final int? quantity;
//   final String? unitTag;
//   final String? image;

//   Cart({
//     required this.id,
//     required this.productId,
//     required this.productName,
//     required this.initialPrice,
//     required this.productPrice,
//     required this.quantity,
//     required this.unitTag,
//     required this.image,
//   });

//   Cart.fromMap(Map<dynamic, dynamic> res)
//       : id = res["id"],
//         productId = res["productId"],
//         productName = res['productName'],
//         initialPrice = res["initialPrice"],
//         productPrice = res['productPrice'],
//         quantity = res['quantity'],
//         unitTag = res['unitTag'],
//         image = res['image'];

//   Map<String, Object?> toMap() {
//     return {
//       'id': id,
//       'productId': productId,
//       'productName': productName,
//       'initialPrice': initialPrice,
//       'productPrice': productPrice,
//       'quantity': quantity,
//       'unitTag': unitTag,
//       'image': image,
//     };
//   }
// }

import "package:flutter/material.dart";

class CartItem {
  final String title;
  final String id;
  final int quantity;
  final double price;

  CartItem({
    required this.title,
    required this.id,
    required this.quantity,
    required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalPrice {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total.floorToDouble();
  }

  void addItems(String title, String id, double price) {
    if (_items.containsKey(id)) {
      // increase quantity
      _items.update(
        id,
        (existingItem) => CartItem(
            title: existingItem.title,
            price: existingItem.price,
            id: existingItem.id,
            quantity: existingItem.quantity + 1),
      );
    } else {
      _items.putIfAbsent(
        id,
        () => CartItem(
          id: DateTime.now().toString(),
          quantity: 1,
          title: title,
          price: price,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String? productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }

  void removeSingleItem(String? productId) {
    if (!_items.containsKey(productId)) {
      return;
    }
    if (_items[productId]!.quantity > 1) {
      _items.update(
        productId.toString(),
        (existing) => CartItem(
          id: existing.id,
          quantity: existing.quantity - 1,
          title: existing.title,
          price: existing.price,
        ),
      );
    } else if (_items[productId]!.quantity == 1) {
      _items.remove(productId);
    }
    notifyListeners();
  }
}
