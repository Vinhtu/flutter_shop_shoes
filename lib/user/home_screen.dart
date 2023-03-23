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
                                    SizedBox(
                                      height: 60,
                                      width: double.infinity,
                                      child: ListView.builder(
                                          physics:
                                              const BouncingScrollPhysics(),
                                          itemCount: items.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (ctx, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  current_select = index;
                                                  pageController
                                                      .jumpToPage(index);
                                                });
                                              },
                                              child: AnimatedContainer(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                margin: EdgeInsets.all(5),
                                                width: 80,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  color: current_select == index
                                                      ? Colors.white70
                                                      : Colors.white54,
                                                  borderRadius:
                                                      current_select == index
                                                          ? BorderRadius
                                                              .circular(15)
                                                          : BorderRadius
                                                              .circular(10),
                                                  border: current_select ==
                                                          index
                                                      ? Border.all(
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                          width: 2)
                                                      : null,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    items[index],
                                                    style: TextStyle(
                                                        color: current_select ==
                                                                index
                                                            ? Colors.black
                                                            : Colors.blue),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
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
                                                      child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              GestureDetector(
                                                                child:
                                                                    AnimatedContainer(
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          300),
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              5),
                                                                  width: 80,
                                                                  height: 45,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .white54,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      border: Border.all(
                                                                          color: Colors
                                                                              .deepOrangeAccent,
                                                                          width:
                                                                              2)),
                                                                  child: Center(
                                                                    child: Icon(
                                                                      Icons
                                                                          .backpack,
                                                                      color: Colors
                                                                          .black,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text("Top Sale")
                                                            ],
                                                          ),
                                                          GestureDetector(
                                                            child:
                                                                AnimatedContainer(
                                                              duration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          300),
                                                              margin: EdgeInsets
                                                                  .all(5),
                                                              width: 80,
                                                              height: 45,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white54,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .deepOrangeAccent,
                                                                      width:
                                                                          2)),
                                                              child: Center(
                                                                child: Icon(
                                                                  Icons
                                                                      .backpack,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )),
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
                                                  Container(
                                                    height: 120,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 16.0),
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        color: Colors.orange),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Icon(
                                                            Icons.backpack,
                                                            color: Colors.black,
                                                            size: 24.0,
                                                          ),
                                                          Text("Free ship"),
                                                          Icon(
                                                            Icons.search,
                                                            color: Colors.black,
                                                            size: 24.0,
                                                          )
                                                        ]),
                                                  ),
                                                  Container(
                                                      child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              GestureDetector(
                                                                child:
                                                                    AnimatedContainer(
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          300),
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              5),
                                                                  width: 80,
                                                                  height: 45,
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .white54,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      border: Border.all(
                                                                          color: Colors
                                                                              .deepOrangeAccent,
                                                                          width:
                                                                              2)),
                                                                  child: Center(
                                                                    child: Icon(
                                                                      Icons
                                                                          .backpack,
                                                                      color: Colors
                                                                          .black,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text("Top Sale")
                                                            ],
                                                          ),
                                                          GestureDetector(
                                                            child:
                                                                AnimatedContainer(
                                                              duration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          300),
                                                              margin: EdgeInsets
                                                                  .all(5),
                                                              width: 80,
                                                              height: 45,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white54,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .deepOrangeAccent,
                                                                      width:
                                                                          2)),
                                                              child: Center(
                                                                child: Icon(
                                                                  Icons
                                                                      .backpack,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )),
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
                                          SingleChildScrollView(
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    // margin:
                                                    //     const EdgeInsets.only(top: 10),
                                                    width: double.infinity,
                                                    // height: 500,
                                                    child: Column(
                                                      // mainAxisAlignment:
                                                      //     MainAxisAlignment.center,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border.all(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    width: 1),
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: IconButton(
                                                                icon: const Icon(
                                                                    Icons
                                                                        .sort_outlined),
                                                                onPressed: () =>
                                                                    _dialogBuilder(
                                                                        context),
                                                                color: Colors
                                                                    .black,
                                                                // size: 24.0,
                                                              ),
                                                            ),
                                                            Center(
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton2(
                                                                  isExpanded:
                                                                      true,
                                                                  hint: Row(
                                                                    children: const [
                                                                      // Icon(
                                                                      //   Icons.list,
                                                                      //   size: 16,
                                                                      //   color: Color.fromARGB(255, 0, 0, 0),
                                                                      // ),
                                                                      SizedBox(
                                                                        width:
                                                                            4,
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          'Select Item',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                          ),
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  items: itemss
                                                                      .map((item) =>
                                                                          DropdownMenuItem<
                                                                              String>(
                                                                            value:
                                                                                item,
                                                                            child:
                                                                                Text(
                                                                              item,
                                                                              style: const TextStyle(
                                                                                fontSize: 14,
                                                                                fontWeight: FontWeight.w100,
                                                                                color: Color.fromARGB(255, 0, 0, 0),
                                                                              ),
                                                                              overflow: TextOverflow.ellipsis,
                                                                            ),
                                                                          ))
                                                                      .toList(),
                                                                  value:
                                                                      selectedValue,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {
                                                                      selectedValue =
                                                                          value
                                                                              as String;
                                                                    });
                                                                  },
                                                                  buttonStyleData:
                                                                      ButtonStyleData(
                                                                    height: 50,
                                                                    width: 160,
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            14,
                                                                        right:
                                                                            14),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              14),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Colors
                                                                            .black26,
                                                                      ),
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          255),
                                                                    ),
                                                                    elevation:
                                                                        2,
                                                                  ),
                                                                  iconStyleData:
                                                                      const IconStyleData(
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_forward_ios_outlined,
                                                                    ),
                                                                    iconSize:
                                                                        14,
                                                                    iconEnabledColor:
                                                                        Color.fromARGB(
                                                                            255,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    iconDisabledColor:
                                                                        Colors
                                                                            .grey,
                                                                  ),
                                                                  dropdownStyleData:
                                                                      DropdownStyleData(
                                                                          maxHeight:
                                                                              200,
                                                                          width:
                                                                              200,
                                                                          padding:
                                                                              null,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(14),
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                255,
                                                                                255),
                                                                          ),
                                                                          elevation:
                                                                              8,
                                                                          offset: const Offset(
                                                                              -20,
                                                                              0),
                                                                          scrollbarTheme:
                                                                              ScrollbarThemeData(
                                                                            radius:
                                                                                const Radius.circular(40),
                                                                            thickness:
                                                                                MaterialStateProperty.all(6),
                                                                            thumbVisibility:
                                                                                MaterialStateProperty.all(true),
                                                                          )),
                                                                  menuItemStyleData:
                                                                      const MenuItemStyleData(
                                                                    height: 40,
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            14,
                                                                        right:
                                                                            14),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                            height: 1000,
                                                            child:
                                                                GridView.count(
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              primary: false,
                                                              crossAxisSpacing:
                                                                  10,
                                                              mainAxisSpacing:
                                                                  10,
                                                              crossAxisCount: 2,
                                                              childAspectRatio:
                                                                  (1 / 1.4),
                                                              children: <
                                                                  Widget>[
                                                                Center(
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(0),
                                                                    child: Container(
                                                                        height: 500,
                                                                        color: Colors.blue,
                                                                        width: MediaQuery.of(context).size.width * 1,
                                                                        child: Column(
                                                                          children: [
                                                                            Image.network("https://cf.shopee.vn/file/ab598875a876f58e66efac3cddb976ab",
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
                                                                  color: Colors
                                                                          .teal[
                                                                      200],
                                                                  child: const Text(
                                                                      'Heed not the rabble'),
                                                                ),
                                                                Container(
                                                                  height: 250,
                                                                  color: Colors
                                                                          .teal[
                                                                      200],
                                                                  child: const Text(
                                                                      'Heed not the rabble'),
                                                                ),
                                                                Container(
                                                                  height: 250,
                                                                  color: Colors
                                                                          .teal[
                                                                      200],
                                                                  child: const Text(
                                                                      'Heed not the rabble'),
                                                                ),
                                                                Container(
                                                                  height: 250,
                                                                  color: Colors
                                                                          .teal[
                                                                      200],
                                                                  child: const Text(
                                                                      'Heed not the rabble'),
                                                                ),
                                                                Container(
                                                                  height: 250,
                                                                  color: Colors
                                                                          .teal[
                                                                      200],
                                                                  child: const Text(
                                                                      'Heed not the rabble'),
                                                                ),
                                                              ],
                                                            )),
                                                        Container(
                                                          height: 120,
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 16.0),
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(16.0),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                              color: Colors
                                                                  .orange),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .backpack,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 24.0,
                                                                ),
                                                                Text(
                                                                    "Free ship"),
                                                                Icon(
                                                                  Icons.search,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 24.0,
                                                                )
                                                              ]),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 30),
                                            width: double.infinity,
                                            height: 500,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [Text("test 2")],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 30),
                                            width: double.infinity,
                                            height: 500,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [Text("test 2")],
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

  Future<void> _dialogBuilder(BuildContext context) {
    bool valuefirst = false;
    bool valuesecond = false;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Lua chon'),
          content: Container(
              child: Column(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text(
                'Brand',
                style: TextStyle(fontSize: 20.0),
              ),
              CheckboxListTile(
                secondary: const Icon(Icons.alarm),
                title: const Text('Nike'),
                subtitle: Text('Nike'),
                value: valuefirst,
                onChanged: (value) {
                  setState(() {
                    valuefirst == value;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                secondary: const Icon(Icons.alarm),
                title: const Text('Adidas'),
                subtitle: Text('Adidas'),
                value: valuesecond,
                onChanged: (value) {
                  setState(() {
                    valuesecond == value;
                  });
                },
              ),
              Text(
                'Money',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Dia chi',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          )),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
