import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _elivationValue = 10.0;
  double get elivationValue => _elivationValue;
  set elivationValue(double value) {
    _elivationValue = value;
  }

  String _journeyId = '1201901';
  String get journeyId => _journeyId;
  set journeyId(String value) {
    _journeyId = value;
  }

  List<CustomerDetailsStruct> _customerDetailsTestData = [];
  List<CustomerDetailsStruct> get customerDetailsTestData =>
      _customerDetailsTestData;
  set customerDetailsTestData(List<CustomerDetailsStruct> value) {
    _customerDetailsTestData = value;
  }

  void addToCustomerDetailsTestData(CustomerDetailsStruct value) {
    customerDetailsTestData.add(value);
  }

  void removeFromCustomerDetailsTestData(CustomerDetailsStruct value) {
    customerDetailsTestData.remove(value);
  }

  void removeAtIndexFromCustomerDetailsTestData(int index) {
    customerDetailsTestData.removeAt(index);
  }

  void updateCustomerDetailsTestDataAtIndex(
    int index,
    CustomerDetailsStruct Function(CustomerDetailsStruct) updateFn,
  ) {
    customerDetailsTestData[index] = updateFn(_customerDetailsTestData[index]);
  }

  void insertAtIndexInCustomerDetailsTestData(
      int index, CustomerDetailsStruct value) {
    customerDetailsTestData.insert(index, value);
  }

  DedupeStatusVehicleDtlsStruct _dedupeStatusVehicleDtls =
      DedupeStatusVehicleDtlsStruct.fromSerializableMap(
          jsonDecode('{\"cch\":\"[]\"}'));
  DedupeStatusVehicleDtlsStruct get dedupeStatusVehicleDtls =>
      _dedupeStatusVehicleDtls;
  set dedupeStatusVehicleDtls(DedupeStatusVehicleDtlsStruct value) {
    _dedupeStatusVehicleDtls = value;
  }

  void updateDedupeStatusVehicleDtlsStruct(
      Function(DedupeStatusVehicleDtlsStruct) updateFn) {
    updateFn(_dedupeStatusVehicleDtls);
  }

  String _entityId = '161415';
  String get entityId => _entityId;
  set entityId(String value) {
    _entityId = value;
  }

  String _createUser = '1616055';
  String get createUser => _createUser;
  set createUser(String value) {
    _createUser = value;
  }

  String _source = 'Agent APP';
  String get source => _source;
  set source(String value) {
    _source = value;
  }

  String _bearerToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJDdXJyZW50bHlfTG9nZ2VkLUluX1VzZXJzIiwiTWVyY2hhbnRfT25ib2FyZGluZ19NYWtlciIsIk1lbnUuQ09SUE9SQVRFX0NVU1RPTUVSIiwiVGFnSXNzdWVUaHJvdWdoQWdlbnRBcHBVUEkiLCJSRVRBSUxfVEFHX0NMT1NVUkVfVmlld2VyIiwiQUdFTlRfTU5HTVRfTUFTVEVSX1ZpZXdlciIsIkNIS19UWE5fU1RBVFVTX1ZpZXdlciIsIlRhZ19Ub19UYWdfRnVuZF9UcmFuc2ZlciIsIk1lcmNoYW50X09uYm9hcmRpbmdfVmlld2VyIiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJMb2NrX1VzZXJfUmVwb3J0IiwiTWVudS5EaXNwdXRlX0lzc19DaGJrIiwiVEFHX0lTU19SRVBPUlQiLCJzZWFyY2hfY2FyZF9pbmZvIiwiTWVudS5Db25jZXNzaW9uYWlyZV9NZ210IiwiRnJhdWRfQnVsa19XaGl0ZWxpc3RfVmlld2VyIiwiQUdFTlRfQ1VTVE9NRVJfTUFTVEVSX01ha2VyIiwiQ1JNX0NoYW5nZV9QYXNzd29yZCIsIk1hbnVhbF9EZWJpdF9DcmVkaXRfUmVwb3J0IiwiRGlzYWJsZV9Vc2VyX1JlcG9ydCIsIk1lcmNoYW50X1RyYW5zYWN0aW9uX1JlcG9ydCIsIkNhcmRfTW5nbXRfQ2FyZF9SZXF1ZXN0IiwiTWVudS5jYXJkX3BlcnNvbmFsaXphdGlvbiIsIkJsYWNrbGlzdF9WZWhpY2xlIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJNZW51LkJDX1RvX0FnZW50IiwiVkVISUNMRV9FWEVNUFRJT05fQ09SUCIsIlVzZXJfTWFzdGVyX01ha2VyIiwiQkFOS19UT19ESU1UU1BBWV9NYWtlciIsIlFEUl9GSUxFX0RPV05MT0FEIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIkNvbmNlc3Npb25haXJlX1RvbGwiLCJNYW51YWxfRGViaXRfQ3JlZGl0X1ZpZXdlciIsIk1lbnUuQUdFTlRfQ1VTVE9NRVJfTUFTVEVSIiwiVHJpY2tsZV9GZWVkX3JlcG9ydF91cGxvYWQiLCJNZW51LkNVU1RPTUVSX01HTVQiLCJBQ0NPVU5UX0NMT1NVUkVfVmlld2VyIiwiTW9kdWxlLkNvbmNlc3Npb25haXJlIiwiVGFnX1NlYXJjaCIsIlVwZGF0ZV9Vc2VyX1N0YXR1cyIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJDb25jX1R4bl9TdW1tYXJ5X1JlcG9ydCIsIlVzZXJfTWFzdGVyX1ZpZXdlciIsIkJDX1RvX0FnZW50X01ha2VyIiwiQnVsa19NYW51YWxfRFJfQ1JfQ2hlY2tlciIsIkZFVENIX1ZFSElDTEVfRFRMU19JU1NVRVIiLCJBY2NvdW50c19NYXN0ZXJfTWFrZXIiLCJQYXJ0bmVyX09uYm9hcmRpbmdfVmlld2VyIiwiQUdFTlRfQ1VTVE9NRVJfTUFTVEVSX0NoZWNrZXIiLCJDb25jX0xhbmVfTWFwcGluZ19SZXBvcnQiLCJHcm91cF9NYXN0ZXJfVmlld2VyIiwiRElNVFNQQVlfVE9fRElNVFNQQVlfQ2hlY2tlciIsIlJFQ09OX0RBU0hfTUFLRVIiLCJNZW51LkFjY291bnRzX01hc3RlciIsIlRhZ1JlcGxhY2VtZW50QWdlbnRBcHAiLCJNZW51LkZyYXVkX01uZ210IiwiQ0NBdmVudWVBZ2VudFRvcFVwIiwiTW9kdWxlLkZyYXVkX01uZ210IiwiQkNfVG9fQWdlbnRfVmlld2VyIiwiTXlfUHJvZmlsZV9BZ2VudCIsIkJ1bGtfTWFudWFsX0RSX0NSX1ZpZXdlciIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJSZWNoYXJnZV9jYXJkIiwiRkFTVEFHX01BWF9JU1NfUkVQT1JUIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiSXNzX0NoYXJnZWJhY2tfVmlld2VyIiwiTWVudS5SZWNvbl9GaWxlX01hbmFnZW1lbnQiLCJBZ2VudF9Ub19CQ19NYWtlciIsIklzc19DaGJrX0ZpbGVfVXBsb2FkIiwiQ2FyZF9NYW51ZmFjdHVyZXJfTWFrZXIiLCJNZW51Lk1hbnVhbF9EZWJpdF9DcmVkaXQiLCJNZW51Lk15X1Byb2ZpbGVfQWdlbnQiLCJVUElfVW5tYXRjaGVkX1R4biIsIkZ1ZWxfRmxhZ19DaGFuZ2UiLCJBY3RpdmF0ZV9OZXdfVXNlciIsIk1lbnUuTWVyY2hhbnRfRGV0YWlscyIsIkV4dHJubF9SZWNoYXJnZV9SZXBvcnQiLCJQYXNzX0lzc3VhbmNlX1JlcG9ydCIsIlpJTktBX1JFQ09OIiwiTWVudS5NZXJjaGFudCBSZXBvcnQiLCJBZ2VudF9Ub19DdXN0b21lcl9WaWV3ZXIiLCJCQU5LX1RPX0RJTVRTUEFZX1ZpZXdlciIsIlBhc3NfRGVhY3RpdmF0aW9uIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiQWN0aXZhdGVfQ3VzdG9tZXJfU3RhdHVzIiwiREFJTFlfQlVTSU5FU1NfUkVQX01JUyIsIkNvbmNfT3V0Ym91bmRfRmlsZXNfUmVwb3J0IiwiQ29uY19UeG5fRmlsZV9SZXBvcnQiLCJGcmF1ZF9CdWxrX0JsYWNrbGlzdF9WaWV3ZXIiLCJGcmF1ZF9NbmdtdF9Ib3RfTGlzdCIsIk1lcmNoYW50X2RldGFpbF9SZXBvcnQiLCJESU1UU1BBWV9UT19CQU5LX0NoZWNrZXIiLCJNZW51LkNIS19UWE5fU1RBVFVTIiwiSXNzX0NoYXJnZWJhY2tfRUdDUyIsIk1vZHVsZS5NZXJjaGFudF9EZXRhaWxzIiwiTWFudWFsX0RlYml0X0NyZWRpdF9DaGVja2VyIiwiQ29uY19WaGNsX0Nsc19NbnBuZ19SZXBvcnQiLCJGcmF1ZF9CdWxrX0JsYWNrbGlzdF9DaGVja2VyIiwiR3JvdXBfTWFzdGVyX0NoZWNrZXIiLCJBZ2VudF9EaXN0X1NPQSIsIlRyaXBfUmVjb24iLCJCdWxrX01hbnVhbF9EUl9DUl9NYWtlciIsIlBsYXphX1JlcG9ydCIsIkFnZW50X1RvX0N1c3RvbWVyX01ha2VyIiwiVVBJX1JlY2hhcmdlX1JlcG9ydCIsIkNSTV9BY2NvdW50X1N0YXRlbWVudF9WMiIsIk1lbnUuQWdlbnRfVG9fQkMiLCJUUklQX0lOU1VSQU5DRSIsIlByaW50X0NoYWxsYW5fSXNzdWVyIiwiQ2FyZF9NYW51ZmFjdHVyZXJfVmlld2VyIiwiRElNVFNQQVlfVE9fQkFOS19WaWV3ZXIiLCJUQUdfQ0xPU1VSRV9GSUxFX0RPV05MT0FEIiwiTWVudS5DYXJkX01hbnVmYWN0dXJlciIsIk1lbnUuUGFzc19pc3N1ZSIsIkNPTlNPTElEQVRFRF9DVVNUX1NUTVQiLCJDb3JwX0JDX1RvX0NvcnBfQ3VzdF9WaWV3ZXIiLCJNb2JpbGVfUmVjaGFyZ2VfUmVwb3J0IiwiTWVudS5GdW5kX1RyYW5zZmVyX1JlcG9ydCIsIkJhbmtfS2l0dHlfQWNjX1JlcG9ydCIsIk91dGxldF9EZXRhaWxzX1ZpZXdlciIsIk1lbnUuQWNjb3VudHNfUmVwb3J0cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFnZW50X1RvX0N1c3RvbWVyX0NoZWNrZXIiLCJNZW51LkNvcnBfQkNfVG9fQ29ycF9DdXN0IiwiQ2FzaGJhY2tfVmlld2VyIiwiVkVISUNMRV9FWEVNUFRJT05fUkVUQUlMIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTG9jYWxfRGlzY291bnRfUGFzc19MaXN0aW5nIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiQkNfVG9fQWdlbnRfQ2hlY2tlciIsIkNhcmRfU3RvY2tfU3VtbWFyeSIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiQ0NBdmVudWVfRmlsZV9VcGxvYWQiLCJGb3JjZWZ1bF9UYWdfQ2xvc3VyZV9SZXBvcnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIlVwZGF0ZV9JbnZvaWNlX0RldGFpbHMiLCJJbmFjdGl2ZV9Vc2VyX1JlcG9ydCIsIkZyYXVkX0J1bGtfQmxhY2tsaXN0X01ha2VyIiwiQ1VTVE9NRVJfU0VSVklDRV9SRVEiLCJNb2R1bGUuQWRtaW4iLCJNZW51LkFHRU5UX01OR01UX01BU1RFUiIsIkFHRU5UX01OR01UX01BU1RFUl9DaGVja2VyIiwiVU5SRUdJU1RFUkVEX1RBR19UWE4iLCJNYXJrX1RhZ19Bc19EYW1hZ2VfVmlld2VyIiwiVEFHX1JFX0lTU1VBTkNFIiwiQUdFTlRfUFJPRFVDVF9NQVBQSU5HIiwiQ2FzaF9EZXBvc2l0IiwiQWNjZXNzX0RlbmllZF9SZXBvcnQiLCJPTUNfUkVQT1JUIiwiVEFHX0FMTE9DQVRJT05fUkVQT1JUIiwiQ29uY19SZWNvbl9SZXBvcnQiLCJPcmRlcl9OZXdfQ2FyZF9WaWV3IiwiTW9kdWxlLlJlY29uIiwiTW9kdWxlLlByZS1wYWlkX0FjY291bnQiLCJJc3N1ZV9Mb2NhbF9QYXNzIiwiQ1JNX1JlY2hhcmdlX0FjY291bnRfVjIiLCJNb2R1bGUuRGlzcHV0ZSIsIk1lbnUuUkZJRF9UT1BVUCIsIlJFSl9UWE5fSElTVF9WaWV3ZXIiLCJQYXltZW50X0FnZ3JfQWNjb3VudF9SZXBvcnQiLCJCQlBTX1JFQ09OIiwiQ2FyZF9NbmdtdF9JbnZlbnRvcnlfU2VhcmNoIiwiQUdFTlRfQVNTSVNUQU5UX01ha2VyIiwiQ2FzaGJhY2tfTWFrZXIiLCJNZW51LkRJTVRTUEFZX1RPX0JBTksiLCJNZW51LlVQSV9SZWNoYXJnZV9SZXBvcnQiLCJSZXNldF9QYXNzd29yZCIsIlRhZ19SZXBsYWNlbWVudF9SZXBvcnQiLCJGdWVsX0ZsYWdfQ2hhbmdlX1JlcG9ydCIsIkNhcmRfTW5nbXRfQWdlbmN5X1NlYXJjaCIsIlRBR19DTE9TVVJFX1JFQ09OIiwiSXNzX0NoYXJnZWJhY2tfQ2hlY2tlciIsIlFyX0Zvcl9OZXdfVGFnZXMiLCJNZW51LkFkbWluX1JlcG9ydHMiLCJSZXNldF9DdXN0b21lcl9QYXNzd29yZCIsIkZvcmNlZF9DaGFuZ2VfUGFzc3dvcmQiLCJQbGF6YV9QYXNzX0xpc3RfUmVwb3J0IiwiQ2FyZF9NYW51ZmFjdHVyZXJfQ2hlY2tlciIsIlRBR19SRUNBTExfUkVRVUVTVCIsIk1lbnUuRElNVFNQQVlfVE9fRElNVFNQQVkiLCJDb25jX1NldHRsZW1lbnRfUmVwb3J0IiwiSXNzX0NoYXJnZWJhY2tfTWFrZXIiLCJCQlBTX1JlY2hhcmdlX1JlcG9ydCIsIlRBR19DTE9TVVJFX01BS0VSIiwiR3JvdXBfTWFzdGVyX01ha2VyIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkJBTktfVE9fRElNVFNQQVlfQ2hlY2tlciIsIk1lbnUuQUdFTlRfUkVQT1JUUyIsIk1hcmtfVGFnX0FzX0RhbWFnZV9NYWtlciIsIkNvbmNlc3Npb25haXJlX1Byb2ZpbGUiLCJEVFBMVVNfUmVjaGFyZ2VfUmVwb3J0IiwiQWNjb3VudHNfTWFzdGVyX1ZpZXdlciIsIkNvbmNfRmFyZV9SdWxlX1JlcG9ydCIsIkRUUExVU19SZWNvbiIsIk1lcmNoYW50X09uYm9hcmRpbmdfQ2hlY2tlciIsIkNSTV9BY2NvdW50X1N0YXRlbWVudCIsIkNPUlBPUkFURV9UQUdfQ0xPU1VSRV9DaGVja2VyIiwiUkVDT05fREFTSF9DSEVDS0VSIiwiQ29ycF9CQ19Ub19Db3JwX0N1c3RfQ2hlY2tlciIsIlRyYW5zYWN0aW9uX0hpc3RvcnlfTG9nIiwiTW9kdWxlLlJlcG9ydHMiLCJVcGlfUmVjaGFyZ2VfRmlsZV9VcGxvYWQiLCJVc2VyX01hc3Rlcl9DaGVja2VyIiwiQ1JNX1RhZ190b19UYWdfVHJhbnNmZXJfVjIiLCJESU1UU1BBWV9UT19CQU5LX01ha2VyIiwiTWVudS5BQ0NPVU5UX0NMT1NVUkUiLCJQYXJ0bmVyX09uYm9hcmRpbmdfTWFrZXIiLCJNZW51LkNhcmRzX1JlcG9ydCIsIkFjY291bnRzX01hc3Rlcl9DaGVja2VyIiwiTW9kdWxlLlRvb2xzIiwiQ3JlYXRlX1VzZXJfUmVwb3J0IiwiVEFHX0NMT1NVUkVfQ09SUF9CVUxLX01BS0VSIiwiQ0JTX0N1c3RfVGFnX01hcCIsIkNPUlBPUkFURV9DVVNUT01FUl9NYWtlciIsIkZhcmVfUnVsZV9SZXBvcnQiLCJNYXJrX1RhZ19Bc19EYW1hZ2VfQ2hlY2tlciIsIk1lbnUuQWdlbnRfVG9fQ3VzdG9tZXIiLCJDUk1fVGFnX3RvX1RhZ19UcmFuc2ZlciIsIk1lbnUuVXNlcl9NYXN0ZXIiLCJUYWdfUmVwb3J0IiwiUmVjb25fRGFzaGJvYXJkIiwiVEhSRVNIT0xEX0xJTUlUX09WRVJSSURFIiwiUGF5b3V0X1N1bW1hcnlfUmVwb3J0IiwiUkVfSVNTX1JFUE9SVCIsIkNIQU5HRV9SRVRBSUxfUE9PTF9BQ0NUX1RZUEUiLCJDUk1fQWNjb3VudF9EZXRhaWwiLCJJc3NfQ2hhcmdlYmFja19SZXBvcnQiLCJGdWVsX1JlY29uIiwiSXNzdWFuY2VfQXVkaXRfUmVwb3J0IiwiTWVudS5Hcm91cF9NYXN0ZXIiLCJBQ0NPVU5UX0NMT1NVUkVfTWFrZXIiLCJGdW5kX1RyYW5zZmVyX0VucXVpcnkiLCJDUk1fUmVjaGFyZ2VfQWNjb3VudCIsIklITUNMX1JlY29uIiwiQUNDT1VOVF9DTE9TVVJFX0NoZWNrZXIiLCJDYXJkX01uZ210X1VwbG9hZCIsIkNSTV9QcmVwYWlkX0N1c3RfUmVjaGFyZ2UiLCJBR0VOVF9BU1NJU1RBTlRfVmlld2VyIiwiQ1JNX05ld19TZXJ2aWNlX1JlcXVlc3QiLCJPcmRlcl9OZXdfQ2FyZF9BZGQiLCJSZWNvbl9GaWxlTWFuYWdlbWVudF9TZWFyY2giLCJDUk1fQnVsa19SZWNoYXJnZSIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiTWVudS5CQU5LX1RPX0RJTVRTUEFZIiwiQWdlbnRfVG9fQkNfVmlld2VyIiwiUGFydG5lcl9PbmJvYXJkaW5nX0NoZWNrZXIiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiRElNVFNQQVlfVE9fRElNVFNQQVlfVmlld2VyIiwiTG9naW5fRGV0YWlsc19SZXBvcnQiLCJGcmF1ZF9CdWxrX1doaXRlbGlzdF9DaGVja2VyIiwiTWVudS5CQ19BZ2VudF9BY2N0X1N0bXQiLCJSZWNvbl9GaWxlTWFuYWdlbWVudF9VcGxvYWQiLCJSRVRBSUxfVEFHX0NMT1NVUkVfQ2hlY2tlciIsIkNSTV9Qb3N0cGFpZF9DdXN0X1JlY2hhcmdlIiwiVGFnX09yZGVyX1JlcG9ydCIsIk1lbnUuQ2FzaGJhY2siLCJGcmF1ZF9CdWxrX1doaXRlbGlzdF9NYWtlciIsIk1lbnUuUmVjb25fRGFzaGJvcmFkIiwiQ2FyZF9TdGF0dXMiLCJNZW51LkFHRU5UX0FTU0lTVEFOVCIsIkFnZW50X1RvX0JDX0NoZWNrZXIiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiQUdFTlRfQ1VTVE9NRVJfTUFTVEVSX1ZpZXdlciIsIkNvbmNfUGxhemFfUmVwb3J0IiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNhc2hiYWNrX0NoZWNrZXIiLCJDT1JQT1JBVEVfVEFHX0NMT1NVUkVfVmlld2VyIiwiQ3VzdF9WZWhpY2xlX0RldGFpbCIsIklzc19DaGJrX0Fja19GaWxlX1VwbG9hZCIsIkRJTVRTUEFZX1RPX0RJTVRTUEFZX01ha2VyIiwiQmx0X1JlY2hhcmdlX1JlcG9ydCIsIkNvcnBfQkNfVG9fQ29ycF9DdXN0X01ha2VyIiwiUkZJRF9UT1BVUCIsIk1lbnUuUHJlLXBhaWRfQWNjb3VudCIsIk1lbnUuQWRtaW5fT3BlcmF0aW9ucyIsIkNoZWNrX2NhcmQiLCJGcmF1ZF9NbmdtdF9Ib3RfTGlzdF9jYXJkIiwiVGFnSXNzdWVUaHJvdWdoQWdlbnRBcHAiLCJVTkFMTE9DQVRFRF9UQUdfUkVQT1JUIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWFudWFsX1Rtc19UcmFuc2FjdGlvbnMiLCJBR0VOVF9NTkdNVF9NQVNURVJfTWFrZXIiLCJNZW51LkNvbmNlc3Npb25lcl9SZXBvcnRzIiwiT3JkZXJfTmV3X0NhcmRfTW9kaWZ5IiwiQkNfQUdFTlRfQUNDVF9TVE1UIiwiT3JkZXJfRnVsZmlsbCIsIlNlcnZpY2VfUmVxdWVzdCIsIkNSTV9Vc2VyX1JlcXVlc3QiLCJBRERfUkVNT1ZFX1ZSTiIsIk1hbnVhbF9EZWJpdF9DcmVkaXRfTWFrZXIiLCJBZ2VudEFjY291bnRTdGF0ZW1lbnQiLCJSZWNvbl9GaWxlTWFuYWdlbWVudF9VcGxvYWRWMiIsIk1hbnVhbF9EZWJpdF9DcmVkaXQiLCJNZW51Lk1lcmNoYW50X1JlY29uIiwiSUZUX0FjY291bnRfVXBsb2FkIiwiQUdFTlRfQVNTSVNUQU5UX0NoZWNrZXIiXSwic3ViIjoiNjI3NDAuYWRtaW40IiwiaWF0IjoxNzMwMDkyMjYyLCJleHAiOjE3MzAxNzg2NjJ9.P_xKG0_vm1M2Y7W6w8pEb6JkRMhA9MNIdE6WtSx-UEM';
  String get bearerToken => _bearerToken;
  set bearerToken(String value) {
    _bearerToken = value;
  }

  String _rcImageFront = '';
  String get rcImageFront => _rcImageFront;
  set rcImageFront(String value) {
    _rcImageFront = value;
  }

  String _rcImageBack = '';
  String get rcImageBack => _rcImageBack;
  set rcImageBack(String value) {
    _rcImageBack = value;
  }

  List<ExstingCustomerStruct> _exstingCutomerList = [
    ExstingCustomerStruct.fromSerializableMap(jsonDecode(
        '{\"custId\":\"Hello World 1\",\"name\":\"Hello World 1\",\"kycFlag\":\"Hello World 1\"}')),
    ExstingCustomerStruct.fromSerializableMap(jsonDecode(
        '{\"custId\":\"Hello World 2\",\"name\":\"Hello World 2\",\"kycFlag\":\"Hello World 2\"}')),
    ExstingCustomerStruct.fromSerializableMap(jsonDecode(
        '{\"custId\":\"Hello World 3\",\"name\":\"Hello World 3\",\"kycFlag\":\"Hello World 3\"}'))
  ];
  List<ExstingCustomerStruct> get exstingCutomerList => _exstingCutomerList;
  set exstingCutomerList(List<ExstingCustomerStruct> value) {
    _exstingCutomerList = value;
  }

  void addToExstingCutomerList(ExstingCustomerStruct value) {
    exstingCutomerList.add(value);
  }

  void removeFromExstingCutomerList(ExstingCustomerStruct value) {
    exstingCutomerList.remove(value);
  }

  void removeAtIndexFromExstingCutomerList(int index) {
    exstingCutomerList.removeAt(index);
  }

  void updateExstingCutomerListAtIndex(
    int index,
    ExstingCustomerStruct Function(ExstingCustomerStruct) updateFn,
  ) {
    exstingCutomerList[index] = updateFn(_exstingCutomerList[index]);
  }

  void insertAtIndexInExstingCutomerList(
      int index, ExstingCustomerStruct value) {
    exstingCutomerList.insert(index, value);
  }

  SelectedCustomerDetailsStruct _selectedCustomer =
      SelectedCustomerDetailsStruct();
  SelectedCustomerDetailsStruct get selectedCustomer => _selectedCustomer;
  set selectedCustomer(SelectedCustomerDetailsStruct value) {
    _selectedCustomer = value;
  }

  void updateSelectedCustomerStruct(
      Function(SelectedCustomerDetailsStruct) updateFn) {
    updateFn(_selectedCustomer);
  }

  PermanentAddressStruct _custPermanentAddress = PermanentAddressStruct();
  PermanentAddressStruct get custPermanentAddress => _custPermanentAddress;
  set custPermanentAddress(PermanentAddressStruct value) {
    _custPermanentAddress = value;
  }

  void updateCustPermanentAddressStruct(
      Function(PermanentAddressStruct) updateFn) {
    updateFn(_custPermanentAddress);
  }

  String _url = 'https://dev.ffetoll.idfcfirstbank.com';
  String get url => _url;
  set url(String value) {
    _url = value;
  }

  IssueTagStruct _issueTagResponse = IssueTagStruct();
  IssueTagStruct get issueTagResponse => _issueTagResponse;
  set issueTagResponse(IssueTagStruct value) {
    _issueTagResponse = value;
  }

  void updateIssueTagResponseStruct(Function(IssueTagStruct) updateFn) {
    updateFn(_issueTagResponse);
  }

  ProductStruct _selectedProduct = ProductStruct();
  ProductStruct get selectedProduct => _selectedProduct;
  set selectedProduct(ProductStruct value) {
    _selectedProduct = value;
  }

  void updateSelectedProductStruct(Function(ProductStruct) updateFn) {
    updateFn(_selectedProduct);
  }

  String _ERROR = 'ERROR';
  String get ERROR => _ERROR;
  set ERROR(String value) {
    _ERROR = value;
  }

  CustCommunicationAddressStruct _custCommercialAddress =
      CustCommunicationAddressStruct();
  CustCommunicationAddressStruct get custCommercialAddress =>
      _custCommercialAddress;
  set custCommercialAddress(CustCommunicationAddressStruct value) {
    _custCommercialAddress = value;
  }

  void updateCustCommercialAddressStruct(
      Function(CustCommunicationAddressStruct) updateFn) {
    updateFn(_custCommercialAddress);
  }

  VehicleStruct _vehicleDetails = VehicleStruct();
  VehicleStruct get vehicleDetails => _vehicleDetails;
  set vehicleDetails(VehicleStruct value) {
    _vehicleDetails = value;
  }

  void updateVehicleDetailsStruct(Function(VehicleStruct) updateFn) {
    updateFn(_vehicleDetails);
  }

  CustomerDetailsStruct _custDetails = CustomerDetailsStruct();
  CustomerDetailsStruct get custDetails => _custDetails;
  set custDetails(CustomerDetailsStruct value) {
    _custDetails = value;
  }

  void updateCustDetailsStruct(Function(CustomerDetailsStruct) updateFn) {
    updateFn(_custDetails);
  }

  String _otpId = '';
  String get otpId => _otpId;
  set otpId(String value) {
    _otpId = value;
  }

  String _selectedVehicleCCH = '';
  String get selectedVehicleCCH => _selectedVehicleCCH;
  set selectedVehicleCCH(String value) {
    _selectedVehicleCCH = value;
  }

  bool _selectedCust = false;
  bool get selectedCust => _selectedCust;
  set selectedCust(bool value) {
    _selectedCust = value;
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
  }

  bool _getOTP1 = false;
  bool get getOTP1 => _getOTP1;
  set getOTP1(bool value) {
    _getOTP1 = value;
  }

  bool _showLoader = false;
  bool get showLoader => _showLoader;
  set showLoader(bool value) {
    _showLoader = value;
  }

  bool _getOTP2 = false;
  bool get getOTP2 => _getOTP2;
  set getOTP2(bool value) {
    _getOTP2 = value;
  }

  bool _getOTP3 = false;
  bool get getOTP3 => _getOTP3;
  set getOTP3(bool value) {
    _getOTP3 = value;
  }

  String _selectedCustomerName = '';
  String get selectedCustomerName => _selectedCustomerName;
  set selectedCustomerName(String value) {
    _selectedCustomerName = value;
  }

  String _selectedCustomerID = '';
  String get selectedCustomerID => _selectedCustomerID;
  set selectedCustomerID(String value) {
    _selectedCustomerID = value;
  }

  String _resCode = '700';
  String get resCode => _resCode;
  set resCode(String value) {
    _resCode = value;
  }

  String _tokenSecretKey = 'FLUTTER_INTEGATION';
  String get tokenSecretKey => _tokenSecretKey;
  set tokenSecretKey(String value) {
    _tokenSecretKey = value;
  }

  String _testCheckSum = '';
  String get testCheckSum => _testCheckSum;
  set testCheckSum(String value) {
    _testCheckSum = value;
  }

  String _otpAction = '';
  String get otpAction => _otpAction;
  set otpAction(String value) {
    _otpAction = value;
  }

  String _requestID = '';
  String get requestID => _requestID;
  set requestID(String value) {
    _requestID = value;
  }

  String _maxTrip = 'N';
  String get maxTrip => _maxTrip;
  set maxTrip(String value) {
    _maxTrip = value;
  }

  String _annualTrip = 'N';
  String get annualTrip => _annualTrip;
  set annualTrip(String value) {
    _annualTrip = value;
  }

  String _dailyTrip = 'N';
  String get dailyTrip => _dailyTrip;
  set dailyTrip(String value) {
    _dailyTrip = value;
  }

  String _authenticationOption = 'KYC';
  String get authenticationOption => _authenticationOption;
  set authenticationOption(String value) {
    _authenticationOption = value;
  }

  String _secureToken = 'c17320a0bede7fec';
  String get secureToken => _secureToken;
  set secureToken(String value) {
    _secureToken = value;
  }

  String _exempted = 'N';
  String get exempted => _exempted;
  set exempted(String value) {
    _exempted = value;
  }

  String _exemptedCatg = 'N';
  String get exemptedCatg => _exemptedCatg;
  set exemptedCatg(String value) {
    _exemptedCatg = value;
  }

  String _mobileNumber = '';
  String get mobileNumber => _mobileNumber;
  set mobileNumber(String value) {
    _mobileNumber = value;
  }

  String _qrUrl = '';
  String get qrUrl => _qrUrl;
  set qrUrl(String value) {
    _qrUrl = value;
  }

  String _upiOrderId = '';
  String get upiOrderId => _upiOrderId;
  set upiOrderId(String value) {
    _upiOrderId = value;
  }

  UpiPymtStatusStruct _upiPymtStatusResp = UpiPymtStatusStruct();
  UpiPymtStatusStruct get upiPymtStatusResp => _upiPymtStatusResp;
  set upiPymtStatusResp(UpiPymtStatusStruct value) {
    _upiPymtStatusResp = value;
  }

  void updateUpiPymtStatusRespStruct(Function(UpiPymtStatusStruct) updateFn) {
    updateFn(_upiPymtStatusResp);
  }

  UpiTagIssueStruct _upiIssueTagRes = UpiTagIssueStruct();
  UpiTagIssueStruct get upiIssueTagRes => _upiIssueTagRes;
  set upiIssueTagRes(UpiTagIssueStruct value) {
    _upiIssueTagRes = value;
  }

  void updateUpiIssueTagResStruct(Function(UpiTagIssueStruct) updateFn) {
    updateFn(_upiIssueTagRes);
  }

  String _commercialVehicle = 'N';
  String get commercialVehicle => _commercialVehicle;
  set commercialVehicle(String value) {
    _commercialVehicle = value;
  }

  String _PID = '';
  String get PID => _PID;
  set PID(String value) {
    _PID = value;
  }
}
