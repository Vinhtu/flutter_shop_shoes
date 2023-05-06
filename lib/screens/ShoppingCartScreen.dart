import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/CartModel.dart';
import '../widgets/cart_item.dart';

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return EmptyShoppingCartScreen();
  }
}

class EmptyShoppingCartScreen extends StatefulWidget {
  @override
  _EmptyShoppingCartScreenState createState() =>
      _EmptyShoppingCartScreenState();
}

// class _EmptyShoppingCartScreenState extends State<EmptyShoppingCartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         decoration: BoxDecoration(color: Colors.white),
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: 70,
//               child: Container(
//                 color: Color(0xFFFFFFFF),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               height: 250,
//               child: Image.asset(
//                 "assets/images/empty_shopping_cart.png",
//                 height: 250,
//                 width: double.infinity,
//               ),
//             ),
//             SizedBox(
//               height: 40,
//               child: Container(
//                 color: Color(0xFFFFFFFF),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               child: Text(
//                 "You haven't anything to cart",
//                 style: TextStyle(
//                   color: Color(0xFF67778E),
//                   fontFamily: 'Roboto-Light.ttf',
//                   fontSize: 20,
//                   fontStyle: FontStyle.normal,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class _EmptyShoppingCartScreenState extends State<EmptyShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    var cartData = Provider.of<CartModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("In your cart",
                          style: TextStyle(fontSize: 20)),
                      const Spacer(),
                      Chip(
                        label: Text(
                          cartData.totalPrice.toString(), // text value
                          style: TextStyle(
                            color: Theme.of(context)
                                .primaryTextTheme
                                .headline6
                                ?.color,
                          ),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      // OrderButton(cartData: cartData)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: cartData.itemCount,
                  itemBuilder: (context, index) {
                    return ACartItem(
                        prodId: cartData.items.keys.toList()[index],
                        id: cartData.items.values.toList()[index].id,
                        price: cartData.items.values.toList()[index].price,
                        quantity:
                            cartData.items.values.toList()[index].quantity,
                        title: cartData.items.values.toList()[index].title,
                        thumbnail:
                            cartData.items.values.toList()[index].thumbnail);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20, right: 10),
        child: Row(
          children: <Widget>[
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    side: BorderSide(color: Color(0xFFfef2f2))),
                primary: Color(0xFFfef2f2),
              ),
              onPressed: () {
                cartData.clear();
              },
              child: Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                child: Text("Clear cart".toUpperCase(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFff665e))),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    side: BorderSide(color: Color(0xFFff665e))),
                primary: Color(0xFFff665e),
              ),
              onPressed: () {},
              child: Container(
                padding:
                    EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                child: Text("Check out".toUpperCase(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF))),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
