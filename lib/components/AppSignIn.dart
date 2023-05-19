import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../main.dart';
import '../screens/HomeScreen.dart';
import 'AppSingUp.dart';

class AppSignIn extends StatefulWidget {
  @override
  _AppSignInState createState() => _AppSignInState();
}

class _AppSignInState extends State<AppSignIn> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool passwordVisibility = false;
  bool passworderror = false;
  bool emailerror = false;
  String passworderrortext = "";
  String emailerrortext = "";
  bool phonekeyboardvisible = false;
  bool isshowprogressindicator = false;

  @override
  Widget build(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: InkWell(
                child: Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.close),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 130,
                    height: 130,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/logoflutterbg.png"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize),
                      hintText: "Username",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordcontroller,
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFF666666),
                        size: defaultIconSize,
                      ),
                      fillColor: Color(0xFFF2F3F5),
                      hintStyle: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                      ),
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      // padding: EdgeInsets.all(17.0),
                      onPressed: () {
                        login(context);
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins-Medium.ttf',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      // color: Color(0xFFBC1F26),
                      // shape: RoundedRectangleBorder(
                      //     borderRadius: new BorderRadius.circular(15.0),
                      //     side: BorderSide(color: Color(0xFFBC1F26))),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AppSingUp()),
                        )
                      },
                      child: Container(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFFAC252B),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  login(context) async {
    if (emailcontroller.text.isEmpty) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text("Enter correct email"),
            );
          });
    } else if (passwordcontroller.text.length < 6) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text("Password length should be minimum 6"),
            );
          });
    } else {
      try {
        final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailcontroller.text, password: passwordcontroller.text);
        // ignore: unnecessary_null_comparison
        if (user != null) {
          // Navigator.of(context).pushAndRemoveUntil(
          //     MaterialPageRoute(builder: (BuildContext context) {
          //   return MyHomePage();
          // }), (route) => false);
        } else {
          return showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text("Something went wrong"),
                );
              });
        }
      } on FirebaseAuthException catch (e) {
        print(e);
        if (e.code == 'user-not-found') {
          return showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text("User not registered"),
                );
              });
        } else {
          if (e.code == 'wrong-password') {
            return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AlertDialog(
                    title: Text("Wrong Password"),
                  );
                });
          } else {
            return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(e.code),
                  );
                });
          }
        }
      }
    }
  }
}
