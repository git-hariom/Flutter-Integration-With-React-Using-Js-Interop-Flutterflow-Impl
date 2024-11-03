import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/aadhaar_input_widget.dart';
import '/components/button_widget.dart';
import '/components/check_box_widget.dart';
import '/components/dateof_birth_widget.dart';
import '/components/email_input_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/gender_input_widget.dart';
import '/components/loader_widget.dart';
import '/components/o_t_p_input_widget.dart';
import '/components/p_a_n_input_widget.dart';
import '/components/text_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'user_detailsmin_k_y_c_widget.dart' show UserDetailsminKYCWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsminKYCModel extends FlutterFlowModel<UserDetailsminKYCWidget> {
  ///  Local state fields for this page.

  bool isValid = true;

  bool? isEmailValid;

  bool? isPANValid;

  bool? isAadhaarValid;

  bool? isOTPValid;

  ///  State fields for stateful widgets in this page.

  // Model for EmailInput component.
  late EmailInputModel emailInputModel;
  // Model for PANInput component.
  late PANInputModel pANInputModel;
  // Model for AadhaarInput component.
  late AadhaarInputModel aadhaarInputModel;
  // Model for DateofBirth component.
  late DateofBirthModel dateofBirthModel;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel1;
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
  // Model for mobAddress1.
  late TextInputModel mobAddress1Model;
  // Model for mobAddress2.
  late TextInputModel mobAddress2Model;
  // Model for mobLandmark.
  late TextInputModel mobLandmarkModel;
  // Model for mobPin.
  late TextInputModel mobPinModel;
  // Model for mobCity.
  late TextInputModel mobCityModel;
  // Model for mobState.
  late TextInputModel mobStateModel;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Backend Call - API (InitiateNKYC)] action in Button widget.
  ApiCallResponse? initiateKYCResponseMob;
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
  late ButtonModel buttonModel2;
  // Stores action output result for [Backend Call - API (InitiateNKYC)] action in Button widget.
  ApiCallResponse? initiateKYCResponseMobResend;
  // Model for Button component.
  late ButtonModel buttonModel3;
  // Stores action output result for [Custom Action - getChkSumVrfAdhrOtp] action in Button widget.
  String? verifyOtpChkSm;
  // Stores action output result for [Backend Call - API (verifyOtpAadhar)] action in Button widget.
  ApiCallResponse? verifyOtpRes;
  // Model for EmailInputWeb.
  late EmailInputModel emailInputWebModel;
  // Model for PANInputWeb.
  late PANInputModel pANInputWebModel;
  // Model for AadhaarInputWeb.
  late AadhaarInputModel aadhaarInputWebModel;
  // Model for DateofBirthWeb.
  late DateofBirthModel dateofBirthWebModel;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel2;
  // Model for checkBox component.
  late CheckBoxModel checkBoxModel2;
  // Model for OTPInputWeb.
  late OTPInputModel oTPInputWebModel;
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
  // Stores action output result for [Backend Call - API (InitiateNKYC)] action in Button widget.
  ApiCallResponse? initiateKYCWebResend;
  // Model for Button component.
  late ButtonModel buttonModel5;
  // Stores action output result for [Custom Action - getChkSumVrfAdhrOtp] action in Button widget.
  String? verifyOtpChkSmWeb;
  // Stores action output result for [Backend Call - API (verifyOtpAadhar)] action in Button widget.
  ApiCallResponse? verifyOtpWebResp;
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
  // Model for houseNoField.
  late TextInputModel houseNoFieldModel;
  // Model for streetField.
  late TextInputModel streetFieldModel;
  // Model for landMarkField.
  late TextInputModel landMarkFieldModel;
  // Model for pinCodeField.
  late TextInputModel pinCodeFieldModel;
  // Model for cityField.
  late TextInputModel cityFieldModel;
  // Model for stateField.
  late TextInputModel stateFieldModel;
  // Model for Button component.
  late ButtonModel buttonModel6;
  // Stores action output result for [Backend Call - API (InitiateNKYC)] action in Button widget.
  ApiCallResponse? initiateKYCWebRes;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    emailInputModel = createModel(context, () => EmailInputModel());
    pANInputModel = createModel(context, () => PANInputModel());
    aadhaarInputModel = createModel(context, () => AadhaarInputModel());
    dateofBirthModel = createModel(context, () => DateofBirthModel());
    genderInputModel1 = createModel(context, () => GenderInputModel());
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
    mobAddress1Model = createModel(context, () => TextInputModel());
    mobAddress2Model = createModel(context, () => TextInputModel());
    mobLandmarkModel = createModel(context, () => TextInputModel());
    mobPinModel = createModel(context, () => TextInputModel());
    mobCityModel = createModel(context, () => TextInputModel());
    mobStateModel = createModel(context, () => TextInputModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    oTPInputModel = createModel(context, () => OTPInputModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    emailInputWebModel = createModel(context, () => EmailInputModel());
    pANInputWebModel = createModel(context, () => PANInputModel());
    aadhaarInputWebModel = createModel(context, () => AadhaarInputModel());
    dateofBirthWebModel = createModel(context, () => DateofBirthModel());
    genderInputModel2 = createModel(context, () => GenderInputModel());
    checkBoxModel2 = createModel(context, () => CheckBoxModel());
    oTPInputWebModel = createModel(context, () => OTPInputModel());
    buttonModel4 = createModel(context, () => ButtonModel());
    buttonModel5 = createModel(context, () => ButtonModel());
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
    houseNoFieldModel = createModel(context, () => TextInputModel());
    streetFieldModel = createModel(context, () => TextInputModel());
    landMarkFieldModel = createModel(context, () => TextInputModel());
    pinCodeFieldModel = createModel(context, () => TextInputModel());
    cityFieldModel = createModel(context, () => TextInputModel());
    stateFieldModel = createModel(context, () => TextInputModel());
    buttonModel6 = createModel(context, () => ButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    emailInputModel.dispose();
    pANInputModel.dispose();
    aadhaarInputModel.dispose();
    dateofBirthModel.dispose();
    genderInputModel1.dispose();
    checkBoxModel1.dispose();
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    mobAddress1Model.dispose();
    mobAddress2Model.dispose();
    mobLandmarkModel.dispose();
    mobPinModel.dispose();
    mobCityModel.dispose();
    mobStateModel.dispose();
    buttonModel1.dispose();
    oTPInputModel.dispose();
    timerController1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
    emailInputWebModel.dispose();
    pANInputWebModel.dispose();
    aadhaarInputWebModel.dispose();
    dateofBirthWebModel.dispose();
    genderInputModel2.dispose();
    checkBoxModel2.dispose();
    oTPInputWebModel.dispose();
    timerController2.dispose();
    buttonModel4.dispose();
    buttonModel5.dispose();
    formTextReadOnlyModel7.dispose();
    formTextReadOnlyModel8.dispose();
    formTextReadOnlyModel9.dispose();
    formTextReadOnlyModel10.dispose();
    formTextReadOnlyModel11.dispose();
    formTextReadOnlyModel12.dispose();
    houseNoFieldModel.dispose();
    streetFieldModel.dispose();
    landMarkFieldModel.dispose();
    pinCodeFieldModel.dispose();
    cityFieldModel.dispose();
    stateFieldModel.dispose();
    buttonModel6.dispose();
    loaderModel.dispose();
  }
}
