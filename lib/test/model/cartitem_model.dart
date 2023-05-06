import 'account_model.dart';
import 'note_model.dart';
import 'product_model.dart';

class CartitemModel {
  final String id;
  final ProductModel product;
  final String amount;

  CartitemModel({
    required this.id,
    required this.product,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'product': product,
      'amount': amount,
    };
  }

  CartitemModel.fromMap(Map<String, dynamic> cartitem)
      : id = cartitem["id"],
        product = cartitem["product"],
        amount = cartitem["amount"];
}
