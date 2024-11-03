// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExstingCustomerStruct extends BaseStruct {
  ExstingCustomerStruct({
    String? custId,
    String? name,
    String? kycFlag,
  })  : _custId = custId,
        _name = name,
        _kycFlag = kycFlag;

  // "custId" field.
  String? _custId;
  String get custId => _custId ?? '';
  set custId(String? val) => _custId = val;

  bool hasCustId() => _custId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "kycFlag" field.
  String? _kycFlag;
  String get kycFlag => _kycFlag ?? '';
  set kycFlag(String? val) => _kycFlag = val;

  bool hasKycFlag() => _kycFlag != null;

  static ExstingCustomerStruct fromMap(Map<String, dynamic> data) =>
      ExstingCustomerStruct(
        custId: data['custId'] as String?,
        name: data['name'] as String?,
        kycFlag: data['kycFlag'] as String?,
      );

  static ExstingCustomerStruct? maybeFromMap(dynamic data) => data is Map
      ? ExstingCustomerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'custId': _custId,
        'name': _name,
        'kycFlag': _kycFlag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'custId': serializeParam(
          _custId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'kycFlag': serializeParam(
          _kycFlag,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExstingCustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExstingCustomerStruct(
        custId: deserializeParam(
          data['custId'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        kycFlag: deserializeParam(
          data['kycFlag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExstingCustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExstingCustomerStruct &&
        custId == other.custId &&
        name == other.name &&
        kycFlag == other.kycFlag;
  }

  @override
  int get hashCode => const ListEquality().hash([custId, name, kycFlag]);
}

ExstingCustomerStruct createExstingCustomerStruct({
  String? custId,
  String? name,
  String? kycFlag,
}) =>
    ExstingCustomerStruct(
      custId: custId,
      name: name,
      kycFlag: kycFlag,
    );
