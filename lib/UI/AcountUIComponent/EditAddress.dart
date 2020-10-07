import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Model/user_response_model.dart';
import 'package:ajonlineshope/Widget/CustomLoader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class EditAddress extends StatefulWidget {
  UserResponseModel userResponseModel;
  EditAddress(this.userResponseModel);
  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  TextEditingController addressController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();
  TextEditingController countryController = new TextEditingController();
  TextEditingController pincodeController = new TextEditingController();
  bool isLoading = false;


  @override
  void initState() {
    addressController.text = widget.userResponseModel.user.address??"";
    cityController.text = widget.userResponseModel.user.city??"";
    countryController.text = widget.userResponseModel.user.country??"";
    pincodeController.text = widget.userResponseModel.user.postalCode??"";
    super.initState();
  }

  Widget body(mediaQuery) {
    return SingleChildScrollView(
      child: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            textFromField(
              icon: Icons.person,
              password: false,
              email: "Address",
              inputType: TextInputType.emailAddress,
              textEditingController: addressController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            textFromField(
              icon: Icons.person,
              password: false,
              email: "City",
              inputType: TextInputType.emailAddress,
              textEditingController: cityController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            textFromField(
              icon: Icons.person,
              password: false,
              email: "Country",
              inputType: TextInputType.emailAddress,
              textEditingController: countryController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            textFromField(
              icon: Icons.person,
              password: false,
              email: "Pincode",
              inputType: TextInputType.emailAddress,
              textEditingController: pincodeController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            ButtonBlackBottom(() {
              updateAddress();
            }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    AppBar appBar = AppBar(
      title: Center(
        child: new Text("Address", textAlign: TextAlign.center),
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

  void updateAddress() async {
    setState(() {
      isLoading = true;
    });

    try {
      String address, city, country, pincode;

      address = addressController.text;
      city = cityController.text;
      country = countryController.text;
      pincode = pincodeController.text;
      if (address.isEmpty) {
        displayToast("Please enter address");
      } else if (city.isEmpty) {
        displayToast("Please enter city");
      } else if (country.isEmpty) {
        displayToast("Please enter country");
      } else if (pincode.isEmpty) {
        displayToast("Please enter pincode");
      } else {
        MainApi mainApi = new MainApi.UpdateProfie(
          context: context,
          address: address,
          city: city,
          country: country,
          pincode: pincode,
        );
        Response response = await mainApi.updateAddressDetails(context);
        if (response != null) {
          UserResponseModel userResponseModel =
              UserResponseModel.fromJson(response.toString());
          if (userResponseModel != null) {
            if (userResponseModel.status) {
              displayToast("Profile updated");
            }
          } else {
            displayToast("Someting went worng please try again");
          }
        } else {
          displayToast("Someting went worng please try again");
        }
      }
    } catch (e) {
      print(e);
    }

    setState(() {
      isLoading = false;
    });
  }

  void displayToast(String msg) {
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
