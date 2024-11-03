// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    String? name,
    String? dob,
    String? mobileNo,
    String? posidexUcic,
    PermanentAddressStruct? permanentAddress,
  })  : _name = name,
        _dob = dob,
        _mobileNo = mobileNo,
        _posidexUcic = posidexUcic,
        _permanentAddress = permanentAddress;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  set dob(String? val) => _dob = val;

  bool hasDob() => _dob != null;

  // "mobileNo" field.
  String? _mobileNo;
  String get mobileNo => _mobileNo ?? '';
  set mobileNo(String? val) => _mobileNo = val;

  bool hasMobileNo() => _mobileNo != null;

  // "posidexUcic" field.
  String? _posidexUcic;
  String get posidexUcic => _posidexUcic ?? '';
  set posidexUcic(String? val) => _posidexUcic = val;

  bool hasPosidexUcic() => _posidexUcic != null;

  // "permanentAddress" field.
  PermanentAddressStruct? _permanentAddress;
  PermanentAddressStruct get permanentAddress =>
      _permanentAddress ?? PermanentAddressStruct();
  set permanentAddress(PermanentAddressStruct? val) => _permanentAddress = val;

  void updatePermanentAddress(Function(PermanentAddressStruct) updateFn) {
    updateFn(_permanentAddress ??= PermanentAddressStruct());
  }

  bool hasPermanentAddress() => _permanentAddress != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        name: data['name'] as String?,
        dob: data['dob'] as String?,
        mobileNo: data['mobileNo'] as String?,
        posidexUcic: data['posidexUcic'] as String?,
        permanentAddress:
            PermanentAddressStruct.maybeFromMap(data['permanentAddress']),
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'dob': _dob,
        'mobileNo': _mobileNo,
        'posidexUcic': _posidexUcic,
        'permanentAddress': _permanentAddress?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'dob': serializeParam(
          _dob,
          ParamType.String,
        ),
        'mobileNo': serializeParam(
          _mobileNo,
          ParamType.String,
        ),
        'posidexUcic': serializeParam(
          _posidexUcic,
          ParamType.String,
        ),
        'permanentAddress': serializeParam(
          _permanentAddress,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        dob: deserializeParam(
          data['dob'],
          ParamType.String,
          false,
        ),
        mobileNo: deserializeParam(
          data['mobileNo'],
          ParamType.String,
          false,
        ),
        posidexUcic: deserializeParam(
          data['posidexUcic'],
          ParamType.String,
          false,
        ),
        permanentAddress: deserializeStructParam(
          data['permanentAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: PermanentAddressStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        name == other.name &&
        dob == other.dob &&
        mobileNo == other.mobileNo &&
        posidexUcic == other.posidexUcic &&
        permanentAddress == other.permanentAddress;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, dob, mobileNo, posidexUcic, permanentAddress]);
}

CustomerStruct createCustomerStruct({
  String? name,
  String? dob,
  String? mobileNo,
  String? posidexUcic,
  PermanentAddressStruct? permanentAddress,
}) =>
    CustomerStruct(
      name: name,
      dob: dob,
      mobileNo: mobileNo,
      posidexUcic: posidexUcic,
      permanentAddress: permanentAddress ?? PermanentAddressStruct(),
    );
