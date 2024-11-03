import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

bool validateMobileNumber(String input) {
  final mobileNumber = RegExp(r'^(\+91[\-\s]?)?[0]?(91)?[56789]\d{9}$');
  return mobileNumber.hasMatch(input);
}

bool validateEmail(String input) {
  final email = RegExp(r'[a-z0-9]+@[a-z]+\.[a-z]{2,3}');
  return email.hasMatch(input);
}

bool validateVehicleNumber(String input) {
  // final vehicleNumber = RegExp(r'^[A-Z]{2,3}[0-9]{1,3}[A-Z]{1,3}[0-9]{2,6}$');
  // return vehicleNumber.hasMatch(input);
  return true;
}

bool validatePANNumber(String input) {
  final panNumber = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]$');
  return panNumber.hasMatch(input);
}

bool validateAadhaar(String input) {
  final aadhaarNumber = RegExp(r'^[2-9]{1}[0-9]{11}$');
  return aadhaarNumber.hasMatch(input);
}

bool validateOTP(String input) {
  final validateOTP = RegExp(r'^\d{6}$');
  return validateOTP.hasMatch(input);
}

bool validateEngineNo(String input) {
  final engineno = RegExp(r'^\d{5}$');
  return engineno.hasMatch(input);
}

bool validateChassis(String input) {
  final chassisNumberRegExp = RegExp(r'^[A-Z0-9]{17}$');
  return chassisNumberRegExp.hasMatch(input);
}

String updateUpperCase(String input) {
  // when function is called, the string is input. small case should be update on change on the screen

  String updatedString = '';

  for (int i = 0; i < input.length; i++) {
    if (input[i] == input[i].toLowerCase()) {
      updatedString += input[i].toUpperCase();
    } else {
      updatedString += input[i].toLowerCase();
    }
  }

  return updatedString;
}

String getRequestId() {
  // when function is called, the string is input. small case should be update on change on the screen

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

  return requestID;
}
