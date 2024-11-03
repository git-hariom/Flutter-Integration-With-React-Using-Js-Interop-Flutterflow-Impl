import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start eToll Flutterflow Group Code

class ETollFlutterflowGroup {
  static String getBaseUrl({
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) =>
      '${url}';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [AUTH_TOKEN]',
  };
  static IssueTagCall issueTagCall = IssueTagCall();
  static IssueTagUpiCall issueTagUpiCall = IssueTagUpiCall();
  static InitiateNKYCCall initiateNKYCCall = InitiateNKYCCall();
  static DedupeInitiateCall dedupeInitiateCall = DedupeInitiateCall();
  static DedupeStatusCall dedupeStatusCall = DedupeStatusCall();
  static VerifyOtpAadharCall verifyOtpAadharCall = VerifyOtpAadharCall();
  static RequestOtpCall requestOtpCall = RequestOtpCall();
  static ProductListingCall productListingCall = ProductListingCall();
  static BarCodeListingCall barCodeListingCall = BarCodeListingCall();
  static CCHListingCall cCHListingCall = CCHListingCall();
  static ImageUploadCall imageUploadCall = ImageUploadCall();
  static ActivateTagCall activateTagCall = ActivateTagCall();
  static BarcodeSearchCall barcodeSearchCall = BarcodeSearchCall();
  static VerifyOtpCall verifyOtpCall = VerifyOtpCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static UpiStatusCall upiStatusCall = UpiStatusCall();

  static final interceptors = [
    Interceptor(),
  ];
}

class IssueTagCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? otpId = '',
    String? product = '',
    String? tvc = '',
    String? cch = 'VC4',
    String? tagId = '',
    String? vrnMobileNo = '',
    String? initialAmount = '',
    String? commVeh = '',
    String? exempted = '',
    String? exemptedCatg = '',
    String? barcode = '',
    String? entityId = '',
    String? createUser = '',
    String? journeyId = '',
    String? requestId = '',
    String? source = '',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "otp": "${otp}",
  "otpId": "${otpId}",
  "issueTag": {
    "product": "${product}",
    "tvc": "${tvc}",
    "cch": "${cch}",
    "tagId": "${tagId}",
    "barcode": "${barcode}",
    "vrnMobileNo": "${vrnMobileNo}",
    "initialAmount": "${initialAmount}",
    "commVeh": "${commVeh}",
    "exempted": "${exempted}",
    "exemptedCatg": "${exemptedCatg}"
  }
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'IssueTag',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/customer/issueTag',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
          'requestId': '${requestId}',
          'source': '${source}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
}

class IssueTagUpiCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? otpId = '',
    String? product = '12345662740',
    String? tvc = '4',
    String? cch = 'VC4',
    String? tagId = '12323454356yyrth',
    String? vrnMobileNo = '12344567891',
    String? initialAmount = '600',
    String? commVeh = 'N',
    String? exempted = 'Y',
    String? exemptedCatg = 'EXEMPT123',
    String? barcode = 'ARCODE-123',
    String? entityId = '62740',
    String? createUser = '62740',
    String? journeyId = '57294829472846',
    String? requestId = '1465834619',
    String? source = 'API',
    String? chkSm = 'hidsghirfkhdjkgdfkgjk',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "otp": "${otp}",
  "otpId": "${otpId}",
  "issueTag": {
    "product": "${product}",
    "tvc": "${tvc}",
    "cch": "${cch}",
    "tagId": "${tagId}",
    "barcode": "${barcode}",
    "vrnMobileNo": "${vrnMobileNo}",
    "initialAmount": "${initialAmount}",
    "commVeh": "${commVeh}",
    "exempted": "${exempted}",
    "exemptedCatg": "${exemptedCatg}"
  },
  "chkSm": "${chkSm}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'IssueTagUpi',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/customer/issueTagForUpi',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
          'requestId': '${requestId}',
          'source': '${source}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
}

