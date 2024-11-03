// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpiPymtStatusStruct extends BaseStruct {
  UpiPymtStatusStruct({
    String? paymentStatus,
    String? paymentId,
    String? agentId,
    String? orderNo,
    String? amount,
    String? transactionDateTime,
    String? customerId,
    String? coiNo,
    String? requestId,
    String? journeyId,
    String? resCode,
    String? resMsg,
  })  : _paymentStatus = paymentStatus,
        _paymentId = paymentId,
        _agentId = agentId,
        _orderNo = orderNo,
        _amount = amount,
        _transactionDateTime = transactionDateTime,
        _customerId = customerId,
        _coiNo = coiNo,
        _requestId = requestId,
        _journeyId = journeyId,
        _resCode = resCode,
        _resMsg = resMsg;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  set paymentStatus(String? val) => _paymentStatus = val;

  bool hasPaymentStatus() => _paymentStatus != null;

  // "paymentId" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  set paymentId(String? val) => _paymentId = val;

  bool hasPaymentId() => _paymentId != null;

  // "agentId" field.
  String? _agentId;
  String get agentId => _agentId ?? '';
  set agentId(String? val) => _agentId = val;

  bool hasAgentId() => _agentId != null;

  // "orderNo" field.
  String? _orderNo;
  String get orderNo => _orderNo ?? '';
  set orderNo(String? val) => _orderNo = val;

  bool hasOrderNo() => _orderNo != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "transactionDateTime" field.
  String? _transactionDateTime;
  String get transactionDateTime => _transactionDateTime ?? '';
  set transactionDateTime(String? val) => _transactionDateTime = val;

  bool hasTransactionDateTime() => _transactionDateTime != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  // "coiNo" field.
  String? _coiNo;
  String get coiNo => _coiNo ?? '';
  set coiNo(String? val) => _coiNo = val;

  bool hasCoiNo() => _coiNo != null;

  // "requestId" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  set requestId(String? val) => _requestId = val;

  bool hasRequestId() => _requestId != null;

  // "journeyId" field.
  String? _journeyId;
  String get journeyId => _journeyId ?? '';
  set journeyId(String? val) => _journeyId = val;

  bool hasJourneyId() => _journeyId != null;

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

  static UpiPymtStatusStruct fromMap(Map<String, dynamic> data) =>
      UpiPymtStatusStruct(
        paymentStatus: data['paymentStatus'] as String?,
        paymentId: data['paymentId'] as String?,
        agentId: data['agentId'] as String?,
        orderNo: data['orderNo'] as String?,
        amount: data['amount'] as String?,
        transactionDateTime: data['transactionDateTime'] as String?,
        customerId: data['customerId'] as String?,
        coiNo: data['coiNo'] as String?,
        requestId: data['requestId'] as String?,
        journeyId: data['journeyId'] as String?,
        resCode: data['resCode'] as String?,
        resMsg: data['resMsg'] as String?,
      );

  static UpiPymtStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? UpiPymtStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'paymentStatus': _paymentStatus,
        'paymentId': _paymentId,
        'agentId': _agentId,
        'orderNo': _orderNo,
        'amount': _amount,
        'transactionDateTime': _transactionDateTime,
        'customerId': _customerId,
        'coiNo': _coiNo,
        'requestId': _requestId,
        'journeyId': _journeyId,
        'resCode': _resCode,
        'resMsg': _resMsg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'paymentStatus': serializeParam(
          _paymentStatus,
          ParamType.String,
        ),
        'paymentId': serializeParam(
          _paymentId,
          ParamType.String,
        ),
        'agentId': serializeParam(
          _agentId,
          ParamType.String,
        ),
        'orderNo': serializeParam(
          _orderNo,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'transactionDateTime': serializeParam(
          _transactionDateTime,
          ParamType.String,
        ),
        'customerId': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'coiNo': serializeParam(
          _coiNo,
          ParamType.String,
        ),
        'requestId': serializeParam(
          _requestId,
          ParamType.String,
        ),
        'journeyId': serializeParam(
          _journeyId,
          ParamType.String,
        ),
        'resCode': serializeParam(
          _resCode,
          ParamType.String,
        ),
        'resMsg': serializeParam(
          _resMsg,
          ParamType.String,
        ),
      }.withoutNulls;

  static UpiPymtStatusStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpiPymtStatusStruct(
        paymentStatus: deserializeParam(
          data['paymentStatus'],
          ParamType.String,
          false,
        ),
        paymentId: deserializeParam(
          data['paymentId'],
          ParamType.String,
          false,
        ),
        agentId: deserializeParam(
          data['agentId'],
          ParamType.String,
          false,
        ),
        orderNo: deserializeParam(
          data['orderNo'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.String,
          false,
        ),
        transactionDateTime: deserializeParam(
          data['transactionDateTime'],
          ParamType.String,
          false,
        ),
        customerId: deserializeParam(
          data['customerId'],
          ParamType.String,
          false,
        ),
        coiNo: deserializeParam(
          data['coiNo'],
          ParamType.String,
          false,
        ),
        requestId: deserializeParam(
          data['requestId'],
          ParamType.String,
          false,
        ),
        journeyId: deserializeParam(
          data['journeyId'],
          ParamType.String,
          false,
        ),
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
      );

  @override
  String toString() => 'UpiPymtStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpiPymtStatusStruct &&
        paymentStatus == other.paymentStatus &&
        paymentId == other.paymentId &&
        agentId == other.agentId &&
        orderNo == other.orderNo &&
        amount == other.amount &&
        transactionDateTime == other.transactionDateTime &&
        customerId == other.customerId &&
        coiNo == other.coiNo &&
        requestId == other.requestId &&
        journeyId == other.journeyId &&
        resCode == other.resCode &&
        resMsg == other.resMsg;
  }

  @override
  int get hashCode => const ListEquality().hash([
        paymentStatus,
        paymentId,
        agentId,
        orderNo,
        amount,
        transactionDateTime,
        customerId,
        coiNo,
        requestId,
        journeyId,
        resCode,
        resMsg
      ]);
}

UpiPymtStatusStruct createUpiPymtStatusStruct({
  String? paymentStatus,
  String? paymentId,
  String? agentId,
  String? orderNo,
  String? amount,
  String? transactionDateTime,
  String? customerId,
  String? coiNo,
  String? requestId,
  String? journeyId,
  String? resCode,
  String? resMsg,
}) =>
    UpiPymtStatusStruct(
      paymentStatus: paymentStatus,
      paymentId: paymentId,
      agentId: agentId,
      orderNo: orderNo,
      amount: amount,
      transactionDateTime: transactionDateTime,
      customerId: customerId,
      coiNo: coiNo,
      requestId: requestId,
      journeyId: journeyId,
      resCode: resCode,
      resMsg: resMsg,
    );
