import 'package:flutter/material.dart';

appOutlineButton(String label, Color borderColor, dynamic onPressed,
    double width, BuildContext context) {
  return Container(
    width: width,
    child: OutlineButton(
      shape: StadiumBorder(),
      borderSide: BorderSide(color: borderColor, width: 2),
      onPressed: onPressed,
      child: Text(
        '$label',
        style: TextStyle(color: Colors.white, fontSize: 17),
      ),
    ),
  );
}
