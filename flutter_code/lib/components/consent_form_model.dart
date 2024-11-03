import '/components/cta_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'consent_form_widget.dart' show ConsentFormWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConsentFormModel extends FlutterFlowModel<ConsentFormWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cta component.
  late CtaModel ctaModel1;
  // Model for cta component.
  late CtaModel ctaModel2;

  @override
  void initState(BuildContext context) {
    ctaModel1 = createModel(context, () => CtaModel());
    ctaModel2 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    ctaModel1.dispose();
    ctaModel2.dispose();
  }
}
