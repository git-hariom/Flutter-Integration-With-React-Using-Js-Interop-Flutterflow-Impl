// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DedupeStatusVehicleDtlsStruct extends BaseStruct {
  DedupeStatusVehicleDtlsStruct({
    String? vehicleRegNo,
    String? chassisNo,
    String? engineNo,
    String? make,
    String? model,
    String? vehicleColor,
    String? vehicleRegAvlbl,
    String? tvc,
    List<String>? cch,
    String? commercial,
    String? regDate,
    String? isVahanVerified,
    String? isOcrVerified,
    String? isIssuanceAllowed,
  })  : _vehicleRegNo = vehicleRegNo,
        _chassisNo = chassisNo,
        _engineNo = engineNo,
        _make = make,
        _model = model,
        _vehicleColor = vehicleColor,
        _vehicleRegAvlbl = vehicleRegAvlbl,
        _tvc = tvc,
        _cch = cch,
        _commercial = commercial,
        _regDate = regDate,
        _isVahanVerified = isVahanVerified,
        _isOcrVerified = isOcrVerified,
        _isIssuanceAllowed = isIssuanceAllowed;

  // "vehicleRegNo" field.
  String? _vehicleRegNo;
  String get vehicleRegNo => _vehicleRegNo ?? '';
  set vehicleRegNo(String? val) => _vehicleRegNo = val;

  bool hasVehicleRegNo() => _vehicleRegNo != null;

  // "chassisNo" field.
  String? _chassisNo;
  String get chassisNo => _chassisNo ?? '';
  set chassisNo(String? val) => _chassisNo = val;

  bool hasChassisNo() => _chassisNo != null;

  // "engineNo" field.
  String? _engineNo;
  String get engineNo => _engineNo ?? '';
  set engineNo(String? val) => _engineNo = val;

  bool hasEngineNo() => _engineNo != null;

  // "make" field.
  String? _make;
  String get make => _make ?? '';
  set make(String? val) => _make = val;

  bool hasMake() => _make != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "vehicleColor" field.
  String? _vehicleColor;
  String get vehicleColor => _vehicleColor ?? '';
  set vehicleColor(String? val) => _vehicleColor = val;

  bool hasVehicleColor() => _vehicleColor != null;

  // "vehicleRegAvlbl" field.
  String? _vehicleRegAvlbl;
  String get vehicleRegAvlbl => _vehicleRegAvlbl ?? '';
  set vehicleRegAvlbl(String? val) => _vehicleRegAvlbl = val;

  bool hasVehicleRegAvlbl() => _vehicleRegAvlbl != null;

  // "tvc" field.
  String? _tvc;
  String get tvc => _tvc ?? '';
  set tvc(String? val) => _tvc = val;

  bool hasTvc() => _tvc != null;

  // "cch" field.
  List<String>? _cch;
  List<String> get cch => _cch ?? const [];
  set cch(List<String>? val) => _cch = val;

  void updateCch(Function(List<String>) updateFn) {
    updateFn(_cch ??= []);
  }

  bool hasCch() => _cch != null;

  // "commercial" field.
  String? _commercial;
  String get commercial => _commercial ?? '';
  set commercial(String? val) => _commercial = val;

  bool hasCommercial() => _commercial != null;

  // "regDate" field.
  String? _regDate;
  String get regDate => _regDate ?? '';
  set regDate(String? val) => _regDate = val;

  bool hasRegDate() => _regDate != null;

  // "isVahanVerified" field.
  String? _isVahanVerified;
  String get isVahanVerified => _isVahanVerified ?? '';
  set isVahanVerified(String? val) => _isVahanVerified = val;

  bool hasIsVahanVerified() => _isVahanVerified != null;

  // "isOcrVerified" field.
  String? _isOcrVerified;
  String get isOcrVerified => _isOcrVerified ?? '';
  set isOcrVerified(String? val) => _isOcrVerified = val;

  bool hasIsOcrVerified() => _isOcrVerified != null;

  // "isIssuanceAllowed" field.
  String? _isIssuanceAllowed;
  String get isIssuanceAllowed => _isIssuanceAllowed ?? '';
  set isIssuanceAllowed(String? val) => _isIssuanceAllowed = val;

  bool hasIsIssuanceAllowed() => _isIssuanceAllowed != null;

  static DedupeStatusVehicleDtlsStruct fromMap(Map<String, dynamic> data) =>
      DedupeStatusVehicleDtlsStruct(
        vehicleRegNo: data['vehicleRegNo'] as String?,
        chassisNo: data['chassisNo'] as String?,
        engineNo: data['engineNo'] as String?,
        make: data['make'] as String?,
        model: data['model'] as String?,
        vehicleColor: data['vehicleColor'] as String?,
        vehicleRegAvlbl: data['vehicleRegAvlbl'] as String?,
        tvc: data['tvc'] as String?,
        cch: getDataList(data['cch']),
        commercial: data['commercial'] as String?,
        regDate: data['regDate'] as String?,
        isVahanVerified: data['isVahanVerified'] as String?,
        isOcrVerified: data['isOcrVerified'] as String?,
        isIssuanceAllowed: data['isIssuanceAllowed'] as String?,
      );

  static DedupeStatusVehicleDtlsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DedupeStatusVehicleDtlsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'vehicleRegNo': _vehicleRegNo,
        'chassisNo': _chassisNo,
        'engineNo': _engineNo,
        'make': _make,
        'model': _model,
        'vehicleColor': _vehicleColor,
        'vehicleRegAvlbl': _vehicleRegAvlbl,
        'tvc': _tvc,
        'cch': _cch,
        'commercial': _commercial,
        'regDate': _regDate,
        'isVahanVerified': _isVahanVerified,
        'isOcrVerified': _isOcrVerified,
        'isIssuanceAllowed': _isIssuanceAllowed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vehicleRegNo': serializeParam(
          _vehicleRegNo,
          ParamType.String,
        ),
        'chassisNo': serializeParam(
          _chassisNo,
          ParamType.String,
        ),
        'engineNo': serializeParam(
          _engineNo,
          ParamType.String,
        ),
        'make': serializeParam(
          _make,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'vehicleColor': serializeParam(
          _vehicleColor,
          ParamType.String,
        ),
        'vehicleRegAvlbl': serializeParam(
          _vehicleRegAvlbl,
          ParamType.String,
        ),
        'tvc': serializeParam(
          _tvc,
          ParamType.String,
        ),
        'cch': serializeParam(
          _cch,
          ParamType.String,
          isList: true,
        ),
        'commercial': serializeParam(
          _commercial,
          ParamType.String,
        ),
        'regDate': serializeParam(
          _regDate,
          ParamType.String,
        ),
        'isVahanVerified': serializeParam(
          _isVahanVerified,
          ParamType.String,
        ),
        'isOcrVerified': serializeParam(
          _isOcrVerified,
          ParamType.String,
        ),
        'isIssuanceAllowed': serializeParam(
          _isIssuanceAllowed,
          ParamType.String,
        ),
      }.withoutNulls;

  static DedupeStatusVehicleDtlsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DedupeStatusVehicleDtlsStruct(
        vehicleRegNo: deserializeParam(
          data['vehicleRegNo'],
          ParamType.String,
          false,
        ),
        chassisNo: deserializeParam(
          data['chassisNo'],
          ParamType.String,
          false,
        ),
        engineNo: deserializeParam(
          data['engineNo'],
          ParamType.String,
          false,
        ),
        make: deserializeParam(
          data['make'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        vehicleColor: deserializeParam(
          data['vehicleColor'],
          ParamType.String,
          false,
        ),
        vehicleRegAvlbl: deserializeParam(
          data['vehicleRegAvlbl'],
          ParamType.String,
          false,
        ),
        tvc: deserializeParam(
          data['tvc'],
          ParamType.String,
          false,
        ),
        cch: deserializeParam<String>(
          data['cch'],
          ParamType.String,
          true,
        ),
        commercial: deserializeParam(
          data['commercial'],
          ParamType.String,
          false,
        ),
        regDate: deserializeParam(
          data['regDate'],
          ParamType.String,
          false,
        ),
        isVahanVerified: deserializeParam(
          data['isVahanVerified'],
          ParamType.String,
          false,
        ),
        isOcrVerified: deserializeParam(
          data['isOcrVerified'],
          ParamType.String,
          false,
        ),
        isIssuanceAllowed: deserializeParam(
          data['isIssuanceAllowed'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DedupeStatusVehicleDtlsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DedupeStatusVehicleDtlsStruct &&
        vehicleRegNo == other.vehicleRegNo &&
        chassisNo == other.chassisNo &&
        engineNo == other.engineNo &&
        make == other.make &&
        model == other.model &&
        vehicleColor == other.vehicleColor &&
        vehicleRegAvlbl == other.vehicleRegAvlbl &&
        tvc == other.tvc &&
        listEquality.equals(cch, other.cch) &&
        commercial == other.commercial &&
        regDate == other.regDate &&
        isVahanVerified == other.isVahanVerified &&
        isOcrVerified == other.isOcrVerified &&
        isIssuanceAllowed == other.isIssuanceAllowed;
  }

  @override
  int get hashCode => const ListEquality().hash([
        vehicleRegNo,
        chassisNo,
        engineNo,
        make,
        model,
        vehicleColor,
        vehicleRegAvlbl,
        tvc,
        cch,
        commercial,
        regDate,
        isVahanVerified,
        isOcrVerified,
        isIssuanceAllowed
      ]);
}

DedupeStatusVehicleDtlsStruct createDedupeStatusVehicleDtlsStruct({
  String? vehicleRegNo,
  String? chassisNo,
  String? engineNo,
  String? make,
  String? model,
  String? vehicleColor,
  String? vehicleRegAvlbl,
  String? tvc,
  String? commercial,
  String? regDate,
  String? isVahanVerified,
  String? isOcrVerified,
  String? isIssuanceAllowed,
}) =>
    DedupeStatusVehicleDtlsStruct(
      vehicleRegNo: vehicleRegNo,
      chassisNo: chassisNo,
      engineNo: engineNo,
      make: make,
      model: model,
      vehicleColor: vehicleColor,
      vehicleRegAvlbl: vehicleRegAvlbl,
      tvc: tvc,
      commercial: commercial,
      regDate: regDate,
      isVahanVerified: isVahanVerified,
      isOcrVerified: isOcrVerified,
      isIssuanceAllowed: isIssuanceAllowed,
    );
