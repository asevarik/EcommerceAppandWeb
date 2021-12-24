// ignore_for_file: unused_import

import 'dart:html';

import 'package:flutter/material.dart';

class MidImages extends StatefulWidget {
  MidImages({Key key}) : super(key: key);

  @override
  _MidImagesState createState() => _MidImagesState();
}

class _MidImagesState extends State<MidImages> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      height: smallScreenGrid ? 300.0 : 180.0,
      margin: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          top: 20.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 20.0),
      child: Row(
        children: [
          // Expanded(
          //   child: Container(
          //     height: MediaQuery.of(context).size.height,
          //     child: Image.network(
          //       'https://cdn.pixabay.com/photo/2015/03/26/09/40/suit-690048_960_720.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     height: MediaQuery.of(context).size.height,
          //     margin: EdgeInsets.only(
          //         left: 30.0, top: 0.0, right: 30.0, bottom: 0.0),
          //     child: Image.network(
          //       'https://cdn.pixabay.com/photo/2015/03/26/09/40/suit-690048_960_720.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2015/03/26/09/40/suit-690048_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
