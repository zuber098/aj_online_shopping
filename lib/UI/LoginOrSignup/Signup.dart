import 'dart:async';

import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:ajonlineshope/Utils/CommanStrings.dart';
import 'package:ajonlineshope/Utils/CommonLogic.dart';
import 'package:flutter/material.dart';
import 'package:ajonlineshope/UI/BottomNavigationBar.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/Login.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/LoginAnimation.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/Signup.dart';
import 'package:toast/toast.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  //Animation Declaration
  AnimationController sanimationController;
  AnimationController animationControllerScreen;
  Animation animationScreen;
  var tap = 0;
  String name;
  String email;
  String password;

  String confirmPassword;
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  /// Set AnimationController to initState
  @override
  void initState() {
    sanimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800))
          ..addStatusListener((statuss) {
            if (statuss == AnimationStatus.dismissed) {
              setState(() {
                tap = 0;
              });
            }
          });
    // TODO: implement initState
    super.initState();
  }

  /// Dispose animationController
  @override
  void dispose() {
    sanimationController.dispose();
    super.dispose();
  }

  /// Playanimation set forward reverse
  Future<Null> _PlayAnimation() async {
    try {
      await sanimationController.forward();
      await sanimationController.reverse();
    } on TickerCanceled {}
  }

  /// Component Widget layout UI
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    mediaQueryData.devicePixelRatio;
    mediaQueryData.size.height;
    mediaQueryData.size.width;

    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              /// Set Background image in layout
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/img/backgroundgirl.png"),
                fit: BoxFit.cover,
              )),
              child: Container(
                /// Set gradient color in image
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.2),
                      Color.fromRGBO(0, 0, 0, 0.3)
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                  ),
                ),

                /// Set component layout
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              alignment: AlignmentDirectional.topCenter,
                              child: Column(
                                children: <Widget>[
                                  /// padding logo
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: mediaQueryData.padding.top +
                                              40.0)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(
                                        image:
                                            AssetImage(appLogoImg),
                                        height: MediaQuery.of(context).size.height*0.2,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0)),

                                      /// Animation text treva shop accept from login layout
                                     /* Hero(
                                        tag: "Treva",
                                        child: Text(
                                          AppLocalizations.of(context)
                                              .tr('title'),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              letterSpacing: 0.6,
                                              fontFamily: "Sans",
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                      ),*/
                                    ],
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.0)),

                                  /// TextFromField Email
                                  textFromField(
                                    icon: Icons.email,
                                    password: false,
                                    email: AppLocalizations.of(context)
                                        .tr('registerName'),
                                    inputType: TextInputType.emailAddress,
                                    textEditingController: nameController,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.0)),
                                  textFromField(
                                    icon: Icons.email,
                                    password: false,
                                    email: AppLocalizations.of(context)
                                        .tr('email'),
                                    inputType: TextInputType.emailAddress,
                                    textEditingController: emailController,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.0)),

                                  /// TextFromField Password
                                  textFromField(
                                    icon: Icons.vpn_key,
                                    password: true,
                                    email: AppLocalizations.of(context)
                                        .tr('password'),
                                    inputType: TextInputType.text,
                                    textEditingController: passwordController,
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.0)),

                                  /// TextFromField Password
                                  textFromField(
                                    icon: Icons.vpn_key,
                                    password: true,
                                    email: AppLocalizations.of(context)
                                        .tr('confirmPassword'),
                                    inputType: TextInputType.text,
                                    textEditingController:
                                        confirmPasswordController,
                                  ),

                                  /// Button Login
                                  FlatButton(
                                      padding: EdgeInsets.only(top: 20.0),
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        new loginScreen()));
                                      },
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .tr('notHaveLogin'),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Sans"),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: mediaQueryData.padding.top + 130.0,
                                        bottom: 0.0),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                        /// Set Animaion after user click buttonLogin
                        tap == 0
                            ? InkWell(
                                splashColor: Colors.yellow,
                                onTap: () {
                                  bool allFilled = checkField();
                                  if (allFilled) {
                                    setState(() {
                                      tap = 1;
                                    });
                                    _PlayAnimation();
                                  }

                                  return tap;
                                },
                                child: buttonBlackBottom(),
                              )
                            : new LoginAnimation(
                                animationController: sanimationController.view,
                                mainApi: registerUser(),
                                isLogin: false,
                              )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool checkField() {
    name = nameController.text;
    email = emailController.text;
    password = passwordController.text;
    confirmPassword = confirmPasswordController.text;
    if (name.isEmpty) {
      displayToast("Please enter name");
    } else if (email.isEmpty) {
      displayToast("Please enter email");
    } else if (!validateEmail(email)) {
      displayToast("Please enter valid email");
    } else if (password.isEmpty) {
      displayToast("Please enter password");
    } else if (confirmPassword.isEmpty) {
      displayToast("Please enter confirm password");
    } else if (password.length < 6) {
      displayToast("Password should be minimum 6 character long");
    } else if (confirmPassword != password) {
      displayToast("Password not matched");
    } else {
      return true;
    }

    return false;
  }

  MainApi registerUser() {
    return new MainApi.Register(
        name: name,
        password: password,
        email: email,
        confirmPassword: confirmPassword);
  }

  displayToast(String msg) {
    Toast.show(msg, context, duration: Toast.LENGTH_LONG);
  }
}

/// textfromfield custom class
class textFromField extends StatelessWidget {
  bool password;
  String email;
  IconData icon;
  TextInputType inputType;
  TextEditingController textEditingController;

  textFromField(
      {this.email,
      this.icon,
      this.inputType,
      this.password,
      this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        height: 60.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black12)]),
        padding:
            EdgeInsets.only(left: 20.0, right: 30.0, top: 0.0, bottom: 0.0),
        child: Theme(
          data: ThemeData(
            hintColor: Colors.transparent,
          ),
          child: TextFormField(
            obscureText: password,
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: email,
                icon: Icon(
                  icon,
                  color: Colors.black38,
                ),
                labelStyle: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Sans',
                    letterSpacing: 0.3,
                    color: Colors.black38,
                    fontWeight: FontWeight.w600)),
            keyboardType: inputType,
            controller: textEditingController,
          ),
        ),
      ),
    );
  }
}

///ButtonBlack class
class buttonBlackBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Container(
        height: 55.0,
        width: 600.0,
        child: Text(
          AppLocalizations.of(context).tr('signUp'),
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 0.2,
              fontFamily: "Sans",
              fontSize: 18.0,
              fontWeight: FontWeight.w800),
        ),
        alignment: FractionalOffset.center,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: <Color>[Color(0xFF121940), Color(0xFF6E48AA)])),
      ),
    );
  }
}
