import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/components/loader_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'vehicle_details_widget.dart' show VehicleDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VehicleDetailsModel extends FlutterFlowModel<VehicleDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - dedupeStatusApiCall] action in Text widget.
  dynamic? dedupeStatusResponseMobRefresh;
  // State field(s) for inputChassis widget.
  FocusNode? inputChassisFocusNode;
  TextEditingController? inputChassisTextController;
  String? Function(BuildContext, String?)? inputChassisTextControllerValidator;
  // State field(s) for cchDropDownMob widget.
  String? cchDropDownMobValue;
  FormFieldController<String>? cchDropDownMobValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for cchDropDown widget.
  String? cchDropDownValue;
  FormFieldController<String>? cchDropDownValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    inputChassisFocusNode?.dispose();
    inputChassisTextController?.dispose();

    buttonModel1.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();

    buttonModel2.dispose();
    loaderModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
