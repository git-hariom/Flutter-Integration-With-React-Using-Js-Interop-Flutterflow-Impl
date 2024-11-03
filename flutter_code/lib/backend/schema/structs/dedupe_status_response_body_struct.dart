// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DedupeStatusResponseBodyStruct extends BaseStruct {
  DedupeStatusResponseBodyStruct({
    String? requestId,
    String? journeyId,
    String? resCode,
    String? resMsg,
    DedupeStatusVehicleDtlsStruct? vehicle,
    List<ExstingCustomerStruct>? existingCustomerDtls,
  })  : _requestId = requestId,
        _journeyId = journeyId,
        _resCode = resCode,
        _resMsg = resMsg,
        _vehicle = vehicle,
        _existingCustomerDtls = existingCustomerDtls;

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

  // "vehicle" field.
  DedupeStatusVehicleDtlsStruct? _vehicle;
  DedupeStatusVehicleDtlsStruct get vehicle =>
      _vehicle ?? DedupeStatusVehicleDtlsStruct();
  set vehicle(DedupeStatusVehicleDtlsStruct? val) => _vehicle = val;

  void updateVehicle(Function(DedupeStatusVehicleDtlsStruct) updateFn) {
    updateFn(_vehicle ??= DedupeStatusVehicleDtlsStruct());
  }

  bool hasVehicle() => _vehicle != null;

  // "existingCustomerDtls" field.
  List<ExstingCustomerStruct>? _existingCustomerDtls;
  List<ExstingCustomerStruct> get existingCustomerDtls =>
      _existingCustomerDtls ?? const [];
  set existingCustomerDtls(List<ExstingCustomerStruct>? val) =>
      _existingCustomerDtls = val;

  void updateExistingCustomerDtls(
      Function(List<ExstingCustomerStruct>) updateFn) {
    updateFn(_existingCustomerDtls ??= []);
  }

  bool hasExistingCustomerDtls() => _existingCustomerDtls != null;

  static DedupeStatusResponseBodyStruct fromMap(Map<String, dynamic> data) =>
      DedupeStatusResponseBodyStruct(
        requestId: data['requestId'] as String?,
        journeyId: data['journeyId'] as String?,
        resCode: data['resCode'] as String?,
        resMsg: data['resMsg'] as String?,
        vehicle: DedupeStatusVehicleDtlsStruct.maybeFromMap(data['vehicle']),
        existingCustomerDtls: getStructList(
          data['existingCustomerDtls'],
          ExstingCustomerStruct.fromMap,
        ),
      );

  static DedupeStatusResponseBodyStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DedupeStatusResponseBodyStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'requestId': _requestId,
        'journeyId': _journeyId,
        'resCode': _resCode,
        'resMsg': _resMsg,
        'vehicle': _vehicle?.toMap(),
        'existingCustomerDtls':
            _existingCustomerDtls?.map((e) => e.toMap()).toList(),
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
        'vehicle': serializeParam(
          _vehicle,
          ParamType.DataStruct,
        ),
        'existingCustomerDtls': serializeParam(
          _existingCustomerDtls,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DedupeStatusResponseBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DedupeStatusResponseBodyStruct(
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
        vehicle: deserializeStructParam(
          data['vehicle'],
          ParamType.DataStruct,
          false,
          structBuilder: DedupeStatusVehicleDtlsStruct.fromSerializableMap,
        ),
        existingCustomerDtls: deserializeStructParam<ExstingCustomerStruct>(
          data['existingCustomerDtls'],
          ParamType.DataStruct,
          true,
          structBuilder: ExstingCustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DedupeStatusResponseBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DedupeStatusResponseBodyStruct &&
        requestId == other.requestId &&
        journeyId == other.journeyId &&
        resCode == other.resCode &&
        resMsg == other.resMsg &&
        vehicle == other.vehicle &&
        listEquality.equals(existingCustomerDtls, other.existingCustomerDtls);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [requestId, journeyId, resCode, resMsg, vehicle, existingCustomerDtls]);
}

DedupeStatusResponseBodyStruct createDedupeStatusResponseBodyStruct({
  String? requestId,
  String? journeyId,
  String? resCode,
  String? resMsg,
  DedupeStatusVehicleDtlsStruct? vehicle,
}) =>
    DedupeStatusResponseBodyStruct(
      requestId: requestId,
      journeyId: journeyId,
      resCode: resCode,
      resMsg: resMsg,
      vehicle: vehicle ?? DedupeStatusVehicleDtlsStruct(),
    );
