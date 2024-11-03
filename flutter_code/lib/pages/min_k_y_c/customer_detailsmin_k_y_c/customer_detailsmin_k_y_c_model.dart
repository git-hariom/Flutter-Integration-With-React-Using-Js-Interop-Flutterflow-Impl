import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/components/loader_widget.dart';
import '/components/mobile_number_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/components/vehicle_number_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'customer_detailsmin_k_y_c_widget.dart' show CustomerDetailsminKYCWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsminKYCModel
    extends FlutterFlowModel<CustomerDetailsminKYCWidget> {
  ///  Local state fields for this page.

  String? titleTest;

  bool? isMobileNumberValid;

  bool? isVehicleNumberValid;

  bool? isLoading;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for MobileNumberInput component.
  late MobileNumberInputModel mobileNumberInputModel;
  // Model for VehicleNumberInput component.
  late VehicleNumberInputModel vehicleNumberInputModel;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Custom Action - getChkSumDedupeInit] action in Button widget.
  String? dedupeInitChkSm;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? rcFrontImgBase64Mob;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? rcBackbase64Mob;
  // Stores action output result for [Backend Call - API (DedupeInitiate)] action in Button widget.
  ApiCallResponse? dedopeInitiate;
  // Stores action output result for [Custom Action - dedupeStatusApiCall] action in Button widget.
  dynamic? dedupeStatusResponse;
  // Model for MobileNumberInputWeb.
  late MobileNumberInputModel mobileNumberInputWebModel;
  // Model for VehicleNumberInputWeb.
  late VehicleNumberInputModel vehicleNumberInputWebModel;
  // Model for UploadImageWeb.
  late UploadImageModel uploadImageWebModel1;
  // Model for UploadImageWeb.
  late UploadImageModel uploadImageWebModel2;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Stores action output result for [Custom Action - getChkSumDedupeInit] action in Button widget.
  String? dedupeInitChkSmWeb;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? rcFrontBase64;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? rcBackbase64;
  // Stores action output result for [Backend Call - API (DedupeInitiate)] action in Button widget.
  ApiCallResponse? dedupeInitiate;
  // Stores action output result for [Custom Action - generateRequestId] action in Button widget.
  String? requestIdStatus;
  // Stores action output result for [Backend Call - API (DedupeStatus)] action in Button widget.
  ApiCallResponse? dedupeStatusResp;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    mobileNumberInputModel =
        createModel(context, () => MobileNumberInputModel());
    vehicleNumberInputModel =
        createModel(context, () => VehicleNumberInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    mobileNumberInputWebModel =
        createModel(context, () => MobileNumberInputModel());
    vehicleNumberInputWebModel =
        createModel(context, () => VehicleNumberInputModel());
    uploadImageWebModel1 = createModel(context, () => UploadImageModel());
    uploadImageWebModel2 = createModel(context, () => UploadImageModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    mobileNumberInputModel.dispose();
    vehicleNumberInputModel.dispose();
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    buttonModel1.dispose();
    mobileNumberInputWebModel.dispose();
    vehicleNumberInputWebModel.dispose();
    uploadImageWebModel1.dispose();
    uploadImageWebModel2.dispose();
    buttonModel2.dispose();
    loaderModel.dispose();
  }

  /// Action blocks.
  Future formValidation(BuildContext context) async {}
}
