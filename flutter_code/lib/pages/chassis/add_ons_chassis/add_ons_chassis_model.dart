import '/components/button_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/otp_input_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_ons_chassis_widget.dart' show AddOnsChassisWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddOnsChassisModel extends FlutterFlowModel<AddOnsChassisWidget> {
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Model for Button component.
  late ButtonModel buttonModel1;
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

  // Model for Button component.
  late ButtonModel buttonModel2;
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
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Model for Button component.
  late ButtonModel buttonModel3;
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

  // Model for Button component.
  late ButtonModel buttonModel4;

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
    buttonModel1 = createModel(context, () => ButtonModel());
    otpInputModel1 = createModel(context, () => OtpInputModel());
    buttonModel2 = createModel(context, () => ButtonModel());
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
    buttonModel3 = createModel(context, () => ButtonModel());
    otpInputModel2 = createModel(context, () => OtpInputModel());
    buttonModel4 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    buttonModel1.dispose();
    otpInputModel1.dispose();
    timerController1.dispose();
    buttonModel2.dispose();
    formTextReadOnlyModel7.dispose();
    formTextReadOnlyModel8.dispose();
    formTextReadOnlyModel9.dispose();
    formTextReadOnlyModel10.dispose();
    formTextReadOnlyModel11.dispose();
    formTextReadOnlyModel12.dispose();
    buttonModel3.dispose();
    otpInputModel2.dispose();
    timerController2.dispose();
    buttonModel4.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
