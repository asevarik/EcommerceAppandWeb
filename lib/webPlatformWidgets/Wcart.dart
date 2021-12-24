import 'package:ECommerceApp/Common_utils/Widgets/CartscreenWidgets/CartFull.dart';
import 'package:ECommerceApp/Common_utils/Widgets/CartscreenWidgets/Cartempty.dart';
import 'package:ECommerceApp/Common_utils/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WcartPage extends StatefulWidget {
  WcartPage({Key key}) : super(key: key);
  static final routName = "WCartPage";
  @override
  _WcartPageState createState() => _WcartPageState();
}

class _WcartPageState extends State<WcartPage> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: buildAppBar(context, cartProvider),
      body: CartEmpty(),
      bottomNavigationBar: CartCheckout(
        press: () {
          print("checkout pressed");
        },
      ),
    );
  }
}
