import 'package:ajonlineshope/Model/user_response_model.dart';
import 'package:flutter/material.dart';

class EditPhone extends StatefulWidget {
  bool isPhone;
  UserResponseModel userResponseModel;

  EditPhone({this.isPhone,this.userResponseModel});
  @override
  _EditPhoneState createState() => _EditPhoneState();
}

class _EditPhoneState extends State<EditPhone> {
  TextEditingController phoneController = new TextEditingController();

  Widget body(mediaQuery) {
    return SingleChildScrollView(
      child: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: mediaQuery.size.height * 0.3,
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Text(
                widget.isPhone?"Please enter mobile number with country code \n(if not entered by default will be \"+1\" ) ":"Enter valid email to update",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            textFromField(
              icon: widget.isPhone?Icons.phone:Icons.mail,
              password: false,
              email: "Phone",
              inputType: TextInputType.emailAddress,
              textEditingController: phoneController,
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            ButtonBlackBottom(() {
              if(widget.isPhone)
                {
                  updatePhone();
                }
              else
                {
                  updateEmail();
                }

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
        child: new Text(widget.isPhone?"Telephone":"Email", textAlign: TextAlign.center),
      ),
      automaticallyImplyLeading: false,
    );
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: body(mediaQuery),
      ),
    );
  }


  void updatePhone() {}

  void updateEmail() {}
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
