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

import 'package:flutter/services.dart';

Future<String?> useBiometric() async {
  // Add your function code here!
  try {
    final platform = MethodChannel('etoll_agent_data');
    final String result = await platform.invokeMethod('useBiometric');
    return result;
  } catch (e) {
    print('useBiometric: failed with error: $e');
    return null;
  }
}
