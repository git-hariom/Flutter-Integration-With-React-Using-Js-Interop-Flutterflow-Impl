// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustCommunicationAddressStruct extends BaseStruct {
  CustCommunicationAddressStruct({
    String? address1,
    String? address2,
    String? street,
    String? city,
    String? pincode,
    String? state,
  })  : _address1 = address1,
        _address2 = address2,
        _street = street,
        _city = city,
        _pincode = pincode,
        _state = state;

  // "address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  set address1(String? val) => _address1 = val;

  bool hasAddress1() => _address1 != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  set address2(String? val) => _address2 = val;

  bool hasAddress2() => _address2 != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;

  bool hasStreet() => _street != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "pincode" field.
  String? _pincode;
  String get pincode => _pincode ?? '';
  set pincode(String? val) => _pincode = val;

  bool hasPincode() => _pincode != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  static CustCommunicationAddressStruct fromMap(Map<String, dynamic> data) =>
      CustCommunicationAddressStruct(
        address1: data['address1'] as String?,
        address2: data['address2'] as String?,
        street: data['street'] as String?,
        city: data['city'] as String?,
        pincode: data['pincode'] as String?,
        state: data['state'] as String?,
      );

  static CustCommunicationAddressStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CustCommunicationAddressStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'address1': _address1,
        'address2': _address2,
        'street': _street,
        'city': _city,
        'pincode': _pincode,
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address1': serializeParam(
          _address1,
          ParamType.String,
        ),
        'address2': serializeParam(
          _address2,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustCommunicationAddressStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CustCommunicationAddressStruct(
        address1: deserializeParam(
          data['address1'],
          ParamType.String,
          false,
        ),
        address2: deserializeParam(
          data['address2'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustCommunicationAddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustCommunicationAddressStruct &&
        address1 == other.address1 &&
        address2 == other.address2 &&
        street == other.street &&
        city == other.city &&
        pincode == other.pincode &&
        state == other.state;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([address1, address2, street, city, pincode, state]);
}

CustCommunicationAddressStruct createCustCommunicationAddressStruct({
  String? address1,
  String? address2,
  String? street,
  String? city,
  String? pincode,
  String? state,
}) =>
    CustCommunicationAddressStruct(
      address1: address1,
      address2: address2,
      street: street,
      city: city,
      pincode: pincode,
      state: state,
    );
