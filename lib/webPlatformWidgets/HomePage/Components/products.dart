// ignore: import_of_legacy_library_into_null_safe
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products({Key key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      margin: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          top: smallScreenGrid ? 30.0 : 15.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 0.0),
      child: Container(
        child: GridView.count(
          crossAxisCount: smallScreenGrid ? 3 : 2,
          childAspectRatio: 01.48,
          mainAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
          crossAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2017/04/05/01/12/traveler-2203666_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  smallScreenGrid
                      ? Container(
                          margin: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                              ),
                              padding: EdgeInsets.all(18.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 0.0),
                              child: Text(
                                'Top Offers',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2018/01/01/15/28/one-3054354_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Icon(
                      AntIcons.heart_outline,
                      color: Colors.white,
                      size: smallScreenGrid ? 40.0 : 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/03/10/18/59/rubber-boots-6085292_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Icon(
                      AntIcons.heart_outline,
                      color: Colors.white,
                      size: smallScreenGrid ? 40.0 : 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2015/02/23/17/54/boutique-646295_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  smallScreenGrid
                      ? Container(
                          margin: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                              ),
                              padding: EdgeInsets.all(18.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 0.0),
                              child: Text(
                                'Exclusive',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2014/07/31/23/00/wristwatch-407096_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  smallScreenGrid
                      ? Container(
                          margin: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                              ),
                              padding: EdgeInsets.all(18.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 0.0),
                              child: Text(
                                'Explore Watches',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1584917865442-de89df76afd3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFnfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Icon(
                      AntIcons.heart_outline,
                      color: Colors.white,
                      size: smallScreenGrid ? 40.0 : 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
