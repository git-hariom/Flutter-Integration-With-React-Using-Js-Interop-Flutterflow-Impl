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

import 'dart:async';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;

Future manageAccessToken() async {
  // Add your function code here!
  final validationInterval = 5;
  final minutesBeforeExpiry = 1;
  final appState = FFAppState();
  final token = appState.bearerToken;

  if (token == null) return;

  try {
    DateTime tokenExpiresAt = JwtDecoder.getExpirationDate(token);

    Timer.periodic(new Duration(seconds: validationInterval), (timer) {
      final minutesRemaining =
          tokenExpiresAt.difference(DateTime.now()).inMinutes;

      if (JwtDecoder.isExpired(token)) {
        timer.cancel();
        exitFlutter();
        return;
      }

      if (minutesRemaining <= minutesBeforeExpiry) {
        timer.cancel();

        Future.doWhile(() async {
          try {
            final refreshResponse = await http.post(
              Uri.parse(
                  '${appState.url}/customer-onboarding-backend-auth/auth/refresh-token'),
              headers: {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer ${appState.bearerToken}',
                'entityId': '62740',
              },
            );

            if (refreshResponse.statusCode == 200) {
              final responBody = jsonDecode(refreshResponse.body);
              FFAppState().bearerToken = responBody['token'];
              return false;
            }

            return true;
          } catch (err) {
            return true;
          }
        });

        return;
      }
    });
  } catch (err) {
    print('manageAccessToken: token decode failed: $err');
  }
}
