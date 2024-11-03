import '/components/cta_widget.dart';
import '/components/otp_input_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_on_man_k_y_c_i_j_widget.dart' show AddOnManKYCIJWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddOnManKYCIJModel extends FlutterFlowModel<AddOnManKYCIJWidget> {
  ///  State fields for stateful widgets in this page.

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
    ctaModel1 = createModel(context, () => CtaModel());
    otpInputModel1 = createModel(context, () => OtpInputModel());
    ctaModel2 = createModel(context, () => CtaModel());
    ctaModel3 = createModel(context, () => CtaModel());
    otpInputModel2 = createModel(context, () => OtpInputModel());
    ctaModel4 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    ctaModel1.dispose();
    otpInputModel1.dispose();
    timerController1.dispose();
    ctaModel2.dispose();
    ctaModel3.dispose();
    otpInputModel2.dispose();
    timerController2.dispose();
    ctaModel4.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
