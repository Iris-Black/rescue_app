import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

createListButtonItem(
  var value,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      child: Text(
        value,
        textScaleFactor: 1.25,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
