import 'package:ECommerceApp/webPlatformWidgets/ProductAndProductDetailspage/components/body.dart';
import 'package:ECommerceApp/webPlatformWidgets/ProductAndProductDetailspage/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WProductDetails extends StatelessWidget {
  const WProductDetails({Key key}) : super(key: key);
  static final String routeName = "/WProductFeed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      // body: Body(),
      body: Container(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/webassests/icons/back.svg"),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/webassests/icons/search.svg",
          // By default our  icon color is white
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/webassests/icons/cart.svg",
          // By default our  icon color is white
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      SizedBox(width: kDefaultPaddin / 2)
    ],
  );
}
