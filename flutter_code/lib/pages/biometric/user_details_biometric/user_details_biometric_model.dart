import '/components/check_box_widget.dart';
import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/gender_input_widget.dart';
import '/components/otp_input_widget.dart';
import '/components/text_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'user_details_biometric_widget.dart' show UserDetailsBiometricWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsBiometricModel
    extends FlutterFlowModel<UserDetailsBiometricWidget> {
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
  // Model for GenderInput component.
  late GenderInputModel genderInputModel1;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel2;
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
  late CtaModel ctaModel1;
  // Model for checkBox component.
  late CheckBoxModel checkBoxModel1;
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
  // Model for textInput component.
  late TextInputModel textInputModel11;
  // Model for cta component.
  late CtaModel ctaModel2;
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
  late CtaModel ctaModel3;
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
  // Model for GenderInput component.
  late GenderInputModel genderInputModel3;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel4;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel3;
  // Model for checkBox component.
  late CheckBoxModel checkBoxModel2;
  // Model for textInput component.
  late TextInputModel textInputModel17;
  // Model for textInput component.
  late TextInputModel textInputModel18;
  // Model for textInput component.
  late TextInputModel textInputModel19;
  // Model for textInput component.
  late TextInputModel textInputModel20;
  // Model for textInput component.
  late TextInputModel textInputModel21;
  // Model for textInput component.
  late TextInputModel textInputModel22;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel7;
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
  // Model for cta component.
  late CtaModel ctaModel5;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    textInputModel5 = createModel(context, () => TextInputModel());
    genderInputModel1 = createModel(context, () => GenderInputModel());
    genderInputModel2 = createModel(context, () => GenderInputModel());
    otpInputModel1 = createModel(context, () => OtpInputModel());
    ctaModel1 = createModel(context, () => CtaModel());
    checkBoxModel1 = createModel(context, () => CheckBoxModel());
    textInputModel6 = createModel(context, () => TextInputModel());
    textInputModel7 = createModel(context, () => TextInputModel());
    textInputModel8 = createModel(context, () => TextInputModel());
    textInputModel9 = createModel(context, () => TextInputModel());
    textInputModel10 = createModel(context, () => TextInputModel());
    textInputModel11 = createModel(context, () => TextInputModel());
    ctaModel2 = createModel(context, () => CtaModel());
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
    ctaModel3 = createModel(context, () => CtaModel());
    textInputModel12 = createModel(context, () => TextInputModel());
    textInputModel13 = createModel(context, () => TextInputModel());
    textInputModel14 = createModel(context, () => TextInputModel());
    textInputModel15 = createModel(context, () => TextInputModel());
    textInputModel16 = createModel(context, () => TextInputModel());
    genderInputModel3 = createModel(context, () => GenderInputModel());
    genderInputModel4 = createModel(context, () => GenderInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    uploadImageModel3 = createModel(context, () => UploadImageModel());
    checkBoxModel2 = createModel(context, () => CheckBoxModel());
    textInputModel17 = createModel(context, () => TextInputModel());
    textInputModel18 = createModel(context, () => TextInputModel());
    textInputModel19 = createModel(context, () => TextInputModel());
    textInputModel20 = createModel(context, () => TextInputModel());
    textInputModel21 = createModel(context, () => TextInputModel());
    textInputModel22 = createModel(context, () => TextInputModel());
    formTextReadOnlyModel7 =
        createModel(context, () => FormTextReadOnlyModel());
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
    otpInputModel2 = createModel(context, () => OtpInputModel());
    ctaModel4 = createModel(context, () => CtaModel());
    ctaModel5 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    textInputModel3.dispose();
    textInputModel4.dispose();
    textInputModel5.dispose();
    genderInputModel1.dispose();
    genderInputModel2.dispose();
    otpInputModel1.dispose();
    timerController1.dispose();
    ctaModel1.dispose();
    checkBoxModel1.dispose();
    textInputModel6.dispose();
    textInputModel7.dispose();
    textInputModel8.dispose();
    textInputModel9.dispose();
    textInputModel10.dispose();
    textInputModel11.dispose();
    ctaModel2.dispose();
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    ctaModel3.dispose();
    textInputModel12.dispose();
    textInputModel13.dispose();
    textInputModel14.dispose();
    textInputModel15.dispose();
    textInputModel16.dispose();
    genderInputModel3.dispose();
    genderInputModel4.dispose();
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    uploadImageModel3.dispose();
    checkBoxModel2.dispose();
    textInputModel17.dispose();
    textInputModel18.dispose();
    textInputModel19.dispose();
    textInputModel20.dispose();
    textInputModel21.dispose();
    textInputModel22.dispose();
    formTextReadOnlyModel7.dispose();
    formTextReadOnlyModel8.dispose();
    formTextReadOnlyModel9.dispose();
    formTextReadOnlyModel10.dispose();
    formTextReadOnlyModel11.dispose();
    formTextReadOnlyModel12.dispose();
    otpInputModel2.dispose();
    timerController2.dispose();
    ctaModel4.dispose();
    ctaModel5.dispose();
  }
}
