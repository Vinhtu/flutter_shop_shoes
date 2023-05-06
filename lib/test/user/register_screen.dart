import 'dart:js';
import 'package:flutter/material.dart';

import 'package:path/path.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_screen.dart';

// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
enum Fruit { address, paypal }

class RegisterScreen extends StatelessWidget {
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
    "https://wallpaperaccess.com/full/2637581.jpg"
  ];

  RegisterScreen({super.key});

  Fruit? _fruit = Fruit.address;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool passwordVitibility = false;
  bool passwordError = false;
  bool emailError = false;
  String passworderrortext = "";
  String emailerrortext = "";
  bool phonekeyboardvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFAFAFA),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(24),
            child: ListView(
              shrinkWrap: true,
              // reverse: true,
              children: [
                Column(
                  children: [],
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          child: Image.network(
                              'https://lh3.googleusercontent.com/p/AF1QipN-LJfCDc518VQfaiIEX--iKNjiFl1kMksJMfft=w1080-h608-p-no-v0',
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Shop Shoes",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Connect Fashion",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 64),
                  child: Text(
                    "Please login to the app",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    controller: emailController,
                    // initialValue: emailController.text,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    autofocus: false,
                    controller: passwordController,
                    // initialValue: passwordController.text,
                    decoration: InputDecoration(
                      hintText: 'Pasword',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    initialValue: '',
                    decoration: InputDecoration(
                      hintText: 'Full name',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 16),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    initialValue: '',
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You have account ?"),
                      Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  ),
                ),
                Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.orange,
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () async {
                        await registeruser(context);
                      },
                      child: const Text("Register"),
                    )),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 24, top: 24),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: NetworkImage(
                                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABZVBMVEX////qQzU0qFNChfT7vAUxffTQ4PI4gPSdu/ixyPr7ugDqQDH7uAD/vQDqPzDpOioaokMrpk3pNiUopUv86ejpMB3pMR7pLBdDg/zU6tkRoT/4xsP97+773tzpOCf1raj8wgDB4ciXzqTd7+EzqkWj06761tTyl5LrTD/zo57tYVf++PfsWU7+89r914X/9+hdtnPy+fRsvH/yk43taV/wiIHsVUnoJgz2ubX+7cjpNzf//fX+6sD80W/i7PZCh+1OsWcWp1d/q+60271RsmnvenLucmr4zMn1s6/+57L3pAD7wi3uZDryhDT8yEj3pCjsVjzwdTn1lTD5ryPyhzX93JT1ly78zmRcl+250fBRkuj81n3924/94aeRs/OWuuzo2ZeWsTpdrE3UuSeytTZ/sEfnuxtYrE/V4/XLuC1wou2otDyGxpU/i9s8lLk4now+kMk6mp82onQ7l6s3oIA9k745nJJuvr5FAAAK4UlEQVR4nO2baXvbxhGAIYiyYoEHCIhESUqkSQriJSckJcpKndi0qctVz7Ru7BzumTR12ab37y8OHiCJXcwusIulyvdDrueJgNczmJk9JEkbNmzYsGHDhg3R0Dk4Ll3cVloNh1arclEqHR904n6tKOgcllpXJ82ykdcsyhmHctn653zeyDTbg9bFYdzvSM3BTeWqaeS0clpRtvxR0pmyljPOB7drp9kpnZ5r+XIGpbYkmtFymbPWcdxvDeaw1TbyQLk56XI+d317EPfLB3N8upUrpwntZpZari225PGpkiMO3rKkcXYhaJHtVJph9WaRvBLwm9wfaFoUei4Z4/w2bqNFjq+NTGR6DoqWa4jzRZbaOdragqOcH4jhWDrPs/CzyRgCON6c5KL7/Hwc8414C+vhmcHSz6acb8XndzAwWOWnF615E5NgRYu4fqJQjOs4PsfDkzwfP5uMUeEu2OKSoHPyJ/tc/fabGlc/i7TBs+LcMu0QKPJtXl9j5zoXg59FOl/iIniocCqhPhinHARvmfd4HNoJ80wdxJShU9IZtkvHTpt7DV1GMViuHPe34vsE5+QGzASPqbeYIkUxWDX/mydx1pgZSpqVYMmI281BybASvBVEkFkEK4II3vsIMhO8EERwU2RouXkSt5sDuwjuxz6pOSgaK8EO8giXK+wiKJ2IMaox+walq3LccjYMI1iJeT3owjCCx0L0CYaCnUgOdafvmXYu09h/SRP9WIYpKp1FsuJV0vatmUz7anDaaLUap6eDq5OMe9MG9L+zi6BUCb9xb9+VaV63SqtXguzbUk0j+OyDZQQPw1aZdNnYOi3hdsf2L67y+Ls37Bq9RTPcR5gx2hXI290MFPQpMssISo0w05qilRvwy2o3qJsOLL9B6TBEo0jnzi/InnbQKPvcVmEqGGJaS+fOKE5tO5X0ctKwFaSuo0quTbstXcksjIhsBQ9oP0KtGeaA6NRzM4etoDSg6/WhzzH329PcUcpMBSnLjBbBWfStG0ambcKiTVNmlCeRHETvn2uMG71FiWaayTSjuq3dMNJsv0FJOqeYZvLX0T2/lGcsWKLoFEaD7TtFS5P8K2R6bhk5r37UJPRTcnFdPaPjLpH48Q+JBPMC3svG8HEykXj0EwJFJbdmv/Ly072EpfgzuKGxXhGUHlshtBWTPweG0eBzUyk6Pt1LuDz6BUhxvaqoxdOpoKX4a4CitlZ90ObrZGKu+MvATM2cxf3CxNzNY2gTkKnKlqC/o4TmcXJBMPHoM6zikzUroxYfLobQztQm2nH9PkJJSiwb4jI1fRL365LzcXJVMPHoVwhFZhfMGPKlTwidTL0vOSr5+Tn4jOLKVtxvS8FyJcVmam7dpjWb10hDaxRfytR1LDOTZQVKcWkUX7NFr8tTdAgdR++iMd2O+21p+ARvaI3iax7C1YFmRXE2iivncb8sFXdBhonZgKMRng+KwVOA4HTRqMX9slT4jmz+mZrh8QtI0YPphsuZaqzZ7tqEzyFZ6oTxs/WsM74rJwSvqR/y7AFbnmGeHdDvvSQfUxs+3GHLG8yz0WP3CnvUgtLD3W2m7GKe/QpsuPepuIY7mDT9CvwZJl8JbPgW/WxwKU0kPxLXcPcD9LMhM5ubpAl6QfaG79HPhkYwsfe5wIbbz5GPBk2lbpLSd0MOhjvIR38ELqXJT4Q2RBZT2NztGNL3ex6GD1CPDlrgewxDCLI33EW2C3jDD1NKORj+BvXor6GGe3diG74LbximWXAwRDZE8Po3zFTKw/AL1KPBY+nel0Ibols+3PDDjeHaG34ltuF2eEPBY4g0hNdSwQ2RWXpfusX/s+F9mWm2kR0fPHmLPpciDeGrpxC7pTxiiJxLCdaHT0U2RE/e8C1vsdf46NUT/NhC7H0a9Ar4vuy17T5EPht8uCb2filmWx93XWjRUOQ9b8xe2/ySfnCaCnxugTt8en0vzp4we9735PwQc25BcgYc4kNkbog75uZzjs/6dO0l5uHwuxjJ34priG6H8EPgVOp3Q3rDnV0qoIa4U27oCjGV+P0LtU5r+OADKl5CFXE3FYDna6k/yLKs12gNKXm7AzXsYX4KaDJN/eWFbCtyc3N5B40hpllIkLsKqcQ3jqCsVjmpTXgOFMSWUsAd4dS38pQhF7Epz6BJij4fdQha5qf++GJmqBY4yTm8BRea77A/B78InmWoQ7bLSc7hDVAQe63NBreAsjLUI8g3iD1okmJnNhvMrnDqzwt+fIMIHoTQWxgTkMN3KvXNkiDXcgqtpLjl7wTEaJr69k8rghY85Gy+Aycptt87+PeLlQx14TbYvAdPpUGfof/gZg3avoKyXKSeTokAN8Pgz1DyS1N70PYXlLND5nY24Kk7qBs6rKSpM2ij4JKn8BAGDKUuy9V0MmijKHJoim/AIURv6HtZmL4XxxhfAotXWMDrJkivsPEugz2DNgr2fR/st42+o7CAZzb1DtqxfYrwTgFM0vnWt98Y44c6YilIkKPAJJ3VGsQY40OR4fT2jGRnDlJJHZwFBmKM8Y8iu4IKHki3Ye3exZpr0GMMX0V4o9gO2GVb5A6eoWwVXxJ8hNhfJVnmFW6MQSiy+BbfkQiC64wDWQAdimbMgvA6YzNSyRXVccSCRCkasJu/ypDcUFa7kQ5wb8gEyUIoSVWKIMpZObp68+w54REVvFVM6GYpFOViVBMcySQzgfQRBZogWkPqMJJV/3tiQeIQStKYKohWGMMXnOrzHxBHkDiEktTT6QxlPRtuEq93i/JfSRV3cAe/KEy6PLVQh/Ttvz4uWslz9DdCRcJCOmFImae24yWdY72vug89+p6olBL2wtnjitSGclYdkudqtavO/lD1IUm7CN4l9adG+ym676iOSdpjvaar3qTJHv0dnKkEi4olwgjKTiBrMMl6bVhc+eM8+gdQEbp54fdg6mIzRVfV/gjbInv1UV9VfbPl6J+wTKUrMy709XROVlflvlmtrwytvXrVHA91VUdWtCyobRCtmlagG958LHW1qMrd/nhcM2vj8bjfla3/gJGbAGgbAVcTgqDu+/6iFrqu23+D/skdfb8dlKmhBK35NETLiAR9+AU2jOFy1CaKTzEc2LaxQ19HZ/QjTVQqRXTbQP8GEAkhpreoFNFtg7rXe+nFbohsG+E/QpfwjT88R//yUdwhX/YiiL2g2or/XmkbJFvAQVQFUNSXMzWaKjPFFEBRPvrPgmKYcVRYxf96FSMpo8IpztvGbtSCIgw3sj3ZTgYcyMWZ9VScDDi7LAQlaSRCojptg5Eg5WlG5FgDTvTf4JQ6eF3H1JDlfcHeMPaVhj5kfAurH3Omqn22fha1WOtNZOd3OAqB+0fMyHK6Wt7rxpSpOvuLkFPiaf6R34XAUZe519Qs2xuCq/AuOBHf9IBQ4NkauQfQxVR5FdVin3sAXXp9Lo6qzPm3Ob0ULplXVV2N/sYcEVWZqWNWHceUoB5G7ByzxT6f3zsKYjRk8j1mVUH8bKrdYtSOelGA/PRSH+sR9sesKtfE8rPpmUP/GwfE6MVujP0BS30sh5bU1UtTvPB5KNTk4AsIKLK6OjTFqS5I6uZlkcJSV4vdddBz6VVrl7ibMqux0y9rVaGT04dewezLVjB1zBZk1nJTi/LYLKyb3YxefWSOu1b1t9HnOP+eHXbHZnV95bz0evVCtToyzZqNaY6q1UK9dy/UNmzYsGHDhg1C8D/J9batc1Yi+wAAAABJRU5ErkJggg=='),
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: NetworkImage(
                                    'data:image/jpeg;base64,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'),
                              ),
                            ),
                          ),
                          Container(
                            width: 60,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: NetworkImage(
                                    'https://cdn-icons-png.flaticon.com/512/174/174855.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  registeruser(context) async {
    try {
      if (emailController.text.isEmpty) {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text("enter correct email"),
              );
            });
      } else if (passwordController.text.isEmpty) {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text("Password length should be minium 6"),
              );
            });
      } else {
        final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);

        final currentUser = FirebaseAuth.instance.currentUser;
        assert(user.user!.uid == currentUser!.uid);

        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) {
          return LoginScreen();
        }), (route) => false);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text("Password is weak"),
              );
            });
      } else {
        if (e.code == "email-already-in-use") {
          return showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text("Email already in use "),
                );
              });
        } else {
          return showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text("err"),
                );
              });
        }
      }
    }
  }
}
