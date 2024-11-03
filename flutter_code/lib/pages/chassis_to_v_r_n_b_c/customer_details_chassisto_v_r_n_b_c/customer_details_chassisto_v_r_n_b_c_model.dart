import '/components/cta_widget.dart';
import '/components/otp_input_widget.dart';
import '/components/text_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'customer_details_chassisto_v_r_n_b_c_widget.dart'
    show CustomerDetailsChassistoVRNBCWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsChassistoVRNBCModel
    extends FlutterFlowModel<CustomerDetailsChassistoVRNBCWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for textInput component.
  late TextInputModel textInputModel3;
  // Model for textInput component.
  late TextInputModel textInputModel4;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
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
  late TextInputModel textInputModel5;
  // Model for textInput component.
  late TextInputModel textInputModel6;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel3;
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
  // Model for textInput component.
  late TextInputModel textInputModel7;
  // Model for textInput component.
  late TextInputModel textInputModel8;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel4;
  // Model for cta component.
  late CtaModel ctaModel4;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    ctaModel1 = createModel(context, () => CtaModel());
    otpInputModel1 = createModel(context, () => OtpInputModel());
    ctaModel2 = createModel(context, () => CtaModel());
    textInputModel5 = createModel(context, () => TextInputModel());
    textInputModel6 = createModel(context, () => TextInputModel());
    uploadImageModel3 = createModel(context, () => UploadImageModel());
    otpInputModel2 = createModel(context, () => OtpInputModel());
    ctaModel3 = createModel(context, () => CtaModel());
    textInputModel7 = createModel(context, () => TextInputModel());
    textInputModel8 = createModel(context, () => TextInputModel());
    uploadImageModel4 = createModel(context, () => UploadImageModel());
    ctaModel4 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    textInputModel3.dispose();
    textInputModel4.dispose();
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    ctaModel1.dispose();
    otpInputModel1.dispose();
    timerController1.dispose();
    ctaModel2.dispose();
    textInputModel5.dispose();
    textInputModel6.dispose();
    uploadImageModel3.dispose();
    otpInputModel2.dispose();
    timerController2.dispose();
    ctaModel3.dispose();
    textInputModel7.dispose();
    textInputModel8.dispose();
    uploadImageModel4.dispose();
    ctaModel4.dispose();
  }
}
