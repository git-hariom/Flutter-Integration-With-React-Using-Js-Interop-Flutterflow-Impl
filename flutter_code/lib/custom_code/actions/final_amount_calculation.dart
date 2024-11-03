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

Future<String?> finalAmountCalculation() async {
  // a custom action which takes 5 strings that have a double value, sums the values and then returns the sum as a string

  final appState = FFAppState();
  List<String> values = [
    appState.selectedProduct.firstRecharge,
    appState.selectedProduct.replacementFee,
    appState.selectedProduct.securityAmt,
    appState.selectedProduct.minProdValue,
    appState.selectedProduct.initialAmt,
    appState.selectedProduct.premiumServiceCharges
  ];
  print("the values for the product are ");
  print(values);

  double sum = 0.0;

  for (String value in values) {
    sum += double.parse(value);
  }

  String sumAsString = sum.toString();

  print(sumAsString);

  return sumAsString;
}
