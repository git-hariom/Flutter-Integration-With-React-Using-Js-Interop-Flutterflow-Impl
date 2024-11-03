// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpiTagIssueStruct extends BaseStruct {
  UpiTagIssueStruct({
    String? requestId,
    String? journeyId,
    String? resCode,
    String? resMsg,
    String? payeeUrl,
    String? upiOrderId,
  })  : _requestId = requestId,
        _journeyId = journeyId,
        _resCode = resCode,
        _resMsg = resMsg,
        _payeeUrl = payeeUrl,
        _upiOrderId = upiOrderId;

  // "requestId" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  set requestId(String? val) => _requestId = val;

  bool hasRequestId() => _requestId != null;

  // "journeyId" field.
  String? _journeyId;
  String get journeyId => _journeyId ?? '';
  set journeyId(String? val) => _journeyId = val;

  bool hasJourneyId() => _journeyId != null;

  // "resCode" field.
  String? _resCode;
  String get resCode => _resCode ?? '';
  set resCode(String? val) => _resCode = val;

  bool hasResCode() => _resCode != null;

  // "resMsg" field.
  String? _resMsg;
  String get resMsg => _resMsg ?? '';
  set resMsg(String? val) => _resMsg = val;

  bool hasResMsg() => _resMsg != null;

  // "payeeUrl" field.
  String? _payeeUrl;
  String get payeeUrl => _payeeUrl ?? '';
  set payeeUrl(String? val) => _payeeUrl = val;

  bool hasPayeeUrl() => _payeeUrl != null;

  // "upiOrderId" field.
  String? _upiOrderId;
  String get upiOrderId => _upiOrderId ?? '';
  set upiOrderId(String? val) => _upiOrderId = val;

  bool hasUpiOrderId() => _upiOrderId != null;

  static UpiTagIssueStruct fromMap(Map<String, dynamic> data) =>
      UpiTagIssueStruct(
        requestId: data['requestId'] as String?,
        journeyId: data['journeyId'] as String?,
        resCode: data['resCode'] as String?,
        resMsg: data['resMsg'] as String?,
        payeeUrl: data['payeeUrl'] as String?,
        upiOrderId: data['upiOrderId'] as String?,
      );

  static UpiTagIssueStruct? maybeFromMap(dynamic data) => data is Map
      ? UpiTagIssueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'requestId': _requestId,
        'journeyId': _journeyId,
        'resCode': _resCode,
        'resMsg': _resMsg,
        'payeeUrl': _payeeUrl,
        'upiOrderId': _upiOrderId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'requestId': serializeParam(
          _requestId,
          ParamType.String,
        ),
        'journeyId': serializeParam(
          _journeyId,
          ParamType.String,
        ),
        'resCode': serializeParam(
          _resCode,
          ParamType.String,
        ),
        'resMsg': serializeParam(
          _resMsg,
          ParamType.String,
        ),
        'payeeUrl': serializeParam(
          _payeeUrl,
          ParamType.String,
        ),
        'upiOrderId': serializeParam(
          _upiOrderId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UpiTagIssueStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpiTagIssueStruct(
        requestId: deserializeParam(
          data['requestId'],
          ParamType.String,
          false,
        ),
        journeyId: deserializeParam(
          data['journeyId'],
          ParamType.String,
          false,
        ),
        resCode: deserializeParam(
          data['resCode'],
          ParamType.String,
          false,
        ),
        resMsg: deserializeParam(
          data['resMsg'],
          ParamType.String,
          false,
        ),
        payeeUrl: deserializeParam(
          data['payeeUrl'],
          ParamType.String,
          false,
        ),
        upiOrderId: deserializeParam(
          data['upiOrderId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UpiTagIssueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpiTagIssueStruct &&
        requestId == other.requestId &&
        journeyId == other.journeyId &&
        resCode == other.resCode &&
        resMsg == other.resMsg &&
        payeeUrl == other.payeeUrl &&
        upiOrderId == other.upiOrderId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([requestId, journeyId, resCode, resMsg, payeeUrl, upiOrderId]);
}

UpiTagIssueStruct createUpiTagIssueStruct({
  String? requestId,
  String? journeyId,
  String? resCode,
  String? resMsg,
  String? payeeUrl,
  String? upiOrderId,
}) =>
    UpiTagIssueStruct(
      requestId: requestId,
      journeyId: journeyId,
      resCode: resCode,
      resMsg: resMsg,
      payeeUrl: payeeUrl,
      upiOrderId: upiOrderId,
    );
