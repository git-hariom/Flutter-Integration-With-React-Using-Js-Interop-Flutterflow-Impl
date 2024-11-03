// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedCustomerDetailsStruct extends BaseStruct {
  SelectedCustomerDetailsStruct({
    String? custID,
    String? name,
  })  : _custID = custID,
        _name = name;

  // "custID" field.
  String? _custID;
  String get custID => _custID ?? '';
  set custID(String? val) => _custID = val;

  bool hasCustID() => _custID != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static SelectedCustomerDetailsStruct fromMap(Map<String, dynamic> data) =>
      SelectedCustomerDetailsStruct(
        custID: data['custID'] as String?,
        name: data['name'] as String?,
      );

  static SelectedCustomerDetailsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? SelectedCustomerDetailsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'custID': _custID,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'custID': serializeParam(
          _custID,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SelectedCustomerDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SelectedCustomerDetailsStruct(
        custID: deserializeParam(
          data['custID'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SelectedCustomerDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedCustomerDetailsStruct &&
        custID == other.custID &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([custID, name]);
}

SelectedCustomerDetailsStruct createSelectedCustomerDetailsStruct({
  String? custID,
  String? name,
}) =>
    SelectedCustomerDetailsStruct(
      custID: custID,
      name: name,
    );
