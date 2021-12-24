// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';

class PopularBrands extends StatefulWidget {
  PopularBrands({Key key}) : super(key: key);

  @override
  _PopularBrandsState createState() => _PopularBrandsState();
}

class _PopularBrandsState extends State<PopularBrands> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
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
          top: 0.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 0.0),
      child: GridView.count(
        crossAxisCount: extraLargeScreenGrid
            ? 5
            : largeScreenGrid
                ? 4
                : smallScreenGrid
                    ? 3
                    : tabScreenGrid
                        ? 2
                        : 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        crossAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1528492761044-22bcffb9c0de?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmlrZSUyMGxvZ298ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.cover,
                  ),
                ),
                
                
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://images.pexels.com/photos/3948028/pexels-photo-3948028.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    fit: BoxFit.cover,
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1625929724273-b441811ff086?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVsbHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.cover,
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1585184394271-4c0a47dc59c9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXBwbGUlMjBsb2dvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.cover,
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1522206024047-9c925421675b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2Ftc3VuZ3xlbnwwfDF8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.cover,
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuXs3U2JDXa8mTtkMOiVVpOXd-STnWIyzFuErO5kHr3IWXJ0iyYyh1mK4mnZu0enI4s5Q&usqp=CAU',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                
              ],
            ),
          ),
          
          
          
          
          
        ],
      ),
    );
  }
}
