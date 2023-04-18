class OrderModel {
  final String id;
  final String name;
  final String thumbnail;
  final String price;
  final String color;
  final String size;

  OrderModel(
      {required this.id,
      required this.name,
      required this.thumbnail,
      required this.price,
      required this.color,
      required this.size});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'thumbnail': thumbnail,
      'price': price,
      'color': color,
      'size': size,
    };
  }

  OrderModel.fromMap(Map<String, dynamic> orderMap)
      : id = orderMap["id"],
        name = orderMap["name"],
        thumbnail = orderMap["thumnail"],
        price = orderMap["price"],
        color = orderMap["color"],
        size = orderMap["size"];
}
