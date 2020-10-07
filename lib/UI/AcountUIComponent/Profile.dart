import 'dart:io';

import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:ajonlineshope/Model/user.dart';
import 'package:ajonlineshope/Model/user_response_model.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/EditProfile.dart';
import 'package:ajonlineshope/Utils/CommanStrings.dart';
import 'package:ajonlineshope/Widget/CustomLoader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/AboutApps.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/CallCenter.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/Message.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/languageSetting.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/ChoseLoginOrSignup.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/CreditCardSetting.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/MyOrders.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/Notification.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/SettingAcount.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/Signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

/// Custom Font
var _txt = TextStyle(
  color: Colors.black,
  fontFamily: "Sans",
);

/// Get _txt and custom value of Variable for Name User
var _txtName = _txt.copyWith(fontWeight: FontWeight.w700, fontSize: 17.0);

/// Get _txt and custom value of Variable for Edit text
var _txtEdit = _txt.copyWith(color: Colors.black26, fontSize: 15.0);

/// Get _txt and custom value of Variable for Category Text
var _txtCategory = _txt.copyWith(
    fontSize: 14.5, color: Colors.black54, fontWeight: FontWeight.w500);

class _profilState extends State<profil> {
  bool isLoading = false;
  String imagePath;
  bool isImgChanged = false;
  File _image;
  String username;
  bool isUserLogedIn = false;
  int userId;
  String placeHolderImage = "assets/img/womanface.jpg";
  UserResponseModel userResponseModel;
  @override
  Widget build(BuildContext context) {
    /// Declare MediaQueryData
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    /// To Sett PhotoProfile,Name and Edit Profile
    var _profile = Padding(
      padding: EdgeInsets.only(
        top: 185.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.5),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: getImage(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  username ?? "Guest",
                  style: _txtName,
                ),
              ),
              InkWell(
                onTap:isUserLogedIn? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(imagePath: imagePath,name: username,userId: userId,),
                    ),
                  );
                }:null,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Text(
                    AppLocalizations.of(context).tr('editProfile'),
                    style: _txtEdit,
                  ),
                ),
              ),
            ],
          ),
          Container(),
        ],
      ),
    );

    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: SingleChildScrollView(
        child: isLoading
            ? CustomLoader(
                color: Color(0xFF6991C7),
              )
            : Container(
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    /// Setting Header Banner
                    Container(
                      height: 240.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/img/headerProfile.png"),
                              fit: BoxFit.cover)),
                    ),

                    /// Calling _profile variable
                    _profile,
                    Padding(
                      padding: const EdgeInsets.only(top: 360.0),
                      child: Column(
                        /// Setting Category List
                        children: <Widget>[
                          /// Call category class
                          category(
                            txt:
                                AppLocalizations.of(context).tr('notification'),
                            padding: 35.0,
                            image: "assets/icon/notification.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new notification()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 85.0, right: 30.0),
                            child: Divider(
                              color: Colors.black12,
                              height: 2.0,
                            ),
                          ),
                          category(
                            txt: AppLocalizations.of(context).tr('payments'),
                            padding: 35.0,
                            image: "assets/icon/creditAcount.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new creditCardSetting()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 85.0, right: 30.0),
                            child: Divider(
                              color: Colors.black12,
                              height: 2.0,
                            ),
                          ),
                          category(
                            txt: AppLocalizations.of(context).tr('message'),
                            padding: 26.0,
                            image: "assets/icon/chat.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new chat()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 85.0, right: 30.0),
                            child: Divider(
                              color: Colors.black12,
                              height: 2.0,
                            ),
                          ),
                          category(
                            txt: AppLocalizations.of(context).tr('myOrders'),
                            padding: 23.0,
                            image: "assets/icon/truck.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new order()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 85.0, right: 30.0),
                            child: Divider(
                              color: Colors.black12,
                              height: 2.0,
                            ),
                          ),
                          category(
                            txt: AppLocalizations.of(context)
                                .tr('settingAccount'),
                            padding: 30.0,
                            image: "assets/icon/setting.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new settingAcount(isUserLogedIn,userResponseModel)));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 85.0, right: 30.0),
                            child: Divider(
                              color: Colors.black12,
                              height: 2.0,
                            ),
                          ),
                          category(
                            txt: AppLocalizations.of(context).tr('callCenter'),
                            padding: 30.0,
                            image: "assets/icon/callcenter.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new callCenter()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 85.0, right: 30.0),
                            child: Divider(
                              color: Colors.black12,
                              height: 2.0,
                            ),
                          ),
                          category(
                            txt: AppLocalizations.of(context).tr('language'),
                            padding: 30.0,
                            image: "assets/icon/language.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new languageSetting()));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 85.0, right: 30.0),
                            child: Divider(
                              color: Colors.black12,
                              height: 2.0,
                            ),
                          ),
                          category(
                            padding: 38.0,
                            txt: AppLocalizations.of(context).tr('aboutApps'),
                            image: "assets/icon/aboutapp.png",
                            tap: () {
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      new aboutApps()));
                            },
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 20.0)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  @override
  void initState() {
    loadProfileDetails();
    super.initState();
  }

  void loadProfileDetails() async {
    setState(() {
      isLoading = true;
    });
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String accessToken = prefs.getString("accessToken");
      if (accessToken == null || accessToken.isEmpty) {
        isUserLogedIn = false;
        displayToast("User not found, please login to continue ");
      } else {
        MainApi mainApi = new MainApi(context);
        Response response = await mainApi.getUserData(context);
        if (response != null) {
           userResponseModel =
              UserResponseModel.fromJson(response.toString());
          if (userResponseModel != null) {
            if (userResponseModel.status) {
              isUserLogedIn = true;
              username  = userResponseModel.user.name;
              userId = userResponseModel.user.id;
              imagePath = ASSET_URL+userResponseModel.user.avatarOriginal;
            } else {
              displayToast("Someting went wrong , please try to login again");

            }
          } else {
            displayToast("Someting went wrong , please try to login again");
          }
        } else {
          displayToast("Someting went wrong , please try to login again");
        }
      }
    } catch (e) {
      WidgetsBinding.instance.addPostFrameCallback((_){
        setState(() {
          isLoading = false;
        });
      }

      );
      print(e);
    }
    WidgetsBinding.instance.addPostFrameCallback((_){
      setState(() {
        isLoading = false;
      });
    });


  }

  displayToast(String msg) {
    Toast.show(msg, context, duration: Toast.LENGTH_LONG);
  }

  getImage() {
    if (imagePath != null && !isImgChanged) {
      return NetworkImage(imagePath);
    } else {
      return _image != null ? FileImage(_image) : AssetImage(placeHolderImage);
    }
  }
}

/// Component category class to set list
class category extends StatelessWidget {
  @override
  String txt, image;
  GestureTapCallback tap;
  double padding;

  category({this.txt, this.image, this.tap, this.padding});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: padding),
                  child: Image.asset(
                    image,
                    height: 25.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    txt,
                    style: _txtCategory,
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
