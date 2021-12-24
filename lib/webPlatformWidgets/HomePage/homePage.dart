import 'package:ECommerceApp/Common_utils/Consts/Size_config.dart';
import 'package:ECommerceApp/webPlatformWidgets/HomePage/categories.dart';
import 'package:ECommerceApp/webPlatformWidgets/HomePage/popularbrands.dart';
import 'package:ECommerceApp/webPlatformWidgets/HomePage/slideImages.dart';
import 'package:ECommerceApp/webPlatformWidgets/HomePage/topBar.dart';
import 'package:flutter/material.dart';

class WHomePage extends StatefulWidget {
  WHomePage({Key key}) : super(key: key);
  static final String routeName = "/index";

  @override
  _WHomePageState createState() => _WHomePageState();
}

class _WHomePageState extends State<WHomePage> {
  @override
  void initState() {
    super.initState();
  }

  get screenSize => null;

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var smallScreenGrid = currentWidth > 1201;
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SlideImages(),
                  Container(
                    margin: EdgeInsets.only(
                        top: smallScreenGrid ? 70.0 : 40.0,
                        bottom: smallScreenGrid ? 70.0 : 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: smallScreenGrid ? 2.0 : 1.0,
                            width: smallScreenGrid ? 150.0 : 80.0,
                            color: Colors.black),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            'Popular brands',
                            style: TextStyle(
                                fontSize: smallScreenGrid ? 30.0 : 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: smallScreenGrid ? 2.0 : 1.0,
                          width: smallScreenGrid ? 150.0 : 80.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  PopularBrands(),
                  Container(
                    margin: EdgeInsets.only(
                        top: smallScreenGrid ? 50.0 : 30.0,
                        bottom: smallScreenGrid ? 50.0 : 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: smallScreenGrid ? 2.0 : 1.0,
                          width: smallScreenGrid ? 150.0 : 80.0,
                          color: Colors.black,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            'Popular products',
                            style: TextStyle(
                                fontSize: smallScreenGrid ? 30.0 : 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: smallScreenGrid ? 2.0 : 1.0,
                          width: smallScreenGrid ? 150.0 : 80.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Categories(),
                  SizedBox(height: 100.0),
                ],
              ),
            ),
            Container(
              height: 80.0,
              child: Material(
                elevation: 0.0,
                child: TopBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
