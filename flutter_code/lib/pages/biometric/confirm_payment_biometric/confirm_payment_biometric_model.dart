import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/gender_input_widget.dart';
import '/components/search_bar_widget.dart';
import '/components/search_barcode_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'confirm_payment_biometric_widget.dart'
    show ConfirmPaymentBiometricWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmPaymentBiometricModel
    extends FlutterFlowModel<ConfirmPaymentBiometricWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for searchBar component.
  late SearchBarModel searchBarModel1;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel1;
  // Model for cta component.
  late CtaModel ctaModel1;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel1;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for cta component.
  late CtaModel ctaModel2;
  // Model for searchBar component.
  late SearchBarModel searchBarModel2;
  // Model for cta component.
  late CtaModel ctaModel3;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel4;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel5;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel6;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel2;
  // Model for cta component.
  late CtaModel ctaModel4;

  @override
  void initState(BuildContext context) {
    searchBarModel1 = createModel(context, () => SearchBarModel());
    genderInputModel1 = createModel(context, () => GenderInputModel());
    ctaModel1 = createModel(context, () => CtaModel());
    formTextReadOnlyModel1 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel2 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel3 =
        createModel(context, () => FormTextReadOnlyModel());
    ctaModel2 = createModel(context, () => CtaModel());
    searchBarModel2 = createModel(context, () => SearchBarModel());
    ctaModel3 = createModel(context, () => CtaModel());
    formTextReadOnlyModel4 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel5 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel6 =
        createModel(context, () => FormTextReadOnlyModel());
    genderInputModel2 = createModel(context, () => GenderInputModel());
    ctaModel4 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    searchBarModel1.dispose();
    genderInputModel1.dispose();
    ctaModel1.dispose();
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    ctaModel2.dispose();
    searchBarModel2.dispose();
    ctaModel3.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    genderInputModel2.dispose();
    ctaModel4.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
