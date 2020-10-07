import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Model/login_response_model.dart';
import 'package:ajonlineshope/UI/BottomNavigationBar.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/Login.dart';
import 'package:ajonlineshope/UI/LoginOrSignup/Signup.dart';
import 'package:ajonlineshope/Widget/CustomLoader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class LoginLoadingScreen extends StatefulWidget {
  MainApi mainApi;
  bool isLogin;

  LoginLoadingScreen({this.mainApi, this.isLogin});

  @override
  _LoginLoadingScreenState createState() => _LoginLoadingScreenState();
}

class _LoginLoadingScreenState extends State<LoginLoadingScreen> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B2E6F),
      body: Container(
        color: Color(0xFF3B2E6F),
        child: Column(
          children: <Widget>[
            isLoading ? CustomLoader() : Container(),
          ],
        ),
      ),
    );
  }

  loginUser() async {
    try {
      setState(() {
        isLoading = true;
      });
      SharedPreferences prefs = await SharedPreferences.getInstance();

      Response response = await widget.mainApi.login(context);
      if (response != null) {

        LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(response.toString());
        String accessToken = loginResponseModel.accessToken;
        String tokenType = loginResponseModel.tokenType;
        int userId = loginResponseModel.user.id;
        prefs.setString("accessToken", accessToken);
        prefs.setString("tokenType",tokenType);
        prefs.setInt("userId",userId);

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => new bottomNavigationBar()));


      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => new loginScreen()));
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      isLoading = false;
    });
  }

  registerUser() async {
    try {
      setState(() {
        isLoading = true;
      });
      Response response = await widget.mainApi.register(context);
      if (response != null) {
        displayToast("Register successful, Please login to continue");
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => new loginScreen()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => new Signup()));
      }
    } catch (e) {
      print(e);
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.isLogin) {
      loginUser();
    } else {
      registerUser();
    }
  }

  displayToast(String msg) {
    Toast.show(msg, context, duration: Toast.LENGTH_LONG);
  }
}
