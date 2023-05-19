import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:get/get.dart';
import '../detail_product.dart';
import '../edit_product.dart';
import '../../../service/product_admin_service.dart';

class CardProduct extends StatelessWidget {
  final String name;
  final String thumbnail;
  final String price;
  final String id;

  const CardProduct({
    Key? key,
    required this.name,
    required this.thumbnail,
    required this.price,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dollarFormatter = CurrencyTextInputFormatter(
      locale: 'en_US',
      symbol: '\$',
      decimalDigits: 0,
    );
    return GestureDetector(
        onTap: () {
          Get.to(DetailProductScreen(), arguments: [id]);
        },
        child: SizedBox(
          height: 120,
          child: Card(
            margin: const EdgeInsets.only(top: 10.0),
            color: Colors.white,
            elevation: 10,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: Image.network(
                        thumbnail.toString(),
                        height: 300, // set the height to 200 pixels
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Text(
                              name.toString().toUpperCase(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Text(
                              dollarFormatter
                                  .format(price)
                                  .toString()
                                  .toLowerCase(),
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Row(children: [
                    IconButton(
                      onPressed: () {
                        Get.to(EditProductScreen(), arguments: [id]);
                      },
                      icon: const Icon(Icons.edit),
                      color: Colors.blue,
                    ),
                    IconButton(
                  onPressed: () async {
                    // Handle delete button press
                    var response = await ProductService.deleteProduct(docId: id);
                    if (response.code != 200) {
                       ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(response.message.toString()),
                    backgroundColor: Colors.red,
                  ),
                );

                      }
                  },
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
