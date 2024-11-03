// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? securityAmt,
    String? initialAmt,
    String? replacementFee,
    String? negBalAllowFlag,
    String? rfndAllow,
    String? minProdValue,
    String? maxProdValue,
    String? prodId,
    String? prodName,
    String? prodDesc,
    String? prodType,
    String? kycFlag,
    String? negBalAllowAmt,
    String? reloadAllow,
    String? periodType,
    String? premiumServiceCharges,
    String? defaultProductId,
    String? privilegedServiceId,
    String? firstRecharge,
    String? tripInsuranceFlag,
  })  : _securityAmt = securityAmt,
        _initialAmt = initialAmt,
        _replacementFee = replacementFee,
        _negBalAllowFlag = negBalAllowFlag,
        _rfndAllow = rfndAllow,
        _minProdValue = minProdValue,
        _maxProdValue = maxProdValue,
        _prodId = prodId,
        _prodName = prodName,
        _prodDesc = prodDesc,
        _prodType = prodType,
        _kycFlag = kycFlag,
        _negBalAllowAmt = negBalAllowAmt,
        _reloadAllow = reloadAllow,
        _periodType = periodType,
        _premiumServiceCharges = premiumServiceCharges,
        _defaultProductId = defaultProductId,
        _privilegedServiceId = privilegedServiceId,
        _firstRecharge = firstRecharge,
        _tripInsuranceFlag = tripInsuranceFlag;

  // "securityAmt" field.
  String? _securityAmt;
  String get securityAmt => _securityAmt ?? '';
  set securityAmt(String? val) => _securityAmt = val;

  bool hasSecurityAmt() => _securityAmt != null;

  // "initialAmt" field.
  String? _initialAmt;
  String get initialAmt => _initialAmt ?? '';
  set initialAmt(String? val) => _initialAmt = val;

  bool hasInitialAmt() => _initialAmt != null;

  // "replacementFee" field.
  String? _replacementFee;
  String get replacementFee => _replacementFee ?? '';
  set replacementFee(String? val) => _replacementFee = val;

  bool hasReplacementFee() => _replacementFee != null;

  // "negBalAllowFlag" field.
  String? _negBalAllowFlag;
  String get negBalAllowFlag => _negBalAllowFlag ?? '';
  set negBalAllowFlag(String? val) => _negBalAllowFlag = val;

  bool hasNegBalAllowFlag() => _negBalAllowFlag != null;

  // "rfndAllow" field.
  String? _rfndAllow;
  String get rfndAllow => _rfndAllow ?? '';
  set rfndAllow(String? val) => _rfndAllow = val;

  bool hasRfndAllow() => _rfndAllow != null;

  // "minProdValue" field.
  String? _minProdValue;
  String get minProdValue => _minProdValue ?? '';
  set minProdValue(String? val) => _minProdValue = val;

  bool hasMinProdValue() => _minProdValue != null;

  // "maxProdValue" field.
  String? _maxProdValue;
  String get maxProdValue => _maxProdValue ?? '';
  set maxProdValue(String? val) => _maxProdValue = val;

  bool hasMaxProdValue() => _maxProdValue != null;

  // "prodId" field.
  String? _prodId;
  String get prodId => _prodId ?? '';
  set prodId(String? val) => _prodId = val;

  bool hasProdId() => _prodId != null;

  // "prodName" field.
  String? _prodName;
  String get prodName => _prodName ?? '';
  set prodName(String? val) => _prodName = val;

  bool hasProdName() => _prodName != null;

  // "prodDesc" field.
  String? _prodDesc;
  String get prodDesc => _prodDesc ?? '';
  set prodDesc(String? val) => _prodDesc = val;

  bool hasProdDesc() => _prodDesc != null;

  // "prodType" field.
  String? _prodType;
  String get prodType => _prodType ?? '';
  set prodType(String? val) => _prodType = val;

  bool hasProdType() => _prodType != null;

  // "kycFlag" field.
  String? _kycFlag;
  String get kycFlag => _kycFlag ?? '';
  set kycFlag(String? val) => _kycFlag = val;

  bool hasKycFlag() => _kycFlag != null;

  // "negBalAllowAmt" field.
  String? _negBalAllowAmt;
  String get negBalAllowAmt => _negBalAllowAmt ?? '';
  set negBalAllowAmt(String? val) => _negBalAllowAmt = val;

  bool hasNegBalAllowAmt() => _negBalAllowAmt != null;

  // "reloadAllow" field.
  String? _reloadAllow;
  String get reloadAllow => _reloadAllow ?? '';
  set reloadAllow(String? val) => _reloadAllow = val;

  bool hasReloadAllow() => _reloadAllow != null;

  // "periodType" field.
  String? _periodType;
  String get periodType => _periodType ?? '';
  set periodType(String? val) => _periodType = val;

  bool hasPeriodType() => _periodType != null;

  // "premiumServiceCharges" field.
  String? _premiumServiceCharges;
  String get premiumServiceCharges => _premiumServiceCharges ?? '';
  set premiumServiceCharges(String? val) => _premiumServiceCharges = val;

  bool hasPremiumServiceCharges() => _premiumServiceCharges != null;

  // "defaultProductId" field.
  String? _defaultProductId;
  String get defaultProductId => _defaultProductId ?? '';
  set defaultProductId(String? val) => _defaultProductId = val;

  bool hasDefaultProductId() => _defaultProductId != null;

  // "privilegedServiceId" field.
  String? _privilegedServiceId;
  String get privilegedServiceId => _privilegedServiceId ?? '';
  set privilegedServiceId(String? val) => _privilegedServiceId = val;

  bool hasPrivilegedServiceId() => _privilegedServiceId != null;

  // "firstRecharge" field.
  String? _firstRecharge;
  String get firstRecharge => _firstRecharge ?? '';
  set firstRecharge(String? val) => _firstRecharge = val;

  bool hasFirstRecharge() => _firstRecharge != null;

  // "tripInsuranceFlag" field.
  String? _tripInsuranceFlag;
  String get tripInsuranceFlag => _tripInsuranceFlag ?? '';
  set tripInsuranceFlag(String? val) => _tripInsuranceFlag = val;

  bool hasTripInsuranceFlag() => _tripInsuranceFlag != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        securityAmt: data['securityAmt'] as String?,
        initialAmt: data['initialAmt'] as String?,
        replacementFee: data['replacementFee'] as String?,
        negBalAllowFlag: data['negBalAllowFlag'] as String?,
        rfndAllow: data['rfndAllow'] as String?,
        minProdValue: data['minProdValue'] as String?,
        maxProdValue: data['maxProdValue'] as String?,
        prodId: data['prodId'] as String?,
        prodName: data['prodName'] as String?,
        prodDesc: data['prodDesc'] as String?,
        prodType: data['prodType'] as String?,
        kycFlag: data['kycFlag'] as String?,
        negBalAllowAmt: data['negBalAllowAmt'] as String?,
        reloadAllow: data['reloadAllow'] as String?,
        periodType: data['periodType'] as String?,
        premiumServiceCharges: data['premiumServiceCharges'] as String?,
        defaultProductId: data['defaultProductId'] as String?,
        privilegedServiceId: data['privilegedServiceId'] as String?,
        firstRecharge: data['firstRecharge'] as String?,
        tripInsuranceFlag: data['tripInsuranceFlag'] as String?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'securityAmt': _securityAmt,
        'initialAmt': _initialAmt,
        'replacementFee': _replacementFee,
        'negBalAllowFlag': _negBalAllowFlag,
        'rfndAllow': _rfndAllow,
        'minProdValue': _minProdValue,
        'maxProdValue': _maxProdValue,
        'prodId': _prodId,
        'prodName': _prodName,
        'prodDesc': _prodDesc,
        'prodType': _prodType,
        'kycFlag': _kycFlag,
        'negBalAllowAmt': _negBalAllowAmt,
        'reloadAllow': _reloadAllow,
        'periodType': _periodType,
        'premiumServiceCharges': _premiumServiceCharges,
        'defaultProductId': _defaultProductId,
        'privilegedServiceId': _privilegedServiceId,
        'firstRecharge': _firstRecharge,
        'tripInsuranceFlag': _tripInsuranceFlag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'securityAmt': serializeParam(
          _securityAmt,
          ParamType.String,
        ),
        'initialAmt': serializeParam(
          _initialAmt,
          ParamType.String,
        ),
        'replacementFee': serializeParam(
          _replacementFee,
          ParamType.String,
        ),
        'negBalAllowFlag': serializeParam(
          _negBalAllowFlag,
          ParamType.String,
        ),
        'rfndAllow': serializeParam(
          _rfndAllow,
          ParamType.String,
        ),
        'minProdValue': serializeParam(
          _minProdValue,
          ParamType.String,
        ),
        'maxProdValue': serializeParam(
          _maxProdValue,
          ParamType.String,
        ),
        'prodId': serializeParam(
          _prodId,
          ParamType.String,
        ),
        'prodName': serializeParam(
          _prodName,
          ParamType.String,
        ),
        'prodDesc': serializeParam(
          _prodDesc,
          ParamType.String,
        ),
        'prodType': serializeParam(
          _prodType,
          ParamType.String,
        ),
        'kycFlag': serializeParam(
          _kycFlag,
          ParamType.String,
        ),
        'negBalAllowAmt': serializeParam(
          _negBalAllowAmt,
          ParamType.String,
        ),
        'reloadAllow': serializeParam(
          _reloadAllow,
          ParamType.String,
        ),
        'periodType': serializeParam(
          _periodType,
          ParamType.String,
        ),
        'premiumServiceCharges': serializeParam(
          _premiumServiceCharges,
          ParamType.String,
        ),
        'defaultProductId': serializeParam(
          _defaultProductId,
          ParamType.String,
        ),
        'privilegedServiceId': serializeParam(
          _privilegedServiceId,
          ParamType.String,
        ),
        'firstRecharge': serializeParam(
          _firstRecharge,
          ParamType.String,
        ),
        'tripInsuranceFlag': serializeParam(
          _tripInsuranceFlag,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        securityAmt: deserializeParam(
          data['securityAmt'],
          ParamType.String,
          false,
        ),
        initialAmt: deserializeParam(
          data['initialAmt'],
          ParamType.String,
          false,
        ),
        replacementFee: deserializeParam(
          data['replacementFee'],
          ParamType.String,
          false,
        ),
        negBalAllowFlag: deserializeParam(
          data['negBalAllowFlag'],
          ParamType.String,
          false,
        ),
        rfndAllow: deserializeParam(
          data['rfndAllow'],
          ParamType.String,
          false,
        ),
        minProdValue: deserializeParam(
          data['minProdValue'],
          ParamType.String,
          false,
        ),
        maxProdValue: deserializeParam(
          data['maxProdValue'],
          ParamType.String,
          false,
        ),
        prodId: deserializeParam(
          data['prodId'],
          ParamType.String,
          false,
        ),
        prodName: deserializeParam(
          data['prodName'],
          ParamType.String,
          false,
        ),
        prodDesc: deserializeParam(
          data['prodDesc'],
          ParamType.String,
          false,
        ),
        prodType: deserializeParam(
          data['prodType'],
          ParamType.String,
          false,
        ),
        kycFlag: deserializeParam(
          data['kycFlag'],
          ParamType.String,
          false,
        ),
        negBalAllowAmt: deserializeParam(
          data['negBalAllowAmt'],
          ParamType.String,
          false,
        ),
        reloadAllow: deserializeParam(
          data['reloadAllow'],
          ParamType.String,
          false,
        ),
        periodType: deserializeParam(
          data['periodType'],
          ParamType.String,
          false,
        ),
        premiumServiceCharges: deserializeParam(
          data['premiumServiceCharges'],
          ParamType.String,
          false,
        ),
        defaultProductId: deserializeParam(
          data['defaultProductId'],
          ParamType.String,
          false,
        ),
        privilegedServiceId: deserializeParam(
          data['privilegedServiceId'],
          ParamType.String,
          false,
        ),
        firstRecharge: deserializeParam(
          data['firstRecharge'],
          ParamType.String,
          false,
        ),
        tripInsuranceFlag: deserializeParam(
          data['tripInsuranceFlag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        securityAmt == other.securityAmt &&
        initialAmt == other.initialAmt &&
        replacementFee == other.replacementFee &&
        negBalAllowFlag == other.negBalAllowFlag &&
        rfndAllow == other.rfndAllow &&
        minProdValue == other.minProdValue &&
        maxProdValue == other.maxProdValue &&
        prodId == other.prodId &&
        prodName == other.prodName &&
        prodDesc == other.prodDesc &&
        prodType == other.prodType &&
        kycFlag == other.kycFlag &&
        negBalAllowAmt == other.negBalAllowAmt &&
        reloadAllow == other.reloadAllow &&
        periodType == other.periodType &&
        premiumServiceCharges == other.premiumServiceCharges &&
        defaultProductId == other.defaultProductId &&
        privilegedServiceId == other.privilegedServiceId &&
        firstRecharge == other.firstRecharge &&
        tripInsuranceFlag == other.tripInsuranceFlag;
  }

  @override
  int get hashCode => const ListEquality().hash([
        securityAmt,
        initialAmt,
        replacementFee,
        negBalAllowFlag,
        rfndAllow,
        minProdValue,
        maxProdValue,
        prodId,
        prodName,
        prodDesc,
        prodType,
        kycFlag,
        negBalAllowAmt,
        reloadAllow,
        periodType,
        premiumServiceCharges,
        defaultProductId,
        privilegedServiceId,
        firstRecharge,
        tripInsuranceFlag
      ]);
}

ProductStruct createProductStruct({
  String? securityAmt,
  String? initialAmt,
  String? replacementFee,
  String? negBalAllowFlag,
  String? rfndAllow,
  String? minProdValue,
  String? maxProdValue,
  String? prodId,
  String? prodName,
  String? prodDesc,
  String? prodType,
  String? kycFlag,
  String? negBalAllowAmt,
  String? reloadAllow,
  String? periodType,
  String? premiumServiceCharges,
  String? defaultProductId,
  String? privilegedServiceId,
  String? firstRecharge,
  String? tripInsuranceFlag,
}) =>
    ProductStruct(
      securityAmt: securityAmt,
      initialAmt: initialAmt,
      replacementFee: replacementFee,
      negBalAllowFlag: negBalAllowFlag,
      rfndAllow: rfndAllow,
      minProdValue: minProdValue,
      maxProdValue: maxProdValue,
      prodId: prodId,
      prodName: prodName,
      prodDesc: prodDesc,
      prodType: prodType,
      kycFlag: kycFlag,
      negBalAllowAmt: negBalAllowAmt,
      reloadAllow: reloadAllow,
      periodType: periodType,
      premiumServiceCharges: premiumServiceCharges,
      defaultProductId: defaultProductId,
      privilegedServiceId: privilegedServiceId,
      firstRecharge: firstRecharge,
      tripInsuranceFlag: tripInsuranceFlag,
    );
