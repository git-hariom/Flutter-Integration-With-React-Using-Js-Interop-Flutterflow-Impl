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

import 'dart:convert';
import 'dart:math' as math;

Future<String> generateRequestId() async {
  // Generate a random number between 0 and 100
  String requestID = '';

  DateTime now = DateTime.now();
  final math.Random _random = math.Random();

  requestID = now.day.toString().padLeft(2, '0') +
      now.month.toString().padLeft(2, '0') +
      now.year.toString().padLeft(4, '0') +
      now.hour.toString().padLeft(2, '0') +
      now.minute.toString().padLeft(2, '0') +
      now.second.toString().padLeft(2, '0') +
      now.millisecond.toString().padLeft(6, '0') +
      (1000 + _random.nextInt(9000)).toString().padLeft(6, '0');
  // Update the AppState variable (replace 'randomNumber' with your actual AppState variable)
  return requestID;
}
