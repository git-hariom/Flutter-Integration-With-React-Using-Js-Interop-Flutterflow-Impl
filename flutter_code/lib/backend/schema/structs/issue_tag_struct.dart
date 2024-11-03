// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IssueTagStruct extends BaseStruct {
  IssueTagStruct({
    VehicleStruct? vehicle,
    String? custId,
    String? requestId,
    String? journeyId,
    String? resCode,
    String? resMsg,
  })  : _vehicle = vehicle,
        _custId = custId,
        _requestId = requestId,
        _journeyId = journeyId,
        _resCode = resCode,
        _resMsg = resMsg;

  // "vehicle" field.
  VehicleStruct? _vehicle;
  VehicleStruct get vehicle => _vehicle ?? VehicleStruct();
  set vehicle(VehicleStruct? val) => _vehicle = val;

  void updateVehicle(Function(VehicleStruct) updateFn) {
    updateFn(_vehicle ??= VehicleStruct());
  }

  bool hasVehicle() => _vehicle != null;

  // "custId" field.
  String? _custId;
  String get custId => _custId ?? '';
  set custId(String? val) => _custId = val;

  bool hasCustId() => _custId != null;

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

  static IssueTagStruct fromMap(Map<String, dynamic> data) => IssueTagStruct(
        vehicle: VehicleStruct.maybeFromMap(data['vehicle']),
        custId: data['custId'] as String?,
        requestId: data['requestId'] as String?,
        journeyId: data['journeyId'] as String?,
        resCode: data['resCode'] as String?,
        resMsg: data['resMsg'] as String?,
      );

  static IssueTagStruct? maybeFromMap(dynamic data) =>
      data is Map ? IssueTagStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'vehicle': _vehicle?.toMap(),
        'custId': _custId,
        'requestId': _requestId,
        'journeyId': _journeyId,
        'resCode': _resCode,
        'resMsg': _resMsg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vehicle': serializeParam(
          _vehicle,
          ParamType.DataStruct,
        ),
        'custId': serializeParam(
          _custId,
          ParamType.String,
        ),
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
      }.withoutNulls;

  static IssueTagStruct fromSerializableMap(Map<String, dynamic> data) =>
      IssueTagStruct(
        vehicle: deserializeStructParam(
          data['vehicle'],
          ParamType.DataStruct,
          false,
          structBuilder: VehicleStruct.fromSerializableMap,
        ),
        custId: deserializeParam(
          data['custId'],
          ParamType.String,
          false,
        ),
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
      );

  @override
  String toString() => 'IssueTagStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IssueTagStruct &&
        vehicle == other.vehicle &&
        custId == other.custId &&
        requestId == other.requestId &&
        journeyId == other.journeyId &&
        resCode == other.resCode &&
        resMsg == other.resMsg;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([vehicle, custId, requestId, journeyId, resCode, resMsg]);
}

IssueTagStruct createIssueTagStruct({
  VehicleStruct? vehicle,
  String? custId,
  String? requestId,
  String? journeyId,
  String? resCode,
  String? resMsg,
}) =>
    IssueTagStruct(
      vehicle: vehicle ?? VehicleStruct(),
      custId: custId,
      requestId: requestId,
      journeyId: journeyId,
      resCode: resCode,
      resMsg: resMsg,
    );
