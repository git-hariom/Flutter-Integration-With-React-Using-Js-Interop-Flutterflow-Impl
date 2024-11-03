// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BarcodeListReponseStruct extends BaseStruct {
  BarcodeListReponseStruct({
    String? resCode,
    String? resMsg,
    List<BarcodeStruct>? barcodes,
  })  : _resCode = resCode,
        _resMsg = resMsg,
        _barcodes = barcodes;

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

  // "barcodes" field.
  List<BarcodeStruct>? _barcodes;
  List<BarcodeStruct> get barcodes => _barcodes ?? const [];
  set barcodes(List<BarcodeStruct>? val) => _barcodes = val;

  void updateBarcodes(Function(List<BarcodeStruct>) updateFn) {
    updateFn(_barcodes ??= []);
  }

  bool hasBarcodes() => _barcodes != null;

  static BarcodeListReponseStruct fromMap(Map<String, dynamic> data) =>
      BarcodeListReponseStruct(
        resCode: data['resCode'] as String?,
        resMsg: data['resMsg'] as String?,
        barcodes: getStructList(
          data['barcodes'],
          BarcodeStruct.fromMap,
        ),
      );

  static BarcodeListReponseStruct? maybeFromMap(dynamic data) => data is Map
      ? BarcodeListReponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'resCode': _resCode,
        'resMsg': _resMsg,
        'barcodes': _barcodes?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'resCode': serializeParam(
          _resCode,
          ParamType.String,
        ),
        'resMsg': serializeParam(
          _resMsg,
          ParamType.String,
        ),
        'barcodes': serializeParam(
          _barcodes,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static BarcodeListReponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BarcodeListReponseStruct(
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
        barcodes: deserializeStructParam<BarcodeStruct>(
          data['barcodes'],
          ParamType.DataStruct,
          true,
          structBuilder: BarcodeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BarcodeListReponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BarcodeListReponseStruct &&
        resCode == other.resCode &&
        resMsg == other.resMsg &&
        listEquality.equals(barcodes, other.barcodes);
  }

  @override
  int get hashCode => const ListEquality().hash([resCode, resMsg, barcodes]);
}

BarcodeListReponseStruct createBarcodeListReponseStruct({
  String? resCode,
  String? resMsg,
}) =>
    BarcodeListReponseStruct(
      resCode: resCode,
      resMsg: resMsg,
    );
