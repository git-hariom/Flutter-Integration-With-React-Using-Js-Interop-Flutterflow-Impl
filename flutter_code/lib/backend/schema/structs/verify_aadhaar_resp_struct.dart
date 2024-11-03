// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VerifyAadhaarRespStruct extends BaseStruct {
  VerifyAadhaarRespStruct({
    String? requestId,
    String? journeyId,
    String? resCode,
    String? resMsg,
    CustomerStruct? customer,
    VehicleStruct? vehicle,
  })  : _requestId = requestId,
        _journeyId = journeyId,
        _resCode = resCode,
        _resMsg = resMsg,
        _customer = customer,
        _vehicle = vehicle;

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

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  // "vehicle" field.
  VehicleStruct? _vehicle;
  VehicleStruct get vehicle => _vehicle ?? VehicleStruct();
  set vehicle(VehicleStruct? val) => _vehicle = val;

  void updateVehicle(Function(VehicleStruct) updateFn) {
    updateFn(_vehicle ??= VehicleStruct());
  }

  bool hasVehicle() => _vehicle != null;

  static VerifyAadhaarRespStruct fromMap(Map<String, dynamic> data) =>
      VerifyAadhaarRespStruct(
        requestId: data['requestId'] as String?,
        journeyId: data['journeyId'] as String?,
        resCode: data['resCode'] as String?,
        resMsg: data['resMsg'] as String?,
        customer: CustomerStruct.maybeFromMap(data['customer']),
        vehicle: VehicleStruct.maybeFromMap(data['vehicle']),
      );

  static VerifyAadhaarRespStruct? maybeFromMap(dynamic data) => data is Map
      ? VerifyAadhaarRespStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'requestId': _requestId,
        'journeyId': _journeyId,
        'resCode': _resCode,
        'resMsg': _resMsg,
        'customer': _customer?.toMap(),
        'vehicle': _vehicle?.toMap(),
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
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
        'vehicle': serializeParam(
          _vehicle,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static VerifyAadhaarRespStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VerifyAadhaarRespStruct(
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
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        vehicle: deserializeStructParam(
          data['vehicle'],
          ParamType.DataStruct,
          false,
          structBuilder: VehicleStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VerifyAadhaarRespStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VerifyAadhaarRespStruct &&
        requestId == other.requestId &&
        journeyId == other.journeyId &&
        resCode == other.resCode &&
        resMsg == other.resMsg &&
        customer == other.customer &&
        vehicle == other.vehicle;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([requestId, journeyId, resCode, resMsg, customer, vehicle]);
}

VerifyAadhaarRespStruct createVerifyAadhaarRespStruct({
  String? requestId,
  String? journeyId,
  String? resCode,
  String? resMsg,
  CustomerStruct? customer,
  VehicleStruct? vehicle,
}) =>
    VerifyAadhaarRespStruct(
      requestId: requestId,
      journeyId: journeyId,
      resCode: resCode,
      resMsg: resMsg,
      customer: customer ?? CustomerStruct(),
      vehicle: vehicle ?? VehicleStruct(),
    );
