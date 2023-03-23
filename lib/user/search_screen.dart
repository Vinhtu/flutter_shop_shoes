import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// body: new Container(
//         child: new GridView.count(
//           crossAxisCount: 2,
//           childAspectRatio: (itemWidth / itemHeight),
//           controller: new ScrollController(keepScrollOffset: false),
//           shrinkWrap: true,
//           scrollDirection: Axis.vertical,
//           children: widgetList.map((String value) {
//             return new Container(
//               color: Colors.green,
//               margin: new EdgeInsets.all(1.0),
//               child: new Center(
//                 child: new Text(
//                   value,
//                   style: new TextStyle(
//                     fontSize: 50.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             );
//           }).toList(),
//         ),

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    "All",
    "Giay the thao",
    "Giay nam",
    "Giay nu",
    "Giay cao got",
    "Giay boot",
    "Giay nam",
    "Giay nu",
    "Giay cao got",
    "Giay boot",
  ];
  final List<String> itemss = [
    'Bình thuong',
    'Tu cao den thap',
    'Tu thap den cao',
  ];
  Map<String, bool> values = {
    'foo': true,
    'bar': false,
  };
  String? selectedValue;
  int current_select = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFAFAFA),
        body: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: ListView(
              shrinkWrap: true,
              reverse: true,
              children: [
                Container(
                    margin:
                        new EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.backpack,
                              color: Colors.black,
                              size: 24.0,
                            ),
                            Text("Home"),
                            Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 24.0,
                            )
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF4F6F0)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: new InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Search',
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  width: double.infinity,
                                  // height: double.infinity,
                                  child: Column(children: [
                                    Divider(),
                                    Container(
                                      margin: const EdgeInsets.only(top: 1),
                                      width: double.infinity,
                                      height: 500,
                                      child: PageView(
                                        controller: pageController,
                                        children: [
                                          SingleChildScrollView(
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(8.0),
                                                    ),
                                                    child: Image.network(
                                                        'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                                                        width: double.infinity,
                                                        height: 200,
                                                        fit: BoxFit.fill),
                                                  ),
                                                  Container(
                                                      height: 1000,
                                                      child: GridView.count(
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        primary: false,
                                                        crossAxisSpacing: 10,
                                                        mainAxisSpacing: 10,
                                                        crossAxisCount: 2,
                                                        childAspectRatio:
                                                            (1 / 1.4),
                                                        children: <Widget>[
                                                          Center(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(0),
                                                              child: Container(
                                                                  height: 500,
                                                                  color: Colors
                                                                      .blue,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      1,
                                                                  child: Column(
                                                                    children: [
                                                                      Image.network(
                                                                          "https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
                                                                          height:
                                                                              200,
                                                                          width:
                                                                              double.maxFinite),
                                                                      Text(
                                                                          "Ho chi minh"),
                                                                      Text(
                                                                          "Ten giay"),
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                              "10.000vnd"),
                                                                          Text(
                                                                              "20.000vnd")
                                                                        ],
                                                                      )
                                                                    ],
                                                                  )),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 250,
                                                            color: Colors
                                                                .teal[200],
                                                            child: const Text(
                                                                'Heed not the rabble'),
                                                          ),
                                                          Container(
                                                            height: 250,
                                                            color: Colors
                                                                .teal[200],
                                                            child: const Text(
                                                                'Heed not the rabble'),
                                                          ),
                                                          Container(
                                                            height: 250,
                                                            color: Colors
                                                                .teal[200],
                                                            child: const Text(
                                                                'Heed not the rabble'),
                                                          ),
                                                          Container(
                                                            height: 250,
                                                            color: Colors
                                                                .teal[200],
                                                            child: const Text(
                                                                'Heed not the rabble'),
                                                          ),
                                                          Container(
                                                            height: 250,
                                                            color: Colors
                                                                .teal[200],
                                                            child: const Text(
                                                                'Heed not the rabble'),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
