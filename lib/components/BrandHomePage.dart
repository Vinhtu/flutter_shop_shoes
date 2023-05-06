import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';

import 'package:http/http.dart';

import '../common_widget/CircularProgress.dart';
import '../common_widget/GridTilesCategory.dart';
import '../models/BrandModel.dart';
import '../utils/Urls.dart';

class BrandHomePage extends StatefulWidget {
  String slug;
  bool isSubList;

  BrandHomePage({required this.slug, this.isSubList = false});
  @override
  _BrandHomePageState createState() => _BrandHomePageState();
}

class _BrandHomePageState extends State<BrandHomePage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text("No data"),
    );
  }
}



//https://api.evaly.com.bd/core/public/brands/?limit=20&page=1&category=bags-luggage-966bc8aac