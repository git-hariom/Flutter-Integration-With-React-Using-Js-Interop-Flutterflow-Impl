import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/components/loader_widget.dart';
import '/components/o_t_p_input_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'customer_details_man_k_y_c_e_t_b_c_s_widget.dart'
    show CustomerDetailsManKYCETBCSWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDetailsManKYCETBCSModel
    extends FlutterFlowModel<CustomerDetailsManKYCETBCSWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Custom Action - getChkSumReqOtp] action in Button widget.
  String? reqOtpChkSm;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpRes;
  // Model for OTPInpuMob.
  late OTPInputCopyModel oTPInpuMobModel;
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
  late ButtonModel buttonModel2;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpMobileResp;
  // Model for Button component.
  late ButtonModel buttonModel3;
  // Stores action output result for [Custom Action - getChkSumVerifyOtp] action in Button widget.
  String? verifyOtpChksum;
  // Stores action output result for [Backend Call - API (verifyOtp )] action in Button widget.
  ApiCallResponse? verifyOtpMobRes;
  // Model for Button component.
  late ButtonModel buttonModel4;
  // Stores action output result for [Custom Action - getChkSumReqOtp] action in Button widget.
  String? reqOtpChkSmWeb;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestOtpWebRes;
  // Model for OTPInputWeb.
  late OTPInputCopyModel oTPInputWebModel;
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
  late ButtonModel buttonModel5;
  // Stores action output result for [Backend Call - API (RequestOtp)] action in Button widget.
  ApiCallResponse? requestotpResendWebRes;
  // Model for Button component.
  late ButtonModel buttonModel6;
  // Stores action output result for [Backend Call - API (verifyOtp )] action in Button widget.
  ApiCallResponse? verifyOtpWebRes;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    oTPInpuMobModel = createModel(context, () => OTPInputCopyModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    buttonModel4 = createModel(context, () => ButtonModel());
    oTPInputWebModel = createModel(context, () => OTPInputCopyModel());
    buttonModel5 = createModel(context, () => ButtonModel());
    buttonModel6 = createModel(context, () => ButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    oTPInpuMobModel.dispose();
    timerController1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
    buttonModel4.dispose();
    oTPInputWebModel.dispose();
    timerController2.dispose();
    buttonModel5.dispose();
    buttonModel6.dispose();
    loaderModel.dispose();
  }
}
