import 'package:flutter/cupertino.dart';

createListButtonItem(
  var value,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Text(
      value,
      textScaleFactor: 1.25,
    ),
  );
}
