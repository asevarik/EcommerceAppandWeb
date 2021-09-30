import 'package:ECommerceApp/Common_utils/Consts/colors.dart';
import 'package:ECommerceApp/Common_utils/Widgets/HomeScreenWidgets/Catergories.dart';
import 'package:ECommerceApp/Common_utils/Widgets/HomeScreenWidgets/backlayer.dart';
import 'package:ECommerceApp/Common_utils/Widgets/HomeScreenWidgets/popular_Products.dart';
import 'package:ECommerceApp/Common_utils/provider/Products.dart';
import 'package:ECommerceApp/Models/user.dart';
import 'package:ECommerceApp/screens/inner_screens/Categories_FeedScreen.dart';
import 'package:ECommerceApp/screens/inner_screens/brands_navigation_rail%20copy.dart';
import 'package:backdrop/app_bar.dart';
import 'package:backdrop/button.dart';
import 'package:backdrop/scaffold.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List carousel_image = [
    'assets/images/carousel1.png',
    'assets/images/carousel2.jpeg',
    'assets/images/carousel3.jpg',
    'assets/images/carousel4.png'
  ];

  List _brandImages = [
    "assets/images/addidas.jpg",
    "assets/images/apple.jpg",
    "assets/images/dell.jpg",
    "assets/images/h&m.jpg",
    "assets/images/nike.jpg",
    "assets/images/samsung.jpg",
    "assets/images/huawei.jpg",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => Future.delayed(Duration(milliseconds: 20)).then((value) {
              print("setStateCalled");
              return setState(() {});
            }));
  }

  @override
  Widget build(BuildContext context) {
    DynamicColorChangerProvider dynamicTheme =
        DynamicColorChangerProvider(context);
    final productsData = Provider.of<ProductProvider>(context);
    final popularItems = productsData.popularProducts;
    productsData.fetchProducts();
   
    return BackdropScaffold(
      frontLayerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
      headerHeight: MediaQuery.of(context).size.height * 0.25,
      appBar: BackdropAppBar(
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: BackdropToggleButton(
          icon: AnimatedIcons.menu_home,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            dynamicTheme.dynamiccolorObj().starterColor,
            dynamicTheme.dynamiccolorObj().endColor,
          ])),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(UserData.photourl ??
                      'https://firebasestorage.googleapis.com/v0/b/ecommerceflutter-2a0d9.appspot.com/o/UserImages%2Fbaap.jpg?alt=media&token=1c4ecbd3-8e15-45ac-a01b-689c34e41ec7'),
                ),
              ),
              iconSize: 15,
              padding: EdgeInsets.all(10))
        ],
      ),
      backLayer: BackLayerMenu(),
      frontLayer: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 190.0,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.fill,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 5.0,
                dotIncreasedColor:
                    Theme.of(context).appBarTheme.backgroundColor,
                dotBgColor: Colors.black.withOpacity(0.2),
                dotPosition: DotPosition.bottomCenter,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  ExactAssetImage(carousel_image[0]),
                  ExactAssetImage(carousel_image[1]),
                  ExactAssetImage(carousel_image[2]),
                  ExactAssetImage(carousel_image[3]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              height: 180,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoriesWidget(index: index);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Popular brands",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        BrandNavigationRailScreen.routeName,
                        arguments: {
                          7,
                        },
                      );
                    },
                    child: Text(
                      'View all...',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 210,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Swiper(
                  autoplay: true,
                  viewportFraction: 0.8,
                  scale: 0.9,
                  onTap: (index) {
                    Navigator.of(context).pushNamed(
                      BrandNavigationRailScreen.routeName,
                      arguments: {
                        index,
                      },
                    );
                  },
                  itemCount: _brandImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.blueGrey,
                        child:
                            Image.asset(_brandImages[index], fit: BoxFit.fill),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Popular Products",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, CategoryFeedPage.routeName,
                          arguments: "popular products");
                    },
                    child: Text(
                      'View all...',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 285,
                margin: EdgeInsets.symmetric(horizontal: 3),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popularItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ChangeNotifierProvider.value(
                        value: popularItems[index],
                        child: PopularProducts(),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
