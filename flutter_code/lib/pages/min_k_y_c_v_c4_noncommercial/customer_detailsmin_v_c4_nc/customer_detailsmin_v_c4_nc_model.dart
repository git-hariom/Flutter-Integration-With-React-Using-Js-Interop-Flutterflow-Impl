import '/components/consent_form_widget.dart';
import '/components/cta_widget.dart';
import '/components/text_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'customer_detailsmin_v_c4_nc_widget.dart'
    show CustomerDetailsminVC4NcWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsminVC4NcModel
    extends FlutterFlowModel<CustomerDetailsminVC4NcWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for cta component.
  late CtaModel ctaModel1;
  // State field(s) for inputChassis widget.
  FocusNode? inputChassisFocusNode;
  TextEditingController? inputChassisTextController;
  String? Function(BuildContext, String?)? inputChassisTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for cta component.
  late CtaModel ctaModel2;
  // Model for textInput component.
  late TextInputModel textInputModel3;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel3;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel4;
  // Model for textInput component.
  late TextInputModel textInputModel4;
  // Model for cta component.
  late CtaModel ctaModel3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for cta component.
  late CtaModel ctaModel4;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    ctaModel1 = createModel(context, () => CtaModel());
    ctaModel2 = createModel(context, () => CtaModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    uploadImageModel3 = createModel(context, () => UploadImageModel());
    uploadImageModel4 = createModel(context, () => UploadImageModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    ctaModel3 = createModel(context, () => CtaModel());
    ctaModel4 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    ctaModel1.dispose();
    inputChassisFocusNode?.dispose();
    inputChassisTextController?.dispose();

    ctaModel2.dispose();
    textInputModel3.dispose();
    uploadImageModel3.dispose();
    uploadImageModel4.dispose();
    textInputModel4.dispose();
    ctaModel3.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();

    ctaModel4.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
