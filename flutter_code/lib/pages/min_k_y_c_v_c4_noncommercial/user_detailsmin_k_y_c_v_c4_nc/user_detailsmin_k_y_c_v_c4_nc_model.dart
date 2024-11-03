import '/components/check_box_widget.dart';
import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/otp_input_widget.dart';
import '/components/text_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'user_detailsmin_k_y_c_v_c4_nc_widget.dart'
    show UserDetailsminKYCVC4NcWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsminKYCVC4NcModel
    extends FlutterFlowModel<UserDetailsminKYCVC4NcWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for textInput component.
  late TextInputModel textInputModel3;
  // Model for textInput component.
  late TextInputModel textInputModel4;
  // Model for textInput component.
  late TextInputModel textInputModel5;
  // Model for checkBox component.
  late CheckBoxModel checkBoxModel1;
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
  // Model for textInput component.
  late TextInputModel textInputModel6;
  // Model for textInput component.
  late TextInputModel textInputModel7;
  // Model for textInput component.
  late TextInputModel textInputModel8;
  // Model for textInput component.
  late TextInputModel textInputModel9;
  // Model for textInput component.
  late TextInputModel textInputModel10;
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
  late CtaModel ctaModel3;
  // Model for checkBox component.
  late CheckBoxModel checkBoxModel2;
  // Model for textInput component.
  late TextInputModel textInputModel11;
  // Model for textInput component.
  late TextInputModel textInputModel12;
  // Model for textInput component.
  late TextInputModel textInputModel13;
  // Model for textInput component.
  late TextInputModel textInputModel14;
  // Model for textInput component.
  late TextInputModel textInputModel15;
  // Model for textInput component.
  late TextInputModel textInputModel16;
  // Model for cta component.
  late CtaModel ctaModel4;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    textInputModel5 = createModel(context, () => TextInputModel());
    checkBoxModel1 = createModel(context, () => CheckBoxModel());
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
    ctaModel1 = createModel(context, () => CtaModel());
    otpInputModel1 = createModel(context, () => OtpInputModel());
    ctaModel2 = createModel(context, () => CtaModel());
    textInputModel6 = createModel(context, () => TextInputModel());
    textInputModel7 = createModel(context, () => TextInputModel());
    textInputModel8 = createModel(context, () => TextInputModel());
    textInputModel9 = createModel(context, () => TextInputModel());
    textInputModel10 = createModel(context, () => TextInputModel());
    otpInputModel2 = createModel(context, () => OtpInputModel());
    ctaModel3 = createModel(context, () => CtaModel());
    checkBoxModel2 = createModel(context, () => CheckBoxModel());
    textInputModel11 = createModel(context, () => TextInputModel());
    textInputModel12 = createModel(context, () => TextInputModel());
    textInputModel13 = createModel(context, () => TextInputModel());
    textInputModel14 = createModel(context, () => TextInputModel());
    textInputModel15 = createModel(context, () => TextInputModel());
    textInputModel16 = createModel(context, () => TextInputModel());
    ctaModel4 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    textInputModel3.dispose();
    textInputModel4.dispose();
    textInputModel5.dispose();
    checkBoxModel1.dispose();
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    ctaModel1.dispose();
    otpInputModel1.dispose();
    timerController1.dispose();
    ctaModel2.dispose();
    textInputModel6.dispose();
    textInputModel7.dispose();
    textInputModel8.dispose();
    textInputModel9.dispose();
    textInputModel10.dispose();
    otpInputModel2.dispose();
    timerController2.dispose();
    ctaModel3.dispose();
    checkBoxModel2.dispose();
    textInputModel11.dispose();
    textInputModel12.dispose();
    textInputModel13.dispose();
    textInputModel14.dispose();
    textInputModel15.dispose();
    textInputModel16.dispose();
    ctaModel4.dispose();
  }
}
