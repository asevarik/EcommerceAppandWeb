// ignore: import_of_legacy_library_into_null_safe
import 'package:ant_icons/ant_icons.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;

    return Container(
      width: smallScreenGrid
          ? 300.0
          : extraSmallScreenGrid
              ? 270.0
              : 0.0,
      color: Colors.indigo[600],
      child: ListView(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 80.0,
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 02.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(04.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2015/07/27/20/21/woman-863439_960_720.jpg',
                        fit: BoxFit.cover,
                        height: 55.0,
                        width: 55.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Anvika',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),

          // Container(
          //   padding: EdgeInsets.only(left: 05.0, top: 08.0),
          //   child: Text(
          //     'Shopsnine',
          //     style: TextStyle(fontSize: 30.0, color: Colors.white),
          //   ),
          // )

          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.black12,
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.user,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.heart_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Favorite',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.shopping_cart,
                      size: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 03.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Cart',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      FeatherIcons.tag,
                      size: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'My Orders',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 14.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.bell_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      Ionicons.mail_outline,
                      size: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 03.5, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Messages',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.message_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 02.5, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Chats',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.info_circle_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 01.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.question_circle_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 0.5, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Support',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.book_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 01.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Privacy and Policy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: TextButton(
              style: ElevatedButton.styleFrom(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.all(18.0),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
                    child: Icon(
                      AntIcons.logout_outline,
                      size: 23.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
