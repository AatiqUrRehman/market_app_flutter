import 'package:flutter/material.dart';

appRaisedButton(String label, Color backgroundColor, dynamic onPressed,
    double width, BuildContext context) {
  return Container(
    width: width,
    child: RaisedButton(
      shape: StadiumBorder(),
      color: backgroundColor,
      onPressed: onPressed,
      child: Text(
        '$label',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
