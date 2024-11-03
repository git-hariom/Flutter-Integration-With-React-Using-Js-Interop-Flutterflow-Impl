// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehicleStruct extends BaseStruct {
  VehicleStruct({
    String? vrn,
    String? chassisNo,
    String? isCommercial,
    String? tagId,
    String? respCode,
    String? respMessage,
  })  : _vrn = vrn,
        _chassisNo = chassisNo,
        _isCommercial = isCommercial,
        _tagId = tagId,
        _respCode = respCode,
        _respMessage = respMessage;

  // "vrn" field.
  String? _vrn;
  String get vrn => _vrn ?? '';
  set vrn(String? val) => _vrn = val;

  bool hasVrn() => _vrn != null;

  // "chassisNo" field.
  String? _chassisNo;
  String get chassisNo => _chassisNo ?? '';
  set chassisNo(String? val) => _chassisNo = val;

  bool hasChassisNo() => _chassisNo != null;

  // "isCommercial" field.
  String? _isCommercial;
  String get isCommercial => _isCommercial ?? '';
  set isCommercial(String? val) => _isCommercial = val;

  bool hasIsCommercial() => _isCommercial != null;

  // "tagId" field.
  String? _tagId;
  String get tagId => _tagId ?? '';
  set tagId(String? val) => _tagId = val;

  bool hasTagId() => _tagId != null;

  // "respCode" field.
  String? _respCode;
  String get respCode => _respCode ?? '';
  set respCode(String? val) => _respCode = val;

  bool hasRespCode() => _respCode != null;

  // "respMessage" field.
  String? _respMessage;
  String get respMessage => _respMessage ?? '';
  set respMessage(String? val) => _respMessage = val;

  bool hasRespMessage() => _respMessage != null;

  static VehicleStruct fromMap(Map<String, dynamic> data) => VehicleStruct(
        vrn: data['vrn'] as String?,
        chassisNo: data['chassisNo'] as String?,
        isCommercial: data['isCommercial'] as String?,
        tagId: data['tagId'] as String?,
        respCode: data['respCode'] as String?,
        respMessage: data['respMessage'] as String?,
      );

  static VehicleStruct? maybeFromMap(dynamic data) =>
      data is Map ? VehicleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'vrn': _vrn,
        'chassisNo': _chassisNo,
        'isCommercial': _isCommercial,
        'tagId': _tagId,
        'respCode': _respCode,
        'respMessage': _respMessage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vrn': serializeParam(
          _vrn,
          ParamType.String,
        ),
        'chassisNo': serializeParam(
          _chassisNo,
          ParamType.String,
        ),
        'isCommercial': serializeParam(
          _isCommercial,
          ParamType.String,
        ),
        'tagId': serializeParam(
          _tagId,
          ParamType.String,
        ),
        'respCode': serializeParam(
          _respCode,
          ParamType.String,
        ),
        'respMessage': serializeParam(
          _respMessage,
          ParamType.String,
        ),
      }.withoutNulls;

  static VehicleStruct fromSerializableMap(Map<String, dynamic> data) =>
      VehicleStruct(
        vrn: deserializeParam(
          data['vrn'],
          ParamType.String,
          false,
        ),
        chassisNo: deserializeParam(
          data['chassisNo'],
          ParamType.String,
          false,
        ),
        isCommercial: deserializeParam(
          data['isCommercial'],
          ParamType.String,
          false,
        ),
        tagId: deserializeParam(
          data['tagId'],
          ParamType.String,
          false,
        ),
        respCode: deserializeParam(
          data['respCode'],
          ParamType.String,
          false,
        ),
        respMessage: deserializeParam(
          data['respMessage'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VehicleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VehicleStruct &&
        vrn == other.vrn &&
        chassisNo == other.chassisNo &&
        isCommercial == other.isCommercial &&
        tagId == other.tagId &&
        respCode == other.respCode &&
        respMessage == other.respMessage;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([vrn, chassisNo, isCommercial, tagId, respCode, respMessage]);
}

VehicleStruct createVehicleStruct({
  String? vrn,
  String? chassisNo,
  String? isCommercial,
  String? tagId,
  String? respCode,
  String? respMessage,
}) =>
    VehicleStruct(
      vrn: vrn,
      chassisNo: chassisNo,
      isCommercial: isCommercial,
      tagId: tagId,
      respCode: respCode,
      respMessage: respMessage,
    );
