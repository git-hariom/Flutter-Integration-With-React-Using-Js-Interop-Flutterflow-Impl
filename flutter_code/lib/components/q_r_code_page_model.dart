import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'q_r_code_page_widget.dart' show QRCodePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QRCodePageModel extends FlutterFlowModel<QRCodePageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Custom Action - getChkSmUpiStatus] action in Button widget.
  String? upiStatusChksm;
  // Stores action output result for [Backend Call - API (UpiStatus)] action in Button widget.
  ApiCallResponse? upiStatusResp;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Stores action output result for [Custom Action - getChkSmUpiStatus] action in Button widget.
  String? upiStatusChksmMob;
  // Stores action output result for [Backend Call - API (UpiStatus)] action in Button widget.
  ApiCallResponse? upiStatusRespMob;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
