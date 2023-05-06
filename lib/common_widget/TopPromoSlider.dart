import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class TopPromoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 150.0,
          width: double.infinity,
          child: Carousel(
            images: [
              Container(
                width: double.infinity,
                child: Image.asset("assets/images/slide1.png",
                    // height: 150,
                    width: 500,
                    fit: BoxFit.contain),
              ),
              Container(
                width: double.infinity,
                child: Image.asset("assets/images/slide2.png",
                    // height: double.infinity,
                    width: 500,
                    fit: BoxFit.contain),
              ),
              Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/slide4.png",
                  // height: double.infinity,
                  width: 500,
                ),
              ),
            ],
            dotSize: 0.0,
            dotSpacing: 15.0,
            dotColor: Colors.purple,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.black54.withOpacity(0.0),
            borderRadius: true,
            radius: Radius.circular(20),
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
          )),
    );
  }
}
