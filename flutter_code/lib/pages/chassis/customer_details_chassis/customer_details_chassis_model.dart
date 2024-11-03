import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/components/chassis_input_widget.dart';
import '/components/engine_no_input_widget.dart';
import '/components/mobile_number_input_widget.dart';
import '/components/select_doc_type_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'customer_details_chassis_widget.dart' show CustomerDetailsChassisWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsChassisModel
    extends FlutterFlowModel<CustomerDetailsChassisWidget> {
  ///  Local state fields for this page.

  String? isSalesInvoiceUploaded;

  String? isInsuranceCopyUploaded;

  bool? isMobileNumberValid;

  bool? isEngineNoValid;

  bool? isChassisNoValid;

  ///  State fields for stateful widgets in this page.

  // Model for MobileNumberInput component.
  late MobileNumberInputModel mobileNumberInputModel1;
  // Model for EngineNoInputMob.
  late EngineNoInputModel engineNoInputMobModel;
  // Model for SelectDocTypeInput component.
  late SelectDocTypeInputModel selectDocTypeInputModel1;
  // Model for UploadImageMob1.
  late UploadImageModel uploadImageMob1Model;
  // Model for UploadImageMob2.
  late UploadImageModel uploadImageMob2Model;
  // Model for ChassisInput component.
  late ChassisInputModel chassisInputModel1;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? rcFrontImgBase64Mob;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? rcBackbase64Mob;
  // Stores action output result for [Backend Call - API (DedupeInitiate)] action in Button widget.
  ApiCallResponse? dedupeInitiateChassisResMob;
  // Stores action output result for [Backend Call - API (DedupeStatus)] action in Button widget.
  ApiCallResponse? dedupeStatusChassisRespMob;
  // Model for MobileNumberInput component.
  late MobileNumberInputModel mobileNumberInputModel2;
  // Model for EngineNoInput component.
  late EngineNoInputModel engineNoInputModel;
  // Model for SelectDocTypeInput component.
  late SelectDocTypeInputModel selectDocTypeInputModel2;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for ChassisInput component.
  late ChassisInputModel chassisInputModel2;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? docImageFirst;
  // Stores action output result for [Custom Action - convertImageFileToBase64] action in Button widget.
  String? docImageSecond;
  // Stores action output result for [Backend Call - API (DedupeInitiate)] action in Button widget.
  ApiCallResponse? dedopeInitiateResWeb;
  // Stores action output result for [Backend Call - API (DedupeStatus)] action in Button widget.
  ApiCallResponse? dedupeStatusResp;

  @override
  void initState(BuildContext context) {
    mobileNumberInputModel1 =
        createModel(context, () => MobileNumberInputModel());
    engineNoInputMobModel = createModel(context, () => EngineNoInputModel());
    selectDocTypeInputModel1 =
        createModel(context, () => SelectDocTypeInputModel());
    uploadImageMob1Model = createModel(context, () => UploadImageModel());
    uploadImageMob2Model = createModel(context, () => UploadImageModel());
    chassisInputModel1 = createModel(context, () => ChassisInputModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    mobileNumberInputModel2 =
        createModel(context, () => MobileNumberInputModel());
    engineNoInputModel = createModel(context, () => EngineNoInputModel());
    selectDocTypeInputModel2 =
        createModel(context, () => SelectDocTypeInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    chassisInputModel2 = createModel(context, () => ChassisInputModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    mobileNumberInputModel1.dispose();
    engineNoInputMobModel.dispose();
    selectDocTypeInputModel1.dispose();
    uploadImageMob1Model.dispose();
    uploadImageMob2Model.dispose();
    chassisInputModel1.dispose();
    buttonModel1.dispose();
    mobileNumberInputModel2.dispose();
    engineNoInputModel.dispose();
    selectDocTypeInputModel2.dispose();
    uploadImageModel1.dispose();
    chassisInputModel2.dispose();
    uploadImageModel2.dispose();
    buttonModel2.dispose();
  }
}
