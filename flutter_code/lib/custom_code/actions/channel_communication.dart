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

Future channelCommunication() async {
  // Add your function code here!
  try {
    Future<void> channelReceiver(MethodCall call) async {
      try {
        if (call.method == "etoll_agent_data") {
          final data = call.arguments;
          FFAppState().bearerToken = data['bearerToken'];
          FFAppState().entityId = data['entityId'];
          FFAppState().source = data['source'];
          FFAppState().createUser = data['createUser'];
        }
      } catch (e) {
        print('channelCommunication: channelReceiver: failed with error: $e');
      }
    }

    const androidChannel = MethodChannel('etoll_agent_data');
    androidChannel.setMethodCallHandler(channelReceiver);
  } catch (e) {
    print('channelCommunication: failed with error: $e');
  }
}
