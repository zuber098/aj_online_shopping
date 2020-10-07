import 'dart:io';

import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Model/user_response_model.dart';
import 'package:ajonlineshope/Utils/CommonLogic.dart';
import 'package:ajonlineshope/Widget/CustomLoader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/toast.dart';

class EditProfile extends StatefulWidget {
  String name, imagePath;
  int userId;

  EditProfile({this.name, this.imagePath, this.userId});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String imagePath;
  bool isImgChanged = false;
  File _image;
  bool isLoading = false;
  String placeHolderImage = "assets/img/womanface.jpg";
  int userId;

  final picker = ImagePicker();
  TextEditingController nameController = new TextEditingController();
  TextEditingController newPasswordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  Widget profileLayout() {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _pickImage();
            },
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2.5),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: getImage(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget body(mediaQuery) {
    return SingleChildScrollView(
      child: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: Column(
          children: <Widget>[
            profileLayout(),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            textFromField(
              icon: Icons.person,
              password: false,
              email: "Name",
              inputType: TextInputType.emailAddress,
              textEditingController: nameController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            textFromField(
              icon: Icons.vpn_key,
              password: true,
              email: "New Password",
              inputType: TextInputType.text,
              textEditingController: newPasswordController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            textFromField(
              icon: Icons.vpn_key,
              password: true,
              email: "Confirm Password",
              inputType: TextInputType.text,
              textEditingController: confirmPasswordController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            ButtonBlackBottom(() {
              updateProfile();
            }),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    nameController.text = (widget.name) ?? "Guest";
    imagePath = widget.imagePath;
    userId = widget.userId;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    AppBar appBar = AppBar(
      title: Center(
        child: new Text("Profile", textAlign: TextAlign.center),
      ),
      automaticallyImplyLeading: false,
    );

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: isLoading
            ? CustomLoader(
                color: Color(0xFF6991C7),
              )
            : body(mediaQuery),
      ),
    );
  }

  getImage() {
    if (imagePath != null && !isImgChanged) {
      return NetworkImage(imagePath);
    } else {
      return _image != null ? FileImage(_image) : AssetImage(placeHolderImage);
    }
  }

  void _pickImage() async {
    print("pressed");
    bool storage = await storagePermission();
    bool camera = await cameraPermission();

    if (storage && camera) {
      final imageSource = await showDialog<ImageSource>(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Select the image source"),
                actions: <Widget>[
                  MaterialButton(
                    child: Text("Camera"),
                    onPressed: () => Navigator.pop(context, ImageSource.camera),
                  ),
                  MaterialButton(
                    child: Text("Gallery"),
                    onPressed: () =>
                        Navigator.pop(context, ImageSource.gallery),
                  ),
                  if (_image != null)
                    MaterialButton(
                      child: Text("Remove"),
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          _image = null;
                        });
                      },
                    )
                ],
              ));

      if (imageSource != null) {
        final file = await picker.getImage(source: imageSource);
        if (file != null) {
          setState(() => _image = File(file.path));
          isImgChanged = true;
        }
      }
    }
  }

  void updateProfile() async {
    try {
      setState(() {
        isLoading = true;
      });

      String name = nameController.text;
      String newPassword = newPasswordController.text;
      String confirmPassword = confirmPasswordController.text;

      Response response;
      if (name.isEmpty) {
        displayToast("Please enter name", context);
      } else {
        if (newPassword.isNotEmpty) {
          if (newPassword.length < 6) {
            displayToast(
                "Password length must be 6 character minimum", context);
          } else if (confirmPassword.isEmpty) {
            displayToast("Please confirm your password", context);
          } else if (newPassword != confirmPassword) {
            displayToast("Password not matched", context);
          } else {
            MainApi mainApi = new MainApi.UpdateProfie(
              context: context,
              name: name,
              imagePath: _image != null ? _image.path : null,
              password: newPassword,
              userId: userId,
            );
            response = await mainApi.updateProfileDetails(context);
          }
        } else {
          MainApi mainApi = new MainApi.UpdateProfie(
            context: context,
            name: name,
            imagePath: _image != null ? _image.path : null,
            userId: userId,
          );
          response = await mainApi.updateProfileDetails(context);
        }
        if (response != null) {
          UserResponseModel userResponseModel =
              UserResponseModel.fromJson(response.toString());
          if (userResponseModel != null) {
            if (userResponseModel.status) {
              displayToast("Profile updated", context);
            }
          } else {
            displayToast("Someting went worng please try again", context);
          }
        }
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      isLoading = false;
    });
  }

  void displayToast(String msg, BuildContext context) {
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
class ButtonBlackBottom extends StatelessWidget {
  final Function updateProfile;

  ButtonBlackBottom(this.updateProfile);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return InkWell(
      onTap: () {
        updateProfile();
      },
      child: Container(
        margin: EdgeInsets.only(
            left: mediaQuery.size.width * 0.2,
            right: mediaQuery.size.width * 0.2),
        height: 50.0,
        width: mediaQuery.size.width,
        child: Text(
          "Update",
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
            gradient: LinearGradient(colors: <Color>[
              Color(0xFF121940),
              Color(0xFF6E48AA),
            ])),
      ),
    );
  }
}
