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
                  height: 200,
                  margin:
                      new EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: PageView.builder(
                      itemCount: 2,
                      pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Container(
                            margin: EdgeInsets.all(10),
                            child: Image.network(
                              images[pagePosition],
                              height: 500,
                              width: double.infinity,
                            ));
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [Text("Nike"), Text("giay nam the thao")],
                      ),
                      Column(
                        children: [Text("304.000vnd"), Text("-100.000vnd")],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.backpack,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                          Text("4.9")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.backpack,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                          Text("1"),
                          Container(
                            child: Icon(
                              Icons.backpack,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.backpack,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        Text("Add to cart")
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.backpack,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                            Text("Shipping")
                          ],
                        ),
                        Container(
                          child: Icon(
                            Icons.backpack,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text("shiper"),
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.backpack,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ),
                            Text("Shipping")
                          ],
                        ),
                        Container(
                          child: Icon(
                            Icons.backpack,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text("shiper"),
                    ),
                    Container(
                      child: Text("Nhung san pham lien quan"),
                    ),
                    Container(
                        height: 1000,
                        child: GridView.count(
                          scrollDirection: Axis.vertical,
                          primary: false,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          childAspectRatio: (1 / 1.4),
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                    height: 500,
                                    color: Colors.blue,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      children: [
                                        Image.network(
                                            "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                            height: 200,
                                            width: double.maxFinite),
                                        Text("Ho chi minh"),
                                        Text("Ten giay"),
                                        Row(
                                          children: [
                                            Text("10.000vnd"),
                                            Text("20.000vnd")
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                            ),
                            Container(
                              height: 250,
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
                            ),
                            Container(
                              height: 250,
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
                            ),
                            Container(
                              height: 250,
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
                            ),
                            Container(
                              height: 250,
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
                            ),
                            Container(
                              height: 250,
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
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
