import 'package:equatable/equatable.dart';

import 'product_model.dart';

class CartModel extends Equatable {
  final List<ProductModel> products;

  const CartModel({this.products = const <ProductModel>[]});

  double get subtotal =>
      products.fold(0, (total, current) => total + int.parse(current.price));

  double deliveryFree(subtotal) {
    if (subtotal >= 30) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get deliveryFreString => deliveryFree(subtotal).toStringAsFixed(2);

  // List<ProductModel> products = [
  //   ProductModel(
  //       id: "1",
  //       name: "name 1",
  //       thumbnail: "test1",
  //       thumbnail1: "test1",
  //       thumbnail2: "test1",
  //       thumbnail3: "test1",
  //       price: "1000",
  //       color: "black",
  //       size: "41",
  //       description: "test",
  //       promotion: "test1",
  //       amount: "test1",
  //       brand: "test1",
  //       category: "test1"),
  //   ProductModel(
  //       id: "1",
  //       name: "name 1",
  //       thumbnail: "test1",
  //       thumbnail1: "test1",
  //       thumbnail2: "test1",
  //       thumbnail3: "test1",
  //       price: "1000",
  //       color: "black",
  //       size: "41",
  //       description: "test",
  //       promotion: "test1",
  //       amount: "test1",
  //       brand: "test1",
  //       category: "test1"),
  //   ProductModel(
  //       id: "1",
  //       name: "name 1",
  //       thumbnail: "test1",
  //       thumbnail1: "test1",
  //       thumbnail2: "test1",
  //       thumbnail3: "test1",
  //       price: "1000",
  //       color: "black",
  //       size: "41",
  //       description: "test",
  //       promotion: "test1",
  //       amount: "test1",
  //       brand: "test1",
  //       category: "test1")
  // ];

  @override
  List<Object?> get props => [products];
}
