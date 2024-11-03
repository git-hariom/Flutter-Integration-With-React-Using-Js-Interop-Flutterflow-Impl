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

Future<bool> validateInput(
  String type,
  String input,
) async {
  // Add your function code here!
  print('validation type: $type');
  print('validation input: $input');
  //return true;
  return switch (type) {
    'MOBILE_NUMBER' => validateMobileNumber(input),
    'EMAIL' => validateEmail(input),
    'PAN_NUMBER' => validatePANNumber(input),
    'AADHAAR_NUMBER' => validateAadhaar(input),
    'VEHICLE_NUMBER' => validateVehicleNumber(input),
    'OTP_NUMBER' => validateOTP(input),
    'ENGINENO' => validateEngineNo(input),
    'CHASSIS' => validateChassis(input),
    _ => false,
  };
}
