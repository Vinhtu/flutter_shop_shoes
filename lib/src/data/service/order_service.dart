import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop_shoes/src/viewmodel/cart_viewmodel.dart';
import 'package:flutter_shop_shoes/src/viewmodel/user_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../models/Response.dart';

final FirebaseFirestore db = FirebaseFirestore.instance;
final CollectionReference _collection = db.collection('orders');

class OrderService {
  static Future<Response> addOrder({
    required String username,
    required String phone,
    required String line,
    required String district,
    required String ward,
    required String total,
    required String product,
    required String status,
    required CartViewModel cartviewmodel,
    required String kind,
    required String subpayment,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _collection.doc();

    final itemsData =
        cartviewmodel.items.values.map((item) => item.toMap()).toList();

    Map<String, dynamic> data = <String, dynamic>{
      'username': username,
      'phone': phone,
      'line': line,
      'district': district,
      'ward': ward,
      'total': total,
      'product': product,
      'orderitems': itemsData,
      'status': status,
      'kind': kind,
      'subpayment': subpayment,
    };

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added to the database";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Future<Response> updateUser({
    required String id,
    required String name,
    required String username,
    required String password,
    required String phone,
    required String line,
    required String district,
    required String ward,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'password': password,
      'phone': phone,
      'line': line,
      'district': district,
      'ward': ward,
    };

    await documentReferencer.update(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully updated User";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Future<Response> updateProduct({
    required String name,
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _collection.doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "name": name,
    };

    await documentReferencer.update(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully updated Employee";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

// static Future<Response> getOneUser({
//     required String username,
//       required String password,

//   }) async {
//     Response response = Response();
//     DocumentReference documentReferencer = _collection.doc(username);

//     Map<String, dynamic> data = <String, dynamic>{
//       "name": name,
//     };

//     await documentReferencer.update(data).whenComplete(() {
//       response.code = 200;
//       response.message = "Sucessfully updated Employee";
//     }).catchError((e) {
//       response.code = 500;
//       response.message = e;
//     });

//     return response;
//   }

  static Future<Response> deleteUser({
    required String docId,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _collection.doc(docId);

    await documentReferencer.delete().whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully Deleted Employee";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Stream<QuerySnapshot> readOrders() {
    CollectionReference notesItemCollection = _collection;

    return notesItemCollection.snapshots();
  }

  static Stream<QuerySnapshot> readOrder(username) {
    Query<Object?> notesItemCollection =
        _collection.where("username", isEqualTo: username);

    return notesItemCollection.snapshots();
  }

  static Future<bool> userExists(username, password) async {
    return await db
        .collection('users')
        .where('username', isEqualTo: username)
        .where('password', isEqualTo: password)
        .get()
        .then((value) => value.size > 0 ? true : false);
  }

  static Stream<QuerySnapshot> readProductCategory(category) {
    final CollectionReference _collectionproduct = db.collection('products');
    Query<Object?> notesItemCollection =
        _collectionproduct.where("category", isEqualTo: category);

    return notesItemCollection.snapshots();
  }
}
