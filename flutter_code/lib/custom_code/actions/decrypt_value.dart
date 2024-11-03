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

import 'package:encrypt/encrypt.dart' as encrypt;
import 'dart:convert';

Future<String> decryptValue(
  String? encryptedValue,
  String? base64Key,
) async {
  // Add your function code here!
  List<int> keyBytes = latin1.encode(base64Key!);
  var key = encrypt.Key(Uint8List.fromList(keyBytes));
  final iv = encrypt.IV(Uint8List.fromList(keyBytes));
  final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'));
  final decrypted = encrypter.decrypt64(encryptedValue!, iv: iv);
  print(decrypted);

  return decrypted;
}
