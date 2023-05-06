import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:accordion/accordion.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';
import '../model/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  // final cartController = Get.put(CartController());
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);

  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);

  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);

  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  bool boolDescription = false;
  bool boolRating = false;
  bool boolComment = false;

  var amount = 1;

  addCart(data) {
    // var cartModel = CartModel.fromMap(data);
  }

  ProductModel product = ProductModel(
      id: "1",
      name: "name 1",
      thumbnail: "test1",
      thumbnail1: "test1",
      thumbnail2: "test1",
      thumbnail3: "test1",
      price: "1000",
      color: "black",
      size: "41",
      description: "test",
      promotion: "test1",
      amount: "test1",
      brand: "test1",
      category: "test1");

  // List<Product> _products = [
  //   Product(
  //       id: 1,
  //       title: "Apple",
  //       price: 20.0,
  //       imgUrl: "https://img.icons8.com/plasticine/2x/apple.png",
  //       qty: 1),
  //   Product(
  //       id: 2,
  //       title: "Banana",
  //       price: 40.0,
  //       imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
  //       qty: 1),
  //   Product(
  //       id: 3,
  //       title: "Orange",
  //       price: 20.0,
  //       imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
  //       qty: 1),
  //   Product(
  //       id: 4,
  //       title: "Melon",
  //       price: 40.0,
  //       imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
  //       qty: 1),
  //   Product(
  //       id: 5,
  //       title: "Avocado",
  //       price: 25.0,
  //       imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
  //       qty: 1),
  // ];

  //  void changeBoolDescription() {
  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<ProductModel>(
    //   context,
    //   listen: false,
    // ); // whole build will run when something changes, consumer way when some sub part runs again

    final cart = Provider.of<Cart>(context, listen: false);
    var cartData = Provider.of<Cart>(context);

    // final cart = Provider.of<CartProvider>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFAFAFA),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            reverse: true,
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                // reverse: true,
                children: [
                  Container(
                    height: 300,
                    margin:
                        new EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                    child: PageView.builder(
                        itemCount: 2,
                        pageSnapping: true,
                        itemBuilder: (context, pagePosition) {
                          return ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            child: Image.network(
                                Get.arguments['data']!.thumbnail ??
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkMIP6oKcFG_IEh1zx9dIN0vMnOpKKlRPC-A&usqp=CAU',
                                width: double.infinity,
                                height: 150,
                                fit: BoxFit.fill),
                          );
                        }),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "${Get.arguments['data']!.name} ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "${Get.arguments['data']!.brand}  ",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              " ${Get.arguments['data']!.price}  ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            Text(
                              "- ${Get.arguments['data']!.promotion}vnd  ",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [Text("${Get.arguments['data']!.description} ")],
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 16),
                    width: double.infinity,
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(right: 16),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(40),

                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Color.fromRGBO(207, 207, 207, 1)
                                  //         .withOpacity(0.5),
                                  //     spreadRadius: 1,
                                  //     blurRadius: 1,
                                  //     offset: Offset(
                                  //         0, 2), // changes position of shadow
                                  //   ),
                                  // ]
                                ),
                                // child: Center(
                                //   child: Icon(
                                //     Icons.auto_graph,
                                //     color: Colors.black,
                                //     size: 24.0,
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(right: 16),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color:
                                        Get.arguments['data']!.color == "black"
                                            ? Colors.black
                                            : Colors.green,
                                    borderRadius: BorderRadius.circular(40),
                                    border:
                                        Border.all(color: Colors.red, width: 1),
                                    // border: Border.all(
                                    //     color: Colors.deepOrangeAccent, width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(207, 207, 207, 1)
                                            .withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                // child: Center(
                                //   child: Icon(
                                //     Icons.auto_graph,
                                //     color: Colors.black,
                                //     size: 24.0,
                                //   ),
                                // ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.only(right: 16),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(40),
                                  // border: Border.all(
                                  //     color: Colors.deepOrangeAccent,
                                  //     width: 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              // child: Center(
                              //   child: Icon(
                              //     Icons.auto_graph,
                              //     color: Colors.black,
                              //     size: 24.0,
                              //   ),
                              // ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 16),
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(right: 16),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Color.fromRGBO(207, 207, 207, 1)
                                  //         .withOpacity(0.5),
                                  //     spreadRadius: 1,
                                  //     blurRadius: 1,
                                  //     offset: Offset(
                                  //         0, 2), // changes position of shadow
                                  //   ),
                                  // ]
                                ),
                                child: Center(child: Text("39")),
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.only(right: 16),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(child: Text("40")),
                            ),
                          ),
                          GestureDetector(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.only(right: 16),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.red, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                  child:
                                      Text("${Get.arguments['data']!.size}")),
                            ),
                          ),
                          GestureDetector(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.only(right: 16),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(child: Text("42")),
                            ),
                          ),
                          GestureDetector(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.only(right: 16),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(child: Text("43")),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(right: 16),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //     color: Colors.deepOrangeAccent,
                                    //     width: 2),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.orange,

                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                child: Center(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (amount > 1) {
                                    amount = amount - 1;
                                  }
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(right: 8),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 223, 223, 223),
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //     color: Colors.deepOrangeAccent,
                                    //     width: 2),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 221, 221, 221),

                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_left,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Text("${amount}"),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  amount = amount + 1;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(left: 8),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 221, 219, 219),
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //     color: Colors.deepOrangeAccent,
                                    //     width: 2),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(255, 233, 232, 232),

                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        child: Row(
                          children: [],
                        ),
                      )
                    ]),
                  ),
                  Text("${product.name}"),
                  Container(
                      height: 40,
                      margin: const EdgeInsets.only(top: 40, bottom: 40),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),

                        // onPressed: () {
                        //   context
                        //       .read<CartBloc>()
                        //       .add(CartProductAdded(product));
                        // },
                        onPressed: () {
                          cart.addItems(
                              Get.arguments['data']!.name,
                              Get.arguments['data']!.id,
                              int.parse(Get.arguments['data']!.price)
                                  as double);
                          // ScaffoldMessenger.of(context)
                          //     .hideCurrentSnackBar();
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(
                          //     content: Text(
                          //         "Added ${Get.arguments['data']!.id} to Cart"),
                          //     duration: const Duration(milliseconds: 1400),
                          //     action: SnackBarAction(
                          //       label: "Undo ",
                          //       onPressed: () {
                          //         cart.removeSingleItem(
                          //             Get.arguments['data']!.id);
                          //       },
                          //     ),
                          //   ),
                          // );
                        },

                        // Get.arguments['data']
                        icon: const Icon(Icons
                            .shopping_cart), //icon data for elevated button
                        label: Text("${cartData.itemCount}"), //label text
                      )),

                  Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 40, bottom: 40),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),

                        onPressed: () {
                          Get.toNamed(
                            "/cart",
                          );
                        },
                        icon: Icon(Icons
                            .shopping_cart), //icon data for elevated button
                        label: Text("To cart"), //label text
                      )),
                  // Accordion(
                  //     maxOpenSections: 2,
                  //     headerBackgroundColorOpened: Colors.white,
                  //     scaleWhenAnimating: true,
                  //     openAndCloseAnimation: true,
                  //     headerPadding:
                  //         const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  //     // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  //     // sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  //     children: [
                  //       AccordionSection(
                  //         isOpen: true,
                  //         leftIcon: const Icon(Icons.compare_rounded,
                  //             color: Colors.white),
                  //         header:
                  //             Text('Description Product', style: _headerStyle),
                  //         contentBorderColor: const Color(0xffffffff),
                  //         headerBackgroundColorOpened: Colors.amber,
                  //         content: Text("dafs"),
                  //       ),
                  //     ]),
                  // Accordion(
                  //     maxOpenSections: 2,
                  //     headerBackgroundColorOpened: Colors.white,
                  //     scaleWhenAnimating: true,
                  //     openAndCloseAnimation: true,
                  //     headerPadding:
                  //         const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  //     // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  //     // sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  //     children: [
                  //       AccordionSection(
                  //         isOpen: true,
                  //         leftIcon: const Icon(Icons.compare_rounded,
                  //             color: Colors.white),
                  //         header: Text('Rating Product', style: _headerStyle),
                  //         contentBorderColor: const Color(0xffffffff),
                  //         headerBackgroundColorOpened: Colors.amber,
                  //         content: Text("dafs"),
                  //       ),
                  //     ]),
                  // Accordion(
                  //     maxOpenSections: 2,
                  //     headerBackgroundColorOpened: Colors.black54,
                  //     scaleWhenAnimating: true,
                  //     openAndCloseAnimation: true,
                  //     headerPadding:
                  //         const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  //     // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                  //     // sectionClosingHapticFeedback: SectionHapticFeedback.light,
                  //     children: [
                  //       AccordionSection(
                  //         isOpen: true,
                  //         leftIcon: const Icon(Icons.compare_rounded,
                  //             color: Colors.white),
                  //         header: Text('Comment Product', style: _headerStyle),
                  //         contentBorderColor: const Color(0xffffffff),
                  //         headerBackgroundColorOpened: Colors.amber,
                  //         content: Text("dafs"),
                  //       ),
                  //     ]),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: EdgeInsets.only(right: 16),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(
                                    //     color: Colors.deepOrangeAccent,
                                    //     width: 2),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(207, 207, 207, 1)
                                            .withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ]),
                                child: Center(
                                  child: Icon(
                                    Icons.description_outlined,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Description product",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () async {
                            setState(() {
                              boolDescription = !boolDescription;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.all(5),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(10),
                                // border: Border.all(
                                //     color: Colors.deepOrangeAccent,
                                //     width: 2),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(207, 207, 207, 1)
                                        .withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ]),
                            child: Center(
                              child: Icon(
                                Icons.arrow_right_outlined,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: boolDescription ? 16 : 0,
                          bottom: boolDescription ? 16 : 0),
                      child: Column(children: [
                        Text(boolDescription
                            ? "${Get.arguments['data']!.description} "
                            : "")
                      ]),
                    ),
                  ]),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: EdgeInsets.only(right: 16),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white54,
                                      borderRadius: BorderRadius.circular(10),
                                      // border: Border.all(
                                      //     color: Colors.deepOrangeAccent,
                                      //     width: 2),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(207, 207, 207, 1)
                                                  .withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ]),
                                  child: Center(
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Rating Product",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              setState(() {
                                boolRating = !boolRating;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.all(5),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.deepOrangeAccent,
                                  //     width: 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: boolRating ? 16 : 0,
                            bottom: boolRating ? 16 : 0),
                        child: Column(
                            children: [Text(boolRating ? "No data" : "")]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: EdgeInsets.only(right: 16),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white54,
                                      borderRadius: BorderRadius.circular(10),
                                      // border: Border.all(
                                      //     color: Colors.deepOrangeAccent,
                                      //     width: 2),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(207, 207, 207, 1)
                                                  .withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ]),
                                  child: Center(
                                    child: Icon(
                                      Icons.comment_outlined,
                                      color: Colors.black,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Comment Product",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              setState(() {
                                boolComment = !boolComment;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.all(5),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.deepOrangeAccent,
                                  //     width: 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: boolComment ? 16 : 0,
                            bottom: boolComment ? 16 : 0),
                        child: Column(
                            children: [Text(boolComment ? "No data" : "")]),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: EdgeInsets.only(right: 16),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white54,
                                      borderRadius: BorderRadius.circular(10),
                                      // border: Border.all(
                                      //     color: Colors.deepOrangeAccent,
                                      //     width: 2),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromRGBO(207, 207, 207, 1)
                                                  .withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ]),
                                  child: Center(
                                    child: Icon(
                                      Icons.auto_graph,
                                      color: Colors.black,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Relation Product",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          GestureDetector(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.all(5),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //     color: Colors.deepOrangeAccent,
                                  //     width: 2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(207, 207, 207, 1)
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ]),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 16),
                          height: 1000,
                          child: GridView.count(
                            scrollDirection: Axis.vertical,
                            primary: false,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            childAspectRatio: (1 / 1.4),
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    height: 500,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      children: [
                                        // Image
                                        //     .network(
                                        //   "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                        //   height:
                                        //       230,
                                        //   width: double
                                        //       .maxFinite,
                                        // ),
                                        Container(
                                          height: 230,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                            ),
                                          ),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 4, bottom: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Ho chi minh",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            )),

                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 4, bottom: 8),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Giay nam the thao",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            )),

                                        Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "10.000vnd",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "20.000vnd",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      decoration: TextDecoration
                                                          .underline),
                                                )
                                              ],
                                            )),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    height: 500,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(207, 207, 207, 1)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ]),
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      children: [
                                        // Image
                                        //     .network(
                                        //   "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                        //   height:
                                        //       230,
                                        //   width: double
                                        //       .maxFinite,
                                        // ),
                                        Container(
                                          height: 230,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image(
                                              image: NetworkImage(
                                                  'https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab'),
                                            ),
                                          ),
                                        ),

                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 4, bottom: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Ho chi minh",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            )),

                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 4, bottom: 8),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Giay nam the thao",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            )),

                                        Container(
                                            margin: EdgeInsets.only(left: 4),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "10.000vnd",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "-",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey),
                                                ),
                                                Text(
                                                  "20.000vnd",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.grey,
                                                      decoration: TextDecoration
                                                          .underline),
                                                )
                                              ],
                                            )),
                                      ],
                                    )),
                              ),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
