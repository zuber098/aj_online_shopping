import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoader extends StatefulWidget {
  final Color color;

  CustomLoader({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  _CustomLoaderState createState() => new _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: Container(
              constraints: BoxConstraints(maxHeight: 80.0, maxWidth: 80.0, minHeight: 60, minWidth: 60),
              child: Center(
                child: SpinKitFadingCircle(
                  duration: Duration(milliseconds: 1300),
                  color: (widget.color != null) ? widget.color : Colors.white,
                  size: 60,
                ),
              ))),
    );
  }
}
