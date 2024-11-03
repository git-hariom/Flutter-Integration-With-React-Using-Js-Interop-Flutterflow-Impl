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

import 'package:http/http.dart' as http;

Future<dynamic?> dedupeStatusApiCall() async {
  // an action which starts a timer when called and checks whether it hasnt breached a particluar time limit

  int retryLimit = 10; // retry limit
  int retryCount = 0;
  final appState = FFAppState();
  dynamic apiResp;

  await Future.doWhile(() async {
    try {
      retryCount++;
      final refreshResponse = await http.post(
          Uri.parse(
              '${appState.url}/customer-onboarding-backend-auth/v4/dedupe/status'),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${appState.bearerToken}',
            'entityId': '123456', //'${appState.entityId}',
            'createUser': '123456', //'${appState.createUser}'
            'journeyId': '${appState.journeyId}',
            'requestId': getRequestId(),
            'source': 'API'
          },
          body: jsonEncode({}));

      final responBody = jsonDecode(refreshResponse.body);

      if (refreshResponse.statusCode == 200) {
        print(
            'newCustomAction: refreshResponse: ${refreshResponse.statusCode}');
        //final responBody = jsonDecode(refreshResponse.body);
        print("newCustomAction: repsonse body");
        if (responBody["resCode"] == "700") {
          print("newCustomAction: entered 700 code check");
          apiResp = responBody;
          print("newCustomAction: apiResp");
          return false;
        }
        if (retryCount == retryLimit) {
          apiResp = responBody;
          print("newCustomAction: Limit breached for 700!");
          return false;
        }
        await Future.delayed(Duration(seconds: 5));
        return true;
      }
      print(retryCount);

      if (retryCount == retryLimit) {
        apiResp = responBody;
        print("newCustomAction: Limit breached for 200!");
        return false;
      }

      apiResp = responBody;

      await Future.delayed(Duration(seconds: 5));

      return true;
    } catch (err) {
      print('newCustomAction: refresh token api failed: $err');
      return true;
    }
  });
  print(apiResp);
  return apiResp;
}
