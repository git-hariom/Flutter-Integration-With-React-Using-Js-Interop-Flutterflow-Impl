// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BarcodeStruct extends BaseStruct {
  BarcodeStruct({
    String? barCode,
    String? cardType,
    String? vehicleClassDesc,
    String? refCardNo,
  })  : _barCode = barCode,
        _cardType = cardType,
        _vehicleClassDesc = vehicleClassDesc,
        _refCardNo = refCardNo;

  // "barCode" field.
  String? _barCode;
  String get barCode => _barCode ?? '';
  set barCode(String? val) => _barCode = val;

  bool hasBarCode() => _barCode != null;

  // "cardType" field.
  String? _cardType;
  String get cardType => _cardType ?? '';
  set cardType(String? val) => _cardType = val;

  bool hasCardType() => _cardType != null;

  // "vehicleClassDesc" field.
  String? _vehicleClassDesc;
  String get vehicleClassDesc => _vehicleClassDesc ?? '';
  set vehicleClassDesc(String? val) => _vehicleClassDesc = val;

  bool hasVehicleClassDesc() => _vehicleClassDesc != null;

  // "refCardNo" field.
  String? _refCardNo;
  String get refCardNo => _refCardNo ?? '';
  set refCardNo(String? val) => _refCardNo = val;

  bool hasRefCardNo() => _refCardNo != null;

  static BarcodeStruct fromMap(Map<String, dynamic> data) => BarcodeStruct(
        barCode: data['barCode'] as String?,
        cardType: data['cardType'] as String?,
        vehicleClassDesc: data['vehicleClassDesc'] as String?,
        refCardNo: data['refCardNo'] as String?,
      );

  static BarcodeStruct? maybeFromMap(dynamic data) =>
      data is Map ? BarcodeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'barCode': _barCode,
        'cardType': _cardType,
        'vehicleClassDesc': _vehicleClassDesc,
        'refCardNo': _refCardNo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'barCode': serializeParam(
          _barCode,
          ParamType.String,
        ),
        'cardType': serializeParam(
          _cardType,
          ParamType.String,
        ),
        'vehicleClassDesc': serializeParam(
          _vehicleClassDesc,
          ParamType.String,
        ),
        'refCardNo': serializeParam(
          _refCardNo,
          ParamType.String,
        ),
      }.withoutNulls;

  static BarcodeStruct fromSerializableMap(Map<String, dynamic> data) =>
      BarcodeStruct(
        barCode: deserializeParam(
          data['barCode'],
          ParamType.String,
          false,
        ),
        cardType: deserializeParam(
          data['cardType'],
          ParamType.String,
          false,
        ),
        vehicleClassDesc: deserializeParam(
          data['vehicleClassDesc'],
          ParamType.String,
          false,
        ),
        refCardNo: deserializeParam(
          data['refCardNo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BarcodeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BarcodeStruct &&
        barCode == other.barCode &&
        cardType == other.cardType &&
        vehicleClassDesc == other.vehicleClassDesc &&
        refCardNo == other.refCardNo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([barCode, cardType, vehicleClassDesc, refCardNo]);
}

BarcodeStruct createBarcodeStruct({
  String? barCode,
  String? cardType,
  String? vehicleClassDesc,
  String? refCardNo,
}) =>
    BarcodeStruct(
      barCode: barCode,
      cardType: cardType,
      vehicleClassDesc: vehicleClassDesc,
      refCardNo: refCardNo,
    );
