// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerDetailsStruct extends BaseStruct {
  CustomerDetailsStruct({
    String? customerID,
    String? customerName,
    String? mobileNumber,
    String? dob,
    String? posidexUcic,
  })  : _customerID = customerID,
        _customerName = customerName,
        _mobileNumber = mobileNumber,
        _dob = dob,
        _posidexUcic = posidexUcic;

  // "CustomerID" field.
  String? _customerID;
  String get customerID => _customerID ?? '1';
  set customerID(String? val) => _customerID = val;

  bool hasCustomerID() => _customerID != null;

  // "CustomerName" field.
  String? _customerName;
  String get customerName => _customerName ?? 'hariom';
  set customerName(String? val) => _customerName = val;

  bool hasCustomerName() => _customerName != null;

  // "mobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  set dob(String? val) => _dob = val;

  bool hasDob() => _dob != null;

  // "posidexUcic" field.
  String? _posidexUcic;
  String get posidexUcic => _posidexUcic ?? '';
  set posidexUcic(String? val) => _posidexUcic = val;

  bool hasPosidexUcic() => _posidexUcic != null;

  static CustomerDetailsStruct fromMap(Map<String, dynamic> data) =>
      CustomerDetailsStruct(
        customerID: data['CustomerID'] as String?,
        customerName: data['CustomerName'] as String?,
        mobileNumber: data['mobileNumber'] as String?,
        dob: data['dob'] as String?,
        posidexUcic: data['posidexUcic'] as String?,
      );

  static CustomerDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CustomerID': _customerID,
        'CustomerName': _customerName,
        'mobileNumber': _mobileNumber,
        'dob': _dob,
        'posidexUcic': _posidexUcic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CustomerID': serializeParam(
          _customerID,
          ParamType.String,
        ),
        'CustomerName': serializeParam(
          _customerName,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'dob': serializeParam(
          _dob,
          ParamType.String,
        ),
        'posidexUcic': serializeParam(
          _posidexUcic,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerDetailsStruct(
        customerID: deserializeParam(
          data['CustomerID'],
          ParamType.String,
          false,
        ),
        customerName: deserializeParam(
          data['CustomerName'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.String,
          false,
        ),
        dob: deserializeParam(
          data['dob'],
          ParamType.String,
          false,
        ),
        posidexUcic: deserializeParam(
          data['posidexUcic'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerDetailsStruct &&
        customerID == other.customerID &&
        customerName == other.customerName &&
        mobileNumber == other.mobileNumber &&
        dob == other.dob &&
        posidexUcic == other.posidexUcic;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([customerID, customerName, mobileNumber, dob, posidexUcic]);
}

CustomerDetailsStruct createCustomerDetailsStruct({
  String? customerID,
  String? customerName,
  String? mobileNumber,
  String? dob,
  String? posidexUcic,
}) =>
    CustomerDetailsStruct(
      customerID: customerID,
      customerName: customerName,
      mobileNumber: mobileNumber,
      dob: dob,
      posidexUcic: posidexUcic,
    );
