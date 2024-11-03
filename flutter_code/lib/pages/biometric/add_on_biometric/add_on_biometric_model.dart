import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/otp_input_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_on_biometric_widget.dart' show AddOnBiometricWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddOnBiometricModel extends FlutterFlowModel<AddOnBiometricWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel1;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel3;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel4;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel5;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel6;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel7;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for cta component.
  late CtaModel ctaModel1;
  // Model for otpInput component.
  late OtpInputModel otpInputModel1;
  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 60000;
  int timerMilliseconds1 = 60000;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for cta component.
  late CtaModel ctaModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel8;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel9;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel10;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel11;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel12;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel13;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel14;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for cta component.
  late CtaModel ctaModel3;
  // Model for otpInput component.
  late OtpInputModel otpInputModel2;
  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 60000;
  int timerMilliseconds2 = 60000;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for cta component.
  late CtaModel ctaModel4;

  @override
  void initState(BuildContext context) {
    formTextReadOnlyModel1 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel2 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel3 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel4 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel5 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel6 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel7 =
        createModel(context, () => FormTextReadOnlyModel());
    ctaModel1 = createModel(context, () => CtaModel());
    otpInputModel1 = createModel(context, () => OtpInputModel());
    ctaModel2 = createModel(context, () => CtaModel());
    formTextReadOnlyModel8 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel9 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel10 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel11 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel12 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel13 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel14 =
        createModel(context, () => FormTextReadOnlyModel());
    ctaModel3 = createModel(context, () => CtaModel());
    otpInputModel2 = createModel(context, () => OtpInputModel());
    ctaModel4 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    formTextReadOnlyModel7.dispose();
    ctaModel1.dispose();
    otpInputModel1.dispose();
    timerController1.dispose();
    ctaModel2.dispose();
    formTextReadOnlyModel8.dispose();
    formTextReadOnlyModel9.dispose();
    formTextReadOnlyModel10.dispose();
    formTextReadOnlyModel11.dispose();
    formTextReadOnlyModel12.dispose();
    formTextReadOnlyModel13.dispose();
    formTextReadOnlyModel14.dispose();
    ctaModel3.dispose();
    otpInputModel2.dispose();
    timerController2.dispose();
    ctaModel4.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
