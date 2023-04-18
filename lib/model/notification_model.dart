class ProductModel {
  final String id;
  final String name;
  final String thumbnail;
  final String price;
  final String color;
  final String size;

  ProductModel(
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

  ProductModel.fromMap(Map<String, dynamic> productMap)
      : id = productMap["id"],
        name = productMap["name"],
        thumbnail = productMap["thumnail"],
        price = productMap["price"],
        color = productMap["color"],
        size = productMap["size"];
}
