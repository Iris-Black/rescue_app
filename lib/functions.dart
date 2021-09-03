import 'dart:ui';

import 'package:http/http.dart' as http;
import 'dart:convert';

whichPage(List isSelected) {
  for (int i = 0; i < isSelected.length; i++) {
    if (isSelected[i] == true) {
      return i;
    } else {
      continue;
    }
  }
}

setValue(int value, int value_to_set) {
  return value_to_set = value;
}
