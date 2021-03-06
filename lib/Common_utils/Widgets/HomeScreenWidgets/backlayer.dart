import 'package:ECommerceApp/Common_utils/Consts/colors.dart';
import 'package:ECommerceApp/Models/user.dart';
import 'package:ECommerceApp/screens/cart/cart.dart';
import 'package:ECommerceApp/screens/feed.dart';
import 'package:ECommerceApp/screens/upload_product_form.dart';
import 'package:flutter/material.dart';

class BackLayerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DynamicColorChangerProvider dynamicTheme =
        DynamicColorChangerProvider(context);
    return Stack(
      fit: StackFit.expand,
      children: [
        Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  dynamicTheme.dynamiccolorObj().starterColor,
                  dynamicTheme.dynamiccolorObj().endColor
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        Positioned(
          top: -100.0,
          left: 140.0,
          child: Transform.rotate(
            angle: -0.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.3),
              ),
              width: 150,
              height: 250,
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 100.0,
          child: Transform.rotate(
            angle: -0.8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.3),
              ),
              width: 150,
              height: 300,
            ),
          ),
        ),
        Positioned(
          top: -50.0,
          left: 60.0,
          child: Transform.rotate(
            angle: -0.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.3),
              ),
              width: 150,
              height: 200,
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          right: 0.0,
          child: Transform.rotate(
            angle: -0.8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.3),
              ),
              width: 150,
              height: 200,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      //   clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage(UserData.photourl),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                content(context, () {
                  navigateTo(context, FeedPage.Routename);
                }, 'Feeds', 0),
                const SizedBox(height: 10.0),
                content(context, () {
                  navigateTo(context, CartPage.RouteName);
                }, 'Cart', 1),
                const SizedBox(height: 10.0),
                content(context, () {
                  navigateTo(context, FeedPage.Routename);
                }, 'Wishlist', 2),
                const SizedBox(height: 10.0),
                content(context, () {
                  Navigator.pushNamed(context, UploadProductForm.routeName);
                }, 'Upload a new product', 3),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List _contentIcons = [
    Icons.rss_feed,
    Icons.shopping_cart_outlined,
    Icons.favorite_border_outlined,
    Icons.upload,
    // MyAppIcons.rss,
    // MyAppIcons.bag,
    // MyAppIcons.wishlist,
    // MyAppIcons.upload
  ];
  void navigateTo(BuildContext ctx, String routeName) {
    Navigator.of(ctx).pushNamed(
      routeName,
    );
  }

  Widget content(BuildContext ctx, Function fct, String text, int index) {
    return InkWell(
      onTap: fct,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: Theme.of(ctx)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Icon(_contentIcons[index])
        ],
      ),
    );
  }
}
