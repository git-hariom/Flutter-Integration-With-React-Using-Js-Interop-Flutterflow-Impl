import '/components/check_box_widget.dart';
import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/otp_input_widget.dart';
import '/components/text_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'tagreplacement_widget.dart' show TagreplacementWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TagreplacementModel extends FlutterFlowModel<TagreplacementWidget> {
  ///  Local state fields for this page.

  bool isMobileNumberValid = false;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for textInput component.
  late TextInputModel textInputModel3;
  // Model for cta component.
  late CtaModel ctaModel1;
  // Model for otpInput component.
  late OtpInputModel otpInputModel;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 60000;
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for cta component.
  late CtaModel ctaModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel1;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel3;
  // Model for textInput component.
  late TextInputModel textInputModel4;
  // Model for textInput component.
  late TextInputModel textInputModel5;
  // Model for textInput component.
  late TextInputModel textInputModel6;
  // Model for textInput component.
  late TextInputModel textInputModel7;
  // Model for textInput component.
  late TextInputModel textInputModel8;
  // Model for textInput component.
  late TextInputModel textInputModel9;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel4;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel5;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel6;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel7;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel8;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel9;
  // Model for checkBox component.
  late CheckBoxModel checkBoxModel1;
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
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel15;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for cta component.
  late CtaModel ctaModel3;
  // Model for textInput component.
  late TextInputModel textInputModel10;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for textInput component.
  late TextInputModel textInputModel11;
  // Model for textInput component.
  late TextInputModel textInputModel12;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for cta component.
  late CtaModel ctaModel4;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel16;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel17;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel18;
  // Model for textInput component.
  late TextInputModel textInputModel13;
  // Model for textInput component.
  late TextInputModel textInputModel14;
  // Model for textInput component.
  late TextInputModel textInputModel15;
  // Model for textInput component.
  late TextInputModel textInputModel16;
  // Model for textInput component.
  late TextInputModel textInputModel17;
  // Model for textInput component.
  late TextInputModel textInputModel18;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel19;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel20;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel21;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel22;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel23;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel24;
  // Model for checkBox component.
  late CheckBoxModel checkBoxModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel25;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel26;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel27;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel28;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel29;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel30;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for cta component.
  late CtaModel ctaModel5;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    ctaModel1 = createModel(context, () => CtaModel());
    otpInputModel = createModel(context, () => OtpInputModel());
    ctaModel2 = createModel(context, () => CtaModel());
    formTextReadOnlyModel1 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel2 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel3 =
        createModel(context, () => FormTextReadOnlyModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    textInputModel5 = createModel(context, () => TextInputModel());
    textInputModel6 = createModel(context, () => TextInputModel());
    textInputModel7 = createModel(context, () => TextInputModel());
    textInputModel8 = createModel(context, () => TextInputModel());
    textInputModel9 = createModel(context, () => TextInputModel());
    formTextReadOnlyModel4 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel5 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel6 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel7 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel8 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel9 =
        createModel(context, () => FormTextReadOnlyModel());
    checkBoxModel1 = createModel(context, () => CheckBoxModel());
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
    formTextReadOnlyModel15 =
        createModel(context, () => FormTextReadOnlyModel());
    ctaModel3 = createModel(context, () => CtaModel());
    textInputModel10 = createModel(context, () => TextInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    textInputModel11 = createModel(context, () => TextInputModel());
    textInputModel12 = createModel(context, () => TextInputModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    ctaModel4 = createModel(context, () => CtaModel());
    formTextReadOnlyModel16 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel17 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel18 =
        createModel(context, () => FormTextReadOnlyModel());
    textInputModel13 = createModel(context, () => TextInputModel());
    textInputModel14 = createModel(context, () => TextInputModel());
    textInputModel15 = createModel(context, () => TextInputModel());
    textInputModel16 = createModel(context, () => TextInputModel());
    textInputModel17 = createModel(context, () => TextInputModel());
    textInputModel18 = createModel(context, () => TextInputModel());
    formTextReadOnlyModel19 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel20 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel21 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel22 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel23 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel24 =
        createModel(context, () => FormTextReadOnlyModel());
    checkBoxModel2 = createModel(context, () => CheckBoxModel());
    formTextReadOnlyModel25 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel26 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel27 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel28 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel29 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel30 =
        createModel(context, () => FormTextReadOnlyModel());
    ctaModel5 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    textInputModel3.dispose();
    ctaModel1.dispose();
    otpInputModel.dispose();
    timerController.dispose();
    ctaModel2.dispose();
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    textInputModel4.dispose();
    textInputModel5.dispose();
    textInputModel6.dispose();
    textInputModel7.dispose();
    textInputModel8.dispose();
    textInputModel9.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    formTextReadOnlyModel7.dispose();
    formTextReadOnlyModel8.dispose();
    formTextReadOnlyModel9.dispose();
    checkBoxModel1.dispose();
    formTextReadOnlyModel10.dispose();
    formTextReadOnlyModel11.dispose();
    formTextReadOnlyModel12.dispose();
    formTextReadOnlyModel13.dispose();
    formTextReadOnlyModel14.dispose();
    formTextReadOnlyModel15.dispose();
    ctaModel3.dispose();
    textInputModel10.dispose();
    uploadImageModel1.dispose();
    textInputModel11.dispose();
    textInputModel12.dispose();
    uploadImageModel2.dispose();
    ctaModel4.dispose();
    formTextReadOnlyModel16.dispose();
    formTextReadOnlyModel17.dispose();
    formTextReadOnlyModel18.dispose();
    textInputModel13.dispose();
    textInputModel14.dispose();
    textInputModel15.dispose();
    textInputModel16.dispose();
    textInputModel17.dispose();
    textInputModel18.dispose();
    formTextReadOnlyModel19.dispose();
    formTextReadOnlyModel20.dispose();
    formTextReadOnlyModel21.dispose();
    formTextReadOnlyModel22.dispose();
    formTextReadOnlyModel23.dispose();
    formTextReadOnlyModel24.dispose();
    checkBoxModel2.dispose();
    formTextReadOnlyModel25.dispose();
    formTextReadOnlyModel26.dispose();
    formTextReadOnlyModel27.dispose();
    formTextReadOnlyModel28.dispose();
    formTextReadOnlyModel29.dispose();
    formTextReadOnlyModel30.dispose();
    ctaModel5.dispose();
  }

  /// Action blocks.
  Future formValidation(BuildContext context) async {}

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
