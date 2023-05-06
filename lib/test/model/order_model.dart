import 'orderitem_model.dart';

class OrderModel {
  final String id;
  final List<OrderitemModel> orderitem;
  final String startShip;
  final String endShip;
  final String date;
  final String status;

  OrderModel({
    required this.id,
    required this.orderitem,
    required this.startShip,
    required this.endShip,
    required this.date,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cartitem': orderitem,
      'startShip': startShip,
      'endShip': endShip,
      'date': date,
      'status': status,
    };
  }

  OrderModel.fromMap(Map<String, dynamic> order)
      : id = order["id"],
        orderitem = order["orderitem"],
        startShip = order["startShip"],
        endShip = order["endShip"],
        date = order["date"],
        status = order["status"];
}
