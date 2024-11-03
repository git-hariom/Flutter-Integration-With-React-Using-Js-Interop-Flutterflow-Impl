// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RefreshTokenResponseStruct extends BaseStruct {
  RefreshTokenResponseStruct({
    String? message,
    String? tokenType,
    String? token,
    String? expiryTime,
  })  : _message = message,
        _tokenType = tokenType,
        _token = token,
        _expiryTime = expiryTime;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "tokenType" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? '';
  set tokenType(String? val) => _tokenType = val;

  bool hasTokenType() => _tokenType != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "expiryTime" field.
  String? _expiryTime;
  String get expiryTime => _expiryTime ?? '';
  set expiryTime(String? val) => _expiryTime = val;

  bool hasExpiryTime() => _expiryTime != null;

  static RefreshTokenResponseStruct fromMap(Map<String, dynamic> data) =>
      RefreshTokenResponseStruct(
        message: data['message'] as String?,
        tokenType: data['tokenType'] as String?,
        token: data['token'] as String?,
        expiryTime: data['expiryTime'] as String?,
      );

  static RefreshTokenResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? RefreshTokenResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'tokenType': _tokenType,
        'token': _token,
        'expiryTime': _expiryTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'tokenType': serializeParam(
          _tokenType,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'expiryTime': serializeParam(
          _expiryTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static RefreshTokenResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RefreshTokenResponseStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['tokenType'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        expiryTime: deserializeParam(
          data['expiryTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RefreshTokenResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RefreshTokenResponseStruct &&
        message == other.message &&
        tokenType == other.tokenType &&
        token == other.token &&
        expiryTime == other.expiryTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([message, tokenType, token, expiryTime]);
}

RefreshTokenResponseStruct createRefreshTokenResponseStruct({
  String? message,
  String? tokenType,
  String? token,
  String? expiryTime,
}) =>
    RefreshTokenResponseStruct(
      message: message,
      tokenType: tokenType,
      token: token,
      expiryTime: expiryTime,
    );
