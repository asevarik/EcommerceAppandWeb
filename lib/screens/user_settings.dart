import 'package:ECommerceApp/Common_utils/Consts/Size_config.dart';
import 'package:ECommerceApp/Common_utils/Consts/colors.dart';
import 'package:ECommerceApp/Common_utils/Widgets/GlobalWidgets/GradientButton.dart';
import 'package:ECommerceApp/Common_utils/provider/Dark_Theme_provider.dart';
import 'package:ECommerceApp/Models/dynamicthememodal.dart';
import 'package:ECommerceApp/Models/user.dart';
import 'package:ECommerceApp/Services/AuthController.dart';
import 'package:ECommerceApp/Services/Database.dart';
import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'package:get/get.dart';

class UserSettingScreen extends StatefulWidget {
  final screentitile;
  final screenupdatevalue;
  final updatetitile;
  static final String routeName = "/UserSettingscreen";

  UserSettingScreen(
      {Key key, this.screentitile, this.screenupdatevalue, this.updatetitile})
      : super(key: key);

  @override
  _UserSettingScreenState createState() => _UserSettingScreenState();
}

class _UserSettingScreenState extends State<UserSettingScreen> {
  TextEditingController _updatedValue;
  void submitUpateValue() {
    print(_updatedValue);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updatedValue = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _updatedValue.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DynamicColorChangerProvider dynamicTheme =
        DynamicColorChangerProvider(context);
    final ThemeController themeStorage = Get.find();
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              dynamicTheme.dynamiccolorObj().starterColor,
              dynamicTheme.dynamiccolorObj().endColor
            ])),
          ),
          title: Text(
            widget.screentitile,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: SizeConfig.blockSizeHorizontal * 30,
              ),
              TextField(
                controller: _updatedValue,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: widget.screenupdatevalue,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal * 30,
              ),
              GradientButton(
                  press: () {
                    //TODO yaha prr aayega logic
                    if (widget.updatetitile == 'address') {
                      UserData.address = _updatedValue.text;
                      DataBaseServices().updateUserValue(
                          AuthController.auth.currentUser.uid,
                          {'Address': _updatedValue.text});
                    } else {
                      UserData.phone = _updatedValue.text;
                      DataBaseServices().updateUserValue(
                          AuthController.auth.currentUser.uid,
                          {'phoneNumber': _updatedValue.text});
                    }
                  },
                  title: 'Update'),
              SizedBox(
                height: SizeConfig.blockSizeHorizontal * 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Notice: while updating user details please give us max 2-3 minutes to reflect changes",
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
        ));
  }
}
