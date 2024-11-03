import '/backend/api_requests/api_calls.dart';
import '/components/address_input_widget.dart';
import '/components/button_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/loader_widget.dart';
import '/components/o_t_p_input_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_onsmin_k_y_c_widget.dart' show AddOnsminKYCWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddOnsminKYCModel extends FlutterFlowModel<AddOnsminKYCWidget> {
  ///  Local state fields for this page.

  bool? isOTPValid;

  bool? isTimerRunning;

  ///  State fields for stateful widgets in this page.

  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel1;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel3;
  // Model for AddressInput component.
  late AddressInputModel addressInputModel1;
  // Model for AddressInput component.
  late AddressInputModel addressInputModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Custom Action - getChkSumReqOtp] action in Button widget.
  String? reqOtpChkSum;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpResMobile;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Model for OTPInput component.
  late OTPInputModel oTPInputModel;
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

  // Model for Button component.
  late ButtonModel buttonModel3;
  // Stores action output result for [Custom Action - getChkSumReqOtp] action in Button widget.
  String? reqOtpresendChkSum;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpResMobilebutton;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpResWeb;
  // Model for Button component.
  late ButtonModel buttonModel4;
  // Stores action output result for [Custom Action - getChkSumVerifyOtp] action in Button widget.
  String? verifyOtpChksum;
  // Stores action output result for [Backend Call - API (verifyOtp )] action in Button widget.
  ApiCallResponse? verifyOtpMobRes;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel4;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel5;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel6;
  // Model for AddressInput component.
  late AddressInputModel addressInputModel3;
  // Model for AddressInput component.
  late AddressInputModel addressInputModel4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for Button component.
  late ButtonModel buttonModel5;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpRes;
  // Model for Button component.
  late ButtonModel buttonModel6;
  // Model for OTPInputAddOnsminWeb.
  late OTPInputModel oTPInputAddOnsminWebModel;
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

  // Model for Button component.
  late ButtonModel buttonModel7;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpResendbutton;
  // Model for Button component.
  late ButtonModel buttonModel8;
  // Stores action output result for [Backend Call - API (verifyOtp )] action in Button widget.
  ApiCallResponse? verifyOtpWebRes;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    formTextReadOnlyModel1 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel2 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel3 =
        createModel(context, () => FormTextReadOnlyModel());
    addressInputModel1 = createModel(context, () => AddressInputModel());
    addressInputModel2 = createModel(context, () => AddressInputModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    oTPInputModel = createModel(context, () => OTPInputModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    buttonModel4 = createModel(context, () => ButtonModel());
    formTextReadOnlyModel4 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel5 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel6 =
        createModel(context, () => FormTextReadOnlyModel());
    addressInputModel3 = createModel(context, () => AddressInputModel());
    addressInputModel4 = createModel(context, () => AddressInputModel());
    buttonModel5 = createModel(context, () => ButtonModel());
    buttonModel6 = createModel(context, () => ButtonModel());
    oTPInputAddOnsminWebModel = createModel(context, () => OTPInputModel());
    buttonModel7 = createModel(context, () => ButtonModel());
    buttonModel8 = createModel(context, () => ButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    addressInputModel1.dispose();
    addressInputModel2.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    oTPInputModel.dispose();
    timerController1.dispose();
    buttonModel3.dispose();
    buttonModel4.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    addressInputModel3.dispose();
    addressInputModel4.dispose();
    buttonModel5.dispose();
    buttonModel6.dispose();
    oTPInputAddOnsminWebModel.dispose();
    timerController2.dispose();
    buttonModel7.dispose();
    buttonModel8.dispose();
    loaderModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
