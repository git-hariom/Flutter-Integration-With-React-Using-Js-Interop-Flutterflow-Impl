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

import 'dart:core';
import 'dart:convert';
import 'package:crypto/crypto.dart';

Future<String?> getChkSmCchListing(
    String? secureToken,
    String requestId,
    String journeyId,
    String source,
    String entityId,
    String createUser,
    String tagVehicleClass) async {
  // Add your function code here!
  var checkSumStringWithSecureToken = secureToken! +
      requestId +
      journeyId +
      source +
      entityId +
      createUser +
      tagVehicleClass;

  var bytes = utf8.encode(checkSumStringWithSecureToken);
  var digest = sha256.convert(bytes);

  // different formats -- check with backend team for what they need
  var bytesDigest = digest.bytes;
  var hexDigest = digest.toString();

  return hexDigest;
}
