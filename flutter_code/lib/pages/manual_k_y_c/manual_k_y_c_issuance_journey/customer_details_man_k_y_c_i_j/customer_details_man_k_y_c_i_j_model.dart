import '/components/consent_form_widget.dart';
import '/components/cta_widget.dart';
import '/components/o_t_p_input_copy_widget.dart';
import '/components/text_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'customer_details_man_k_y_c_i_j_widget.dart'
    show CustomerDetailsManKYCIJWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsManKYCIJModel
    extends FlutterFlowModel<CustomerDetailsManKYCIJWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for cta component.
  late CtaModel ctaModel1;
  // Model for cta component.
  late CtaModel ctaModel2;
  // Model for cta component.
  late CtaModel ctaModel3;
  // Model for OTPInputCopy component.
  late OTPInputCopyModel oTPInputCopyModel1;
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
  late CtaModel ctaModel4;
  // State field(s) for inputChassis widget.
  FocusNode? inputChassisFocusNode;
  TextEditingController? inputChassisTextController;
  String? Function(BuildContext, String?)? inputChassisTextControllerValidator;
  // Model for textInput component.
  late TextInputModel textInputModel3;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel3;
  // Model for textInput component.
  late TextInputModel textInputModel4;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel4;
  // Model for cta component.
  late CtaModel ctaModel5;
  // Model for cta component.
  late CtaModel ctaModel6;
  // Model for cta component.
  late CtaModel ctaModel7;
  // Model for OTPInputCopy component.
  late OTPInputCopyModel oTPInputCopyModel2;
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
  late CtaModel ctaModel8;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    ctaModel1 = createModel(context, () => CtaModel());
    ctaModel2 = createModel(context, () => CtaModel());
    ctaModel3 = createModel(context, () => CtaModel());
    oTPInputCopyModel1 = createModel(context, () => OTPInputCopyModel());
    ctaModel4 = createModel(context, () => CtaModel());
    textInputModel3 = createModel(context, () => TextInputModel());
    uploadImageModel3 = createModel(context, () => UploadImageModel());
    textInputModel4 = createModel(context, () => TextInputModel());
    uploadImageModel4 = createModel(context, () => UploadImageModel());
    ctaModel5 = createModel(context, () => CtaModel());
    ctaModel6 = createModel(context, () => CtaModel());
    ctaModel7 = createModel(context, () => CtaModel());
    oTPInputCopyModel2 = createModel(context, () => OTPInputCopyModel());
    ctaModel8 = createModel(context, () => CtaModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    textInputModel2.dispose();
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    ctaModel1.dispose();
    ctaModel2.dispose();
    ctaModel3.dispose();
    oTPInputCopyModel1.dispose();
    timerController1.dispose();
    ctaModel4.dispose();
    inputChassisFocusNode?.dispose();
    inputChassisTextController?.dispose();

    textInputModel3.dispose();
    uploadImageModel3.dispose();
    textInputModel4.dispose();
    uploadImageModel4.dispose();
    ctaModel5.dispose();
    ctaModel6.dispose();
    ctaModel7.dispose();
    oTPInputCopyModel2.dispose();
    timerController2.dispose();
    ctaModel8.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
