// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkFinalAmount(
  String inputValue,
  String calculatedAmount,
) async {
  // an action whose return type is boolean
  double input = double.parse(inputValue);
  double calculated = double.parse(calculatedAmount);

  if (input > calculated) {
    return true;
  } else {
    return false;
  }
}
