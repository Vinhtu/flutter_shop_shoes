// @dart=2.9
// --no-sound-null-safety
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_shoes/screens/HomeScreen.dart';
import 'package:flutter_shop_shoes/screens/ShoppingCartScreen.dart';
import 'package:flutter_shop_shoes/screens/WishListScreen.dart';
import 'package:flutter_shop_shoes/src/router/routerr.dart';
import 'package:flutter_shop_shoes/src/view/screen/all_product_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/bestsale_product_screen%20copy.dart';
import 'package:flutter_shop_shoes/src/view/screen/category_product_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/choice_address_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/dash_board_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/detail_product_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/edit_person_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/home_tab.dart';
import 'package:flutter_shop_shoes/src/view/screen/list_order.dart';
import 'package:flutter_shop_shoes/src/view/screen/login_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/note_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/order_success_screen.dart';
import 'package:flutter_shop_shoes/src/view/screen/register_screen.dart';
import 'package:flutter_shop_shoes/src/viewmodel/address_viewmodel.dart';
import 'package:flutter_shop_shoes/src/viewmodel/auth_viemodel.dart';
import 'package:flutter_shop_shoes/src/viewmodel/bottom_navigate_provider.dart';
import 'package:flutter_shop_shoes/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter_shop_shoes/src/viewmodel/login_viewmodel.dart';
import 'package:flutter_shop_shoes/src/viewmodel/product_viewmodel.dart';
import 'package:flutter_shop_shoes/src/viewmodel/user_viewmodel.dart';
import 'package:flutter_shop_shoes/src/viewmodel/whislist_viewmodel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'common_widget/AppBarWidget.dart';
import 'common_widget/BottomNavBarWidget.dart';
import 'common_widget/DrawerWidget.dart';
import 'models/CartModel.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: "AIzaSyCXfAnqS96Q2BqW2cZGuzDLHec2ZiowKtM",
  //         appId: "1:687590845115:android:8b60a792ffc45bc422579e",
  //         messagingSenderId: "",
  //         projectId: "fluttershoesshops"));
  // runApp(const MyApp());

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDM4x-vRG0fAakGtUG_JYuU9KsWs_CML_Q",
          appId: "1:314873554248:android:ec5718a45e94a172583f7d",
          messagingSenderId: "",
          projectId: "projectfinal-abdf9"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BottomNavigationProvider()),
          ChangeNotifierProvider(create: (_) => CartViewModel()),
          ChangeNotifierProvider(create: (_) => AddressViewModel()),
          ChangeNotifierProvider(create: (_) => WishListViewModel()),
          ChangeNotifierProvider(create: (_) => UserViewModel()),
          ChangeNotifierProvider(create: (_) => LoginViewModel()),
          ChangeNotifierProvider(
              create: (_) => ProductViewModel()..getListProduct()),
          ChangeNotifierProvider(create: (_) => AuthViewModel())
        ],
        child: GetMaterialApp(
          home: DashBoardScreen(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: Routerr.onGenerateRouter,
          getPages: [
            GetPage(name: '/product-detail', page: () => DetailProductScreen()),
            // GetPage(name: '/cart', page: () => ShoppingCartScreen()),
            GetPage(name: '/home', page: () => HomeTab()),
            GetPage(name: '/', page: () => DashBoardScreen()),
            GetPage(name: '/chooseaddress', page: () => ChoiceAddressScreen()),
            GetPage(name: '/register', page: () => RegisterScreen()),

            GetPage(name: '/login', page: () => LoginScreen()),
            GetPage(name: '/order-success', page: () => OrderSuccessScreen()),
            GetPage(name: '/order-fail', page: () => OrderSuccessScreen()),
            GetPage(name: '/list-order', page: () => ListOrderScreen()),
            GetPage(
                name: '/list-notifications', page: () => NotifycationScreen()),

            GetPage(
                name: '/category-product', page: () => CategoryProductScreen()),

            GetPage(name: '/all-product', page: () => AllProductScreen()),

            GetPage(name: '/best-saller', page: () => BestSalerProductScreen()),
            GetPage(name: '/edit-person', page: () => EditPersonScreen()),

            // Dynamic route
          ],
        ));
  }
}

int currentIndex = 0;

void navigateToScreens(int index) {
  currentIndex = index;
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageNewState createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePage> {
  final List<Widget> viewContainer = [
    HomeScreen(),
    WishListScreen(),
    ShoppingCartScreen(),
    // HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        currentIndex = index;
        // navigateToScreens(index);
      });
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBarWidget(context),
        drawer: DrawerWidget(),
        body: IndexedStack(
          index: currentIndex,
          children: viewContainer,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // label: Text(
              //   'Home',
              //   style: TextStyle(color: Color(0xFF545454)),
              // ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Wish List',
              // title: Text(
              //   'Wish List',
              //   style: TextStyle(color: Color(0xFF545454)),
              // ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingBag),
              label: 'Cart',
              // title: Text(
              //   'Cart',
              //   style: TextStyle(color: Color(0xFF545454)),
              // ),
            ),
          ],
          currentIndex: currentIndex,
          selectedItemColor: Color(0xFFAA292E),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
