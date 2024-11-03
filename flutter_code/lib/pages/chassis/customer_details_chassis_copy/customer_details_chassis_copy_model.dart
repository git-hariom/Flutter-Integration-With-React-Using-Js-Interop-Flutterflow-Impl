import '/components/button_widget.dart';
import '/components/gender_input_widget.dart';
import '/components/text_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'customer_details_chassis_copy_widget.dart'
    show CustomerDetailsChassisCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsChassisCopyModel
    extends FlutterFlowModel<CustomerDetailsChassisCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for textInput component.
  late TextInputModel textInputModel3;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Model for textInput component.
  late TextInputModel textInputModel4;
  // Model for textInput component.
  late TextInputModel textInputModel5;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel2;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel3;
  // Model for textInput component.
  late TextInputModel textInputModel6;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel4;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for Button component.
  late ButtonModel buttonModel3;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    genderInputModel1 = createModel(context, () => GenderInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    textInputModel5 = createModel(context, () => TextInputModel());
    genderInputModel2 = createModel(context, () => GenderInputModel());
    uploadImageModel3 = createModel(context, () => UploadImageModel());
    textInputModel6 = createModel(context, () => TextInputModel());
    uploadImageModel4 = createModel(context, () => UploadImageModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    genderInputModel1.dispose();
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    textInputModel3.dispose();
    buttonModel1.dispose();
    textInputModel4.dispose();
    textInputModel5.dispose();
    genderInputModel2.dispose();
    uploadImageModel3.dispose();
    textInputModel6.dispose();
    uploadImageModel4.dispose();
    buttonModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    buttonModel3.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
