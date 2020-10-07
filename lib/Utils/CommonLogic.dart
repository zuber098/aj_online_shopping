import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toast/toast.dart';

Future<bool> checkConnection() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}
bool validateEmail(String email)
{
  String p = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  RegExp regExp = new RegExp(p);

  return regExp.hasMatch(email);
}

void displayToast(String msg,BuildContext context) {
  Toast.show(msg, context, duration: Toast.LENGTH_LONG);
}

Future<bool> storagePermission() async{
  if(await Permission.storage.request().isGranted)
    return true;
  return false;
}
Future<bool> cameraPermission() async{
  if(await Permission.camera.request().isGranted)
    return true;
  return false;
}
