import '/backend/api_requests/api_calls.dart';
import '/components/button_widget.dart';
import '/components/loader_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'activate_tagmin_k_y_c_widget.dart' show ActivateTagminKYCWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActivateTagminKYCModel extends FlutterFlowModel<ActivateTagminKYCWidget> {
  ///  Local state fields for this page.

  String? frontImageBase64;

  String? sideImageBase64;

  String? closeWithTagPastedImageBase64;

  bool? isTagActivated = false;

  ///  State fields for stateful widgets in this page.

  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Stores action output result for [Custom Action - getChkSmkyvProcess] action in UploadImage widget.
  String? vrnImgChkSm;
  // Stores action output result for [Backend Call - API (ImageUpload)] action in UploadImage widget.
  ApiCallResponse? apiResult3hc;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Stores action output result for [Custom Action - getChkSmkyvProcess] action in UploadImage widget.
  String? fastagImageChkSm;
  // Stores action output result for [Backend Call - API (ImageUpload)] action in UploadImage widget.
  ApiCallResponse? apiResult4hc;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel3;
  // Stores action output result for [Custom Action - getChkSmkyvProcess] action in UploadImage widget.
  String? axleImageChkSm;
  // Stores action output result for [Backend Call - API (ImageUpload)] action in UploadImage widget.
  ApiCallResponse? apiResult5hc;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Backend Call - API (ActivateTag)] action in Button widget.
  ApiCallResponse? apiResultggw;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel4;
  // Stores action output result for [Custom Action - getChkSmkyvProcess] action in UploadImage widget.
  String? vrnImgWebChkSm;
  // Stores action output result for [Backend Call - API (ImageUpload)] action in UploadImage widget.
  ApiCallResponse? apiResult6hc;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel5;
  // Stores action output result for [Custom Action - getChkSmkyvProcess] action in UploadImage widget.
  String? axselWebImgChkSm;
  // Stores action output result for [Backend Call - API (ImageUpload)] action in UploadImage widget.
  ApiCallResponse? apiResult8hc;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel6;
  // Stores action output result for [Custom Action - getChkSmkyvProcess] action in UploadImage widget.
  String? fastagWebImgChkSm;
  // Stores action output result for [Backend Call - API (ImageUpload)] action in UploadImage widget.
  ApiCallResponse? apiResult7hc;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Stores action output result for [Backend Call - API (ActivateTag)] action in Button widget.
  ApiCallResponse? apiResultyq2;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    uploadImageModel3 = createModel(context, () => UploadImageModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    uploadImageModel4 = createModel(context, () => UploadImageModel());
    uploadImageModel5 = createModel(context, () => UploadImageModel());
    uploadImageModel6 = createModel(context, () => UploadImageModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    uploadImageModel3.dispose();
    buttonModel1.dispose();
    uploadImageModel4.dispose();
    uploadImageModel5.dispose();
    uploadImageModel6.dispose();
    buttonModel2.dispose();
    loaderModel.dispose();
  }
}
