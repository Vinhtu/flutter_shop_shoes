import 'package:flutter_shop_shoes/model/cartitem_model.dart';

class CartModel {
  final String id;
  final List<CartitemModel> cartitem;
  final String startShip;
  final String endShip;

  CartModel({
    required this.id,
    required this.cartitem,
    required this.startShip,
    required this.endShip,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cartitem': cartitem,
      'startShip': startShip,
      'endShip': endShip,
    };
  }

  CartModel.fromMap(Map<String, dynamic> cart)
      : id = cart["id"],
        cartitem = cart["cartitem"],
        startShip = cart["startShip"],
        endShip = cart["endShip"];
}