class InitiateNKYCCall {
  Future<ApiCallResponse> call({
    String? entityId = '1234',
    String? source = 'api',
    String? createUser = '62740',
    String? journeyId = '1234',
    String? emailId = 'test@gmail.com',
    String? aadharNo = '705703999178',
    String? panNo = 'HHXPS0968A',
    String? dob = '',
    String? address1 = 'ABC',
    String? address2 = 'ABC',
    String? street = 'ABC street',
    String? city = 'Agra',
    String? pincode = '633098',
    String? state = 'Delhi',
    String? requestId = '1234910190',
    String? chkSm = '12345678',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "emailId": "${emailId}",
  "aadharNo": "${aadharNo}",
  "panNo": "${panNo}",
  "dob": "${dob}",
  "communicationAddress": {
    "address1": "${address1}",
    "address2": "${address2}",
    "street": "${street}",
    "city": "${city}",
    "pincode": "${pincode}",
    "state": "${state}"
  },
  "chkSm": "${chkSm}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'InitiateNKYC',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/customer/onboarding/initiate/nkyc',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'source': '${source}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
          'requestId': '${requestId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
}

class DedupeInitiateCall {
  Future<ApiCallResponse> call({
    String? entityId = '',
    String? source = '',
    String? createUser = '',
    String? mobileNo = '',
    String? vrn = '',
    String? rcFront = '',
    String? rcBack = '',
    String? chassisNo = '',
    String? engineNoLast5 = '',
    String? docType = '',
    String? docFront = '',
    String? docBack = '',
    String? journeyId = '',
    String? requestId = '',
    String? chkSm = '',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "mobileNo": "${mobileNo}",
  "vrnDetails": {
    "vrn": "${vrn}",
    "rcFront": "${rcFront}",
    "rcBack": "${rcBack}"
  },
  "chassisDetails": {
    "chassisNo": "${chassisNo}",
    "engineNo": "${engineNoLast5}",
    "docType": "${docType}",
    "docFront": "${docFront}",
    "docBack": "${docBack}"
  },
  "chkSm": "${chkSm}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'DedupeInitiate',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/dedupe/initiate',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'source': '${source}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
          'requestId': '${requestId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
}

class DedupeStatusCall {
  Future<ApiCallResponse> call({
    String? entityId = '123456',
    String? source = 'API',
    String? createUser = '123456',
    String? journeyId = '1212134',
    String? requestId = '1344545',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{

}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'DedupeStatus',
        apiUrl: '${baseUrl}/customer-onboarding-backend-auth/v4/dedupe/status',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'source': '${source}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
          'requestId': '${requestId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  List? custDtlsBody(dynamic response) => getJsonField(
        response,
        r'''$.existingCustomer''',
        true,
      ) as List?;
  String? vehicleRegNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.vehicleRegNo''',
      ));
  dynamic? vehicleDtlsBody(dynamic response) => getJsonField(
        response,
        r'''$.vehicle''',
      );
  String? custName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.existingCustomer[:].name''',
      ));
  String? custFlage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.existingCustomer[:].kycFlag''',
      ));
  String? chassisNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.chassisNo''',
      ));
  String? engineNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.engineNo''',
      ));
  String? vehicleMake(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.make''',
      ));
  String? custId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.existingCustomer[:].custId''',
      ));
  String? journyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
  String? vehicleColor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.vehicleColor''',
      ));
  String? vehicleModel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.model''',
      ));
  String? vehicleTvc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.tvc''',
      ));
  String? vehicleRegAvlbl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.vehicleRegAvlbl''',
      ));
  String? vehicleComercial(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.commercial''',
      ));
  String? vehicleRegDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.regDate''',
      ));
  List<String>? vehicleCch(dynamic response) => (getJsonField(
        response,
        r'''$.vehicle.cch''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? vehicleOCRVerified(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vehicle.isOcrVerified''',
      ));
  String? vahanVerified(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.isVahanVerified''',
      ));
  String? vehicleInsuarnceAllowed(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.vehicle.isIssuanceAllowed''',
      ));
}

class VerifyOtpAadharCall {
  Future<ApiCallResponse> call({
    String? entityId = '',
    String? source = '',
    String? createUser = '',
    String? journeyId = '',
    String? otp = '',
    String? requestId = '',
    String? chkSm = '',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "otp": "${otp}",
  "chkSm": "${chkSm}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'verifyOtpAadhar',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/customer/onboarding/verify/nkyc',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'source': '${source}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
          'requestId': '${requestId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
  dynamic? customerDetailsBody(dynamic response) => getJsonField(
        response,
        r'''$.customer''',
      );
  String? custName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.name''',
      ));
  String? custDob(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.dob''',
      ));
  String? custMob(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.mobileNo''',
      ));
  String? ucicId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.posidexUcic''',
      ));
  String? pmAddress1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.permanentAddress.address1''',
      ));
  String? pmAddress2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.permanentAddress.address2''',
      ));
  String? pmStreet(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.permanentAddress.street''',
      ));
  String? pmCity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.permanentAddress.city''',
      ));
  String? pmPincode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.permanentAddress.pincode''',
      ));
  String? pmState(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer.permanentAddress.state''',
      ));
  dynamic? pmAddressBody(dynamic response) => getJsonField(
        response,
        r'''$.customer.permanentAddress''',
      );
  dynamic? vehicleBody(dynamic response) => getJsonField(
        response,
        r'''$.vehicle''',
      );
  String? vrn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.vrn''',
      ));
  String? commercialStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.vehicle.isCommercial''',
      ));
  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
}

class RequestOtpCall {
  Future<ApiCallResponse> call({
    String? entityId = '62740',
    String? source = 'API',
    String? requestId = '1234567898',
    String? createUser = '62740',
    String? customerId = '33791288',
    String? vrn = 'AS30ASCD2321',
    String? action = 'OPTSERVICE',
    String? maxService = 'Y',
    String? dailyTrip = 'N',
    String? yearlyTrip = 'N',
    String? journeyId = '12356833',
    String? chkSm = '123456',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "custId": "${customerId}",
  "vrn": "${vrn}",
  "action": "${action}",
  "optService": {
    "maxService": "${maxService}",
    "dailyTrip": "${dailyTrip}",
    "yearlyTrip": "${yearlyTrip}"
  },
  "chkSm": "${chkSm}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'RequestOtp',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/customer/onboarding/reqotp',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'source': '${source}',
          'requestId': '${requestId}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? otpId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otpId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCd''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
}

class ProductListingCall {
  Future<ApiCallResponse> call({
    String? entityId = '161415',
    String? requestId = 'REQ123454',
    String? journeyId = 'J123456',
    String? createUser = '62740.admin1',
    String? source = 'MOBILE',
    String? vehClass = 'VC4',
    String? kycFlag = 'NKYC',
    String? custType = 'R',
    String? maxProductFlag = 'Y',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "vehClass": "${vehClass}",
  "kycFlag": "${kycFlag}",
  "custType": "${custType}",
  "maxProductFlag": "${maxProductFlag}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'ProductListing',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/products/listing',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'requestId': '${requestId}',
          'journeyId': '${journeyId}',
          'createUser': '${createUser}',
          'source': '${source}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
  List? productList(dynamic response) => getJsonField(
        response,
        r'''$.productList''',
        true,
      ) as List?;
}

class BarCodeListingCall {
  Future<ApiCallResponse> call({
    String? source = '',
    String? createUser = '',
    String? entityId = '',
    String? requestId = '',
    String? journeyId = '',
    String? custType = 'R',
    String? kycFlag = 'NKYC',
    String? vehClass = '4',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "custType": "${custType}",
  "entityId": "${entityId}",
  "kycFlag": "${kycFlag}",
  "vehClass": "${vehClass}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'BarCodeListing',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/barcode/listing',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'source': '${source}',
          'createUser': '${createUser}',
          'entityId': '${entityId}',
          'requestId': '${requestId}',
          'journeyId': '${journeyId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }
}

class CCHListingCall {
  Future<ApiCallResponse> call({
    String? source = '',
    String? createUser = '',
    String? entityId = '',
    String? requestId = '',
    String? journeyId = '',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'CCHListing',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/tagclass/cch/listing',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'source': '${source}',
          'createUser': '${createUser}',
          'entityId': '${entityId}',
          'requestId': '${requestId}',
          'journeyId': '${journeyId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }
}

class ImageUploadCall {
  Future<ApiCallResponse> call({
    String? source = 'AGENT API',
    String? requestId = '12345566543',
    String? journeyId = '12344554',
    String? entityId = '62740',
    String? createUser = '62740',
    String? docType = '',
    String? front = '',
    String? chkSm = '',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "chkSm": "${chkSm}",
  "document": [
    {
      "docType": "${docType}",
      "front": "${front}"
    }
  ]
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'ImageUpload',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/ocr/kyv/initiate',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'source': '${source}',
          'createUser': '${createUser}',
          'entityId': '${entityId}',
          'requestId': '${requestId}',
          'journeyId': '${journeyId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
  List? fieldErorrFirst(dynamic response) => getJsonField(
        response,
        r'''$.fieldErrors''',
        true,
      ) as List?;
  List<String>? fieldErrorSecond(dynamic response) => (getJsonField(
        response,
        r'''$.fieldErrors[:].field''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fieldErrorThird(dynamic response) => (getJsonField(
        response,
        r'''$.fieldErrors[:].message''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ActivateTagCall {
  Future<ApiCallResponse> call({
    String? requestId = '1232546748',
    String? source = 'API',
    String? journeyId = '213325436476',
    String? entityId = '62740',
    String? createUser = '62740',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'ActivateTag',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/ocr/kyv/process',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'source': '${source}',
          'createUser': '${createUser}',
          'entityId': '${entityId}',
          'requestId': '${requestId}',
          'journeyId': '${journeyId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
}

class BarcodeSearchCall {
  Future<ApiCallResponse> call({
    String? source = '',
    String? createUser = '',
    String? entityId = '',
    String? requestId = '',
    String? journeyId = '',
    String? barCode = '',
    String? tvcClass = '4',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "barCode": "${barCode}",
  "tvcClass": "${tvcClass}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'BarcodeSearch',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/barcode/listing',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'source': '${source}',
          'createUser': '${createUser}',
          'entityId': '${entityId}',
          'requestId': '${requestId}',
          'journeyId': '${journeyId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }
}

class VerifyOtpCall {
  Future<ApiCallResponse> call({
    String? entityId = '622740',
    String? source = 'API',
    String? requestId = '12287423468732',
    String? createUser = '62740',
    String? otp = '3453',
    String? otpId = '1234',
    String? journeyId = '122342334',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "otp": "${otp}",
  "otpId": "${otpId}",
  "chkSm": "ce8c1939f829758ba961f3fa194a8c4fd7b0dc270b73af80dd1a750d00110ebc"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'verifyOtp ',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/customer/onboarding/verifyotp',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '${entityId}',
          'source': '${source}',
          'requestId': '${requestId}',
          'createUser': '${createUser}',
          'journeyId': '${journeyId}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? otpId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otpId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCd''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
}

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'Refresh Token',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/auth/refresh-token',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'entityId': '62740',
        },
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }
}

class UpiStatusCall {
  Future<ApiCallResponse> call({
    String? requestId = '1232534',
    String? journeyId = '13245',
    String? source = 'AGENT APP',
    String? entityId = '62740',
    String? createUser = '62740',
    String? payOrderNo = '213456',
    String? chkSm = '',
    String? url = 'https://dev.ffetoll.idfcfirstbank.com',
    String? authToken =
        'eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6WyJNZW51LkNPUlBPUkFURV9DVVNUT01FUiIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwVVBJIiwiQWdlbnRfVG9fQ3VzdG9tZXJfVmlld2VyIiwiTWVudS5QaHlzaWNhbF9UaWNrZXRfUmVwb3J0IiwiTW9kdWxlLkNhcmRzX01hbmFnZW1lbnQiLCJDYXJkX01uZ210X0ludmVudG9yeV9TZWFyY2giLCJBR0VOVF9DVVNUT01FUl9NQVNURVJfTWFrZXIiLCJDYXJkX01uZ210X0NhcmRfUmVxdWVzdCIsIkFHX0FQUF9NQU5VQUxfS1lDIiwiU2VsZl9DaGFuZ2VfUGFzc3dvcmQiLCJDT1JQT1JBVEVfQ1VTVE9NRVJfVmlld2VyIiwiQ2FyZF9NbmdtdF9BZ2VuY3lfU2VhcmNoIiwiUmVzZXRfQ3VzdG9tZXJfUGFzc3dvcmQiLCJGb3JjZWRfQ2hhbmdlX1Bhc3N3b3JkIiwiTW9kdWxlLkFnZW50TWFuYWdlbWVudCIsIlRSSVBfSU5TVVJBTkNFIiwiUHJpbnRfQ2hhbGxhbl9Jc3N1ZXIiLCJUQUdfUkVDQUxMX1JFUVVFU1QiLCJNZW51LkFHRU5UX0NVU1RPTUVSX01BU1RFUiIsIk1lbnUuQ1VTVE9NRVJfTUdNVCIsIkNhcmRfU3RhdHVzIiwiVGFnX1NlYXJjaCIsIkNPUlBPUkFURV9DVVNUT01FUl9DaGVja2VyIiwiQ2FyZF9SZXF1ZXN0X01hbmFnZW1lbnQiLCJUYWdSZWNocmdlVGhyb3VnaEFnZW50QXBwIiwiTWVudS5DVVNUT01FUl9UUkFOU0FDVElPTiIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9WaWV3ZXIiLCJGRVRDSF9WRUhJQ0xFX0RUTFNfSVNTVUVSIiwiTWVudS5BR0VOVF9SRVBPUlRTIiwiVXBkYXRlX0N1c3RvbWVyX1N0YXR1cyIsIkNoYWxhblRocm91Z2hBZ2VudEFwcCIsIkFHRU5UX0NVU1RPTUVSX01BU1RFUl9DaGVja2VyIiwiQUdFTlRfUkVQT1JUU19UWE5fU0VBUkNIIiwiTWVudS5DYXJkc19NYW5hZ2VtZW50IiwiVGFnUmVwbGFjZW1lbnRBZ2VudEFwcCIsIkNDQXZlbnVlQWdlbnRUb3BVcCIsIkludmVudG9yeVJlcG9ydEFnZW50QXBwIiwiUkZJRF9UT1BVUCIsIk15X1Byb2ZpbGVfQWdlbnQiLCJUQUdfUkVDQUxMX1JFUE9SVCIsIk1lbnUuQWRtaW5fQWN0aXZpdHkiLCJNb2R1bGUuUmVwb3J0cyIsIlRhZ0lzc3VlVGhyb3VnaEFnZW50QXBwIiwiSW52ZW50b3J5UmVxdWVzdEFnZW50QXBwIiwiTW9kdWxlLkFkbWluIiwiVEFHX1JFQ0FMTF9NQU5BR0VNRU5UIiwiTWVudS5NeV9Qcm9maWxlX0FnZW50IiwiVEFHX1JFX0lTU1VBTkNFIiwiQ2FzaF9EZXBvc2l0IiwiQWdlbnRBY2NvdW50U3RhdGVtZW50IiwiQ09SUE9SQVRFX0NVU1RPTUVSX01ha2VyIiwiTWVudS5BZ2VudF9Ub19DdXN0b21lciIsIlRhZ19SZXBvcnQiLCJNZW51LlJGSURfVE9QVVAiXSwic3ViIjoiMzUwMzM1ODQ4IiwiaWF0IjoxNzMwMDkxNTMwLCJleHAiOjE3MzAxNzc5MzB9.snv9z-sj5hIJ2CNCYeW2B3_IQMCDfmXnxkAPNIP22fA',
  }) async {
    final baseUrl = ETollFlutterflowGroup.getBaseUrl(
      url: url,
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "payOrderNo": "123456",
  "chkSm": "c4b800d4d6b2d2819276bdefce0f14c4107398f0f1ee63490512eedae6362a36"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'UpiStatus',
        apiUrl:
            '${baseUrl}/customer-onboarding-backend-auth/v4/payment/upi/status',
        callType: ApiCallType.POST,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${authToken}',
          'requestId': '${requestId}',
          'journeyId': '${journeyId}',
          'source': '${source}',
          'entityId': '${entityId}',
          'createUser': '${createUser}',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      ETollFlutterflowGroup.interceptors,
    );
  }

  String? paymentStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentStatus''',
      ));
  String? paymentId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.paymentId''',
      ));
  String? requestId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.requestId''',
      ));
  String? journeyId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.journeyId''',
      ));
  String? resCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resCode''',
      ));
  String? resMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resMsg''',
      ));
}

/// End eToll Flutterflow Group Code

class TestAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test API',
      apiUrl:
          'https://dev.ffetoll.idfcfirstbank.com/etollff/utility/validateOTP',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
