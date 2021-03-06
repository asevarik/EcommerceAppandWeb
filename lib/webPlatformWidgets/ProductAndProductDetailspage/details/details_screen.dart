import 'package:ECommerceApp/webPlatformWidgets/ProductAndProductDetailspage/constants.dart';
import 'package:ECommerceApp/webPlatformWidgets/ProductAndProductDetailspage/details/components/body.dart';
import 'package:ECommerceApp/webPlatformWidgets/ProductAndProductDetailspage/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/webassests/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/webassests/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/webassests/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
