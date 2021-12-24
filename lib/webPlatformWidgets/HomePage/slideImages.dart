import 'dart:ui';

// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class SlideImages extends StatefulWidget {
  SlideImages({Key key}) : super(key: key);

  @override
  _SlideImagesState createState() => _SlideImagesState();
}

class _SlideImagesState extends State<SlideImages> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      margin: EdgeInsets.only(
          left: smallScreenGrid ? 0.0 : 10.0,
          top: 0.0,
          right: smallScreenGrid ? 0.0 : 10.0,
          bottom: 0.0),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: extraLargeScreenGrid
            ? 2.5
            : largeScreenGrid
                ? 2.1
                : smallScreenGrid
                    ? 2.3
                    : tabScreenGrid
                        ? 1.8
                        : 1.5,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        shrinkWrap: true,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: smallScreenGrid ? 12.0 : 08.0,
                dotIncreaseSize: 01.4,
                dotIncreasedColor: Colors.indigo[600],
                dotColor: Colors.white,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                dotHorizontalPadding: 40,
                images: [
                  NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/11/18/19/39/backpack-1836594_1280.jpg'),
                  NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/09/26/09/08/hipster-958805_960_720.jpg'),
                  NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/02/04/10/50/bag-4817887_960_720.jpg'),
                  NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/08/06/22/52/blouse-2597205_960_720.jpg'),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  left: smallScreenGrid ? 250.0 : 10.0,
                  top: extraLargeScreenGrid
                      ? 60.0
                      : largeScreenGrid
                          ? 50.0
                          : smallScreenGrid
                              ? 40.0
                              : tabScreenGrid
                                  ? 80.0
                                  : 80.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Super sale',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: extraLargeScreenGrid
                              ? 30.0
                              : largeScreenGrid
                                  ? 27.0
                                  : smallScreenGrid
                                      ? 24.0
                                      : tabScreenGrid
                                          ? 20.0
                                          : 20.0,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 05.0,
                    ),
                    Text(
                      'Save up to 65%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: extraLargeScreenGrid
                              ? 80.0
                              : largeScreenGrid
                                  ? 70.0
                                  : smallScreenGrid
                                      ? 60.0
                                      : tabScreenGrid
                                          ? 35.0
                                          : 35.0,
                          fontWeight: FontWeight.w900),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 0.0,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(0.0),
                          ),
                          padding:
                              EdgeInsets.all(smallScreenGrid ? 18.0 : 05.0),
                        ),
                        onPressed: () {
                          print("object");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: smallScreenGrid ? 40.0 : 18.0,
                              top: 02.0,
                              right: smallScreenGrid ? 40.0 : 18.0,
                              bottom: 02.0),
                          child: Text(
                            'Shop Now',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
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
    );
  }
}
