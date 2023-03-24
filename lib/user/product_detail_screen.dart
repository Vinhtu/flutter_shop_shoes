import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class ProductDetailScreen extends StatelessWidget {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFAFAFA),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            reverse: true,
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
                            "Nike                            ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Giay nam the thao          ",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "304.000vnd",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange),
                          ),
                          Text(
                            "-100.000vnd",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                        "Giày Đá Banh Sân Cỏ Nhân Tạo được thiết kế từ cao su cao cấp, bề mặt bằng da nhân tạo cho độ bám sàn tốt cũng như có độ bền cùng độ dẻo dai cao, là chọn lựa lý tưởng của những bạn nam yêu thích thể thao. Đặc biệt, thiết kế chủ đạo màu đen chuối nỏi bật, bắt mắt cùng logo ấn tượng, làm toát lên phong cách mạnh mẽ của cầu thủ sân cỏ")
                  ],
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
                                      color: Color.fromARGB(255, 221, 221, 221),

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
                            child: Text("1"),
                          ),
                          GestureDetector(
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
                                      color: Color.fromARGB(255, 233, 232, 232),

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
                    height: 40,
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),

                      onPressed: () {
                        print("You pressed Icon Elevated Button");
                      },
                      icon: Icon(
                          Icons.shopping_cart), //icon data for elevated button
                      label: Text("Add to cart"), //label text
                    )),
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
                                offset:
                                    Offset(0, 2), // changes position of shadow
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
                                offset:
                                    Offset(0, 2), // changes position of shadow
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
                                offset:
                                    Offset(0, 2), // changes position of shadow
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
                                  width: MediaQuery.of(context).size.width * 1,
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
                                                    fontWeight: FontWeight.bold,
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
                                  width: MediaQuery.of(context).size.width * 1,
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
                                                    fontWeight: FontWeight.bold,
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
        ));
  }
}
