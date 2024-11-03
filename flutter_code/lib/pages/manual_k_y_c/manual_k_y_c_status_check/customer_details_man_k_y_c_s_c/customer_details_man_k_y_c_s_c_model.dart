import '/components/cta_widget.dart';
import '/components/text_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'customer_details_man_k_y_c_s_c_widget.dart'
    show CustomerDetailsManKYCSCWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsManKYCSCModel
    extends FlutterFlowModel<CustomerDetailsManKYCSCWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for cta component.
  late CtaModel ctaModel1;
  // Model for textInput component.
  late TextInputModel textInputModel3;
  // Model for textInput component.
  late TextInputModel textInputModel4;
  // Model for cta component.
  late CtaModel ctaModel2;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    ctaModel1 = createModel(context, () => CtaModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    ctaModel2 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    ctaModel1.dispose();
    textInputModel3.dispose();
    textInputModel4.dispose();
    ctaModel2.dispose();
  }
}
