import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:ajonlineshope/Model/user_response_model.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/EditAddress.dart';
import 'package:ajonlineshope/UI/AcountUIComponent/EditPhone.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/Login.dart';
import 'package:ajonlineshope/Widget/CustomLoader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class settingAcount extends StatefulWidget {
  UserResponseModel userResponseModel;
  bool isUserLogin;
  settingAcount(this.isUserLogin,this.userResponseModel);
  @override
  _settingAcountState createState() => _settingAcountState();
}

class _settingAcountState extends State<settingAcount> {
  bool isLoading = false;
  static var _txtCustomHead = TextStyle(
    color: Colors.black54,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.black38,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).tr('settingAccount'),
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
                color: Colors.black54,
                fontFamily: "Gotik"),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0xFF6991C7)),
          elevation: 0.0,
        ),
        body: isLoading
            ? CustomLoader(
                color: Color(0xFF6991C7),
              )
            : SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      setting(
                        head: AppLocalizations.of(context).tr('account'),
                        sub1: AppLocalizations.of(context).tr('address'),
                        sub2: AppLocalizations.of(context).tr('telephone'),
                        sub3: AppLocalizations.of(context).tr('email'),
                        isUserLogin: widget.isUserLogin,
                        userResponseModel: widget.userResponseModel,
                      ),
                      /*setting(
                        head: AppLocalizations.of(context).tr('setting'),
                        sub1: AppLocalizations.of(context)
                            .tr('orderNotification'),
                        sub2: AppLocalizations.of(context)
                            .tr('discountNotification'),
                        sub3: AppLocalizations.of(context).tr('creditCard'),
                      ),*/
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: InkWell(
                          onTap: () {
                            logout();
                          },
                          child: Container(
                            height: 50.0,
                            width: 1000.0,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 13.0, left: 20.0, bottom: 15.0),
                              child: Text(
                                AppLocalizations.of(context).tr('logout'),
                                style: _txtCustomHead,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  void logout() async {
    try {
      setState(() {
        isLoading = true;
      });

      MainApi mainApi = new MainApi(context);
      Response response = await mainApi.logout(context);
      if (response != null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => loginScreen()),
            (Route<dynamic> route) => false);
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      isLoading = false;
    });
  }
}

class setting extends StatelessWidget {
  static var _txtCustomHead = TextStyle(
    color: Colors.black54,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.black38,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  String head, sub1, sub2, sub3;
  bool isUserLogin;
  UserResponseModel userResponseModel;

  setting({this.head, this.sub1, this.sub2, this.sub3,this.isUserLogin,this.userResponseModel});

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        height: 235.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
                child: Text(
                  head,
                  style: _txtCustomHead,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
              GestureDetector(
                onTap: () {
                  if(isUserLogin)
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EditAddress(userResponseModel)));
                    }
                  else
                    {
                      displayToast("Please login first",context);
                    }

                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          sub1,
                          style: _txtCustomSub,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black38,
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
              GestureDetector(
                onTap: () {
                  if(isUserLogin)
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditPhone(isPhone: true,userResponseModel: userResponseModel,)));
                  }
                  else
                  {
                    displayToast("Please login first",context);
                  }

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          sub2,
                          style: _txtCustomSub,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black38,
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
              GestureDetector(
                onTap: () {
                  if(isUserLogin)
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditPhone(isPhone: false,userResponseModel: userResponseModel,)));
                  }
                  else
                  {
                    displayToast("Please login first",context);
                  }


                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          sub3,
                          style: _txtCustomSub,
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.black38,
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void displayToast(String msg,BuildContext context) {
  Toast.show(msg, context, duration: Toast.LENGTH_LONG);
}
