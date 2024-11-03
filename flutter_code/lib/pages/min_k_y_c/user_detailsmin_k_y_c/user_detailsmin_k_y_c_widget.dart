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
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_detailsmin_k_y_c_model.dart';
export 'user_detailsmin_k_y_c_model.dart';

class UserDetailsminKYCWidget extends StatefulWidget {
  const UserDetailsminKYCWidget({super.key});

  @override
  State<UserDetailsminKYCWidget> createState() =>
      _UserDetailsminKYCWidgetState();
}

class _UserDetailsminKYCWidgetState extends State<UserDetailsminKYCWidget> {
  late UserDetailsminKYCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDetailsminKYCModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'User Details',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'CustomInter',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE5CCE0), Color(0xFFFCF7D6)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Input customer details to proceed',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'CustomInter',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.emailInputModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: EmailInputWidget(
                                      placeholder: 'Email',
                                      validationCallback: (isValid) async {
                                        _model.isEmailValid = isValid;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.pANInputModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PANInputWidget(
                                      placeholder: 'PAN',
                                      validationCallback: (isValid) async {
                                        _model.isPANValid = isValid;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.aadhaarInputModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: AadhaarInputWidget(
                                      placeholder: '12 digit Aadhaar number',
                                      validationCallback: (isValid) async {
                                        _model.isAadhaarValid = isValid;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.dateofBirthModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: DateofBirthWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.genderInputModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: GenderInputWidget(
                                      label: 'Gender',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: wrapWithModel(
                                      model: _model.checkBoxModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CheckBoxWidget(
                                        checkBoxTitle:
                                            'My delivery address is same as my Aadhaar address',
                                      ),
                                    ),
                                  ),
                                  if (_model.checkBoxModel1.checkboxValue ==
                                      true)
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.formTextReadOnlyModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormTextReadOnlyWidget(
                                                address: 'Pre Field text',
                                                addresslabel:
                                                    'Flat, House no, Buliding, Comatment',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.formTextReadOnlyModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormTextReadOnlyWidget(
                                                address: '605 -Noida ',
                                                addresslabel:
                                                    'Area city, Street, Sector, Village',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.formTextReadOnlyModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormTextReadOnlyWidget(
                                                address: 'Hiranandi Garden',
                                                addresslabel: 'Landmark',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.formTextReadOnlyModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormTextReadOnlyWidget(
                                                address: '12345',
                                                addresslabel: 'PIN',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.formTextReadOnlyModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormTextReadOnlyWidget(
                                                address: 'Mumbai',
                                                addresslabel: 'City',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.formTextReadOnlyModel6,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FormTextReadOnlyWidget(
                                                address: 'Maharastha',
                                                addresslabel: 'State',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (valueOrDefault<bool>(
                                    _model.checkBoxModel2.checkboxValue ==
                                        false,
                                    true,
                                  ))
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.mobAddress1Model,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextInputWidget(
                                                placeholder:
                                                    'Flat, House no, Building, Company',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.mobAddress2Model,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextInputWidget(
                                                placeholder:
                                                    'Area city, street, Sector, Village',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.mobLandmarkModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextInputWidget(
                                                placeholder: 'Landmark',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.mobPinModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextInputWidget(
                                                placeholder: 'PIN',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.mobCityModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextInputWidget(
                                                placeholder: 'City',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.mobStateModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextInputWidget(
                                                placeholder: 'State',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  wrapWithModel(
                                    model: _model.buttonModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      title: 'Get OTP to Verify',
                                      width: 300.0,
                                      isDisabled: !((_model.isEmailValid == true) &&
                                          (_model.isPANValid == true) &&
                                          (_model.isAadhaarValid == true) &&
                                          ((_model.checkBoxModel1.checkboxValue == true) ||
                                              ((_model.mobPinModel.textController.text != null && _model.mobPinModel.textController.text != '') &&
                                                  (_model.mobAddress1Model.textController.text != null &&
                                                      _model
                                                              .mobAddress1Model
                                                              .textController
                                                              .text !=
                                                          '') &&
                                                  (_model.mobAddress2Model.textController.text != null &&
                                                      _model
                                                              .mobAddress2Model
                                                              .textController
                                                              .text !=
                                                          '') &&
                                                  (_model
                                                              .mobLandmarkModel
                                                              .textController
                                                              .text !=
                                                          null &&
                                                      _model
                                                              .mobLandmarkModel
                                                              .textController
                                                              .text !=
                                                          ''))) &&
                                          (_model.dateofBirthModel.datePicked !=
                                              null) &&
                                          (_model.genderInputModel1.genderValue != null &&
                                              _model.genderInputModel1.genderValue != '')),
                                      onButtonClick: () async {
                                        FFAppState().requestID =
                                            functions.getRequestId();
                                        safeSetState(() {});
                                        FFAppState().showLoader = true;
                                        safeSetState(() {});
                                        await actions.printLog(
                                          '${FFAppState().showLoader.toString()} ${getCurrentTimestamp.toString()}',
                                        );
                                        _model.initiateKYCResponseMob =
                                            await ETollFlutterflowGroup
                                                .initiateNKYCCall
                                                .call(
                                          emailId: _model.emailInputModel
                                              .textController.text,
                                          panNo: _model.pANInputModel
                                              .textController.text,
                                          aadharNo: _model.aadhaarInputModel
                                              .textController.text,
                                          entityId: FFAppState().entityId,
                                          source: FFAppState().source,
                                          createUser: FFAppState().createUser,
                                          journeyId: FFAppState().journeyId,
                                          address1: _model.mobAddress1Model
                                              .textController.text,
                                          address2: _model.mobAddress2Model
                                              .textController.text,
                                          street: _model.mobLandmarkModel
                                              .textController.text,
                                          city: _model
                                              .mobCityModel.textController.text,
                                          pincode: _model
                                              .mobPinModel.textController.text,
                                          state: _model.mobStateModel
                                              .textController.text,
                                          requestId: FFAppState().requestID,
                                          dob: dateTimeFormat(
                                              "dd/MM/yyyy",
                                              _model
                                                  .dateofBirthModel.datePicked),
                                        );

                                        if ((_model.initiateKYCResponseMob
                                                ?.succeeded ??
                                            true)) {
                                          if (ETollFlutterflowGroup
                                                  .initiateNKYCCall
                                                  .resCode(
                                                (_model.initiateKYCResponseMob
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '700') {
                                            FFAppState().getOTP1 = true;
                                            FFAppState().showLoader = false;
                                            safeSetState(() {});
                                            _model.timerController1
                                                .onStartTimer();
                                            await actions.printLog(
                                              '${FFAppState().showLoader.toString()} ${getCurrentTimestamp.toString()}',
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  ETollFlutterflowGroup
                                                      .initiateNKYCCall
                                                      .resMsg(
                                                    (_model.initiateKYCResponseMob
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            'CustomInter',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                              ),
                                            );
                                          } else {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              FFAppState()
                                                                  .ERROR),
                                                          content: Text(
                                                              ETollFlutterflowGroup
                                                                  .initiateNKYCCall
                                                                  .resMsg(
                                                            (_model.initiateKYCResponseMob
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: Text(
                                                                  'Cancel'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child: Text(
                                                                  'Confirm'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                            FFAppState().showLoader = false;
                                            safeSetState(() {});
                                            await actions.printLog(
                                              '${FFAppState().showLoader.toString()} ${getCurrentTimestamp.toString()}',
                                            );
                                          }
                                        } else {
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            FFAppState().ERROR),
                                                        content: Text((_model
                                                                .initiateKYCResponseMob
                                                                ?.exceptionMessage ??
                                                            '')),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                Text('Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child:
                                                                Text('Confirm'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          FFAppState().showLoader = false;
                                          safeSetState(() {});
                                          await actions.printLog(
                                            '${FFAppState().showLoader.toString()} ${getCurrentTimestamp.toString()}',
                                          );
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  if (FFAppState().getOTP1 == true)
                                    wrapWithModel(
                                      model: _model.oTPInputModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OTPInputWidget(
                                        placeholder:
                                            'Enter OTP sent to your mobile number registered with Aadhaar',
                                        validationCallback: (isValid) async {
                                          _model.isOTPValid = isValid;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  if (FFAppState().getOTP1 == true)
                                    Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Time left :',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'CustomInter',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: FlutterFlowTimer(
                                                    initialTime: _model
                                                        .timerInitialTimeMs1,
                                                    getDisplayTime: (value) =>
                                                        StopWatchTimer
                                                            .getDisplayTime(
                                                      value,
                                                      hours: false,
                                                      milliSecond: false,
                                                    ),
                                                    controller:
                                                        _model.timerController1,
                                                    updateStateInterval:
                                                        Duration(
                                                            milliseconds: 1000),
                                                    onChanged: (value,
                                                        displayTime,
                                                        shouldUpdate) {
                                                      _model.timerMilliseconds1 =
                                                          value;
                                                      _model.timerValue1 =
                                                          displayTime;
                                                      if (shouldUpdate)
                                                        safeSetState(() {});
                                                    },
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model.buttonModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ButtonWidget(
                                              title: 'Resend OTP',
                                              width: 120.0,
                                              background: Colors.transparent,
                                              titleColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              titleSize: 16.0,
                                              onButtonClick: () async {
                                                safeSetState(() {
                                                  _model.oTPInputModel
                                                      .textController
                                                      ?.clear();
                                                });
                                                FFAppState().showLoader = true;
                                                safeSetState(() {});
                                                _model.initiateKYCResponseMobResend =
                                                    await ETollFlutterflowGroup
                                                        .initiateNKYCCall
                                                        .call(
                                                  emailId: _model
                                                      .emailInputModel
                                                      .textController
                                                      .text,
                                                  panNo: _model.pANInputModel
                                                      .textController.text,
                                                  aadharNo: _model
                                                      .aadhaarInputModel
                                                      .textController
                                                      .text,
                                                  dob: dateTimeFormat(
                                                      "dd/MM/yyyy",
                                                      _model.dateofBirthModel
                                                          .datePicked),
                                                  entityId:
                                                      FFAppState().entityId,
                                                  source: FFAppState().source,
                                                  createUser:
                                                      FFAppState().createUser,
                                                  journeyId:
                                                      FFAppState().journeyId,
                                                  address1: _model
                                                      .mobAddress1Model
                                                      .textController
                                                      .text,
                                                  address2: _model
                                                      .mobAddress2Model
                                                      .textController
                                                      .text,
                                                  street: _model
                                                      .mobLandmarkModel
                                                      .textController
                                                      .text,
                                                  city: _model.mobCityModel
                                                      .textController.text,
                                                  pincode: _model.mobPinModel
                                                      .textController.text,
                                                  state: _model.mobStateModel
                                                      .textController.text,
                                                  requestId:
                                                      functions.getRequestId(),
                                                );

                                                if ((_model
                                                        .initiateKYCResponseMobResend
                                                        ?.succeeded ??
                                                    true)) {
                                                  if (ETollFlutterflowGroup
                                                          .initiateNKYCCall
                                                          .resCode(
                                                        (_model.initiateKYCResponseMobResend
                                                                ?.jsonBody ??
                                                            ''),
                                                      ) ==
                                                      '700') {
                                                    FFAppState().getOTP1 = true;
                                                    FFAppState().showLoader =
                                                        false;
                                                    safeSetState(() {});
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          ETollFlutterflowGroup
                                                              .initiateNKYCCall
                                                              .resMsg(
                                                            (_model.initiateKYCResponseMobResend
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'CustomInter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                      ),
                                                    );
                                                    _model
                                                        .timerController1.timer
                                                        .setPresetTime(
                                                            mSec: 100000,
                                                            add: false);
                                                    _model.timerController1
                                                        .onResetTimer();

                                                    _model.timerController1
                                                        .onStartTimer();
                                                  } else {
                                                    var confirmDialogResponse =
                                                        await showDialog<bool>(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      FFAppState()
                                                                          .ERROR),
                                                                  content: Text(
                                                                      ETollFlutterflowGroup
                                                                          .initiateNKYCCall
                                                                          .resMsg(
                                                                    (_model.initiateKYCResponseMob
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          false),
                                                                      child: Text(
                                                                          'Cancel'),
                                                                    ),
                                                                    TextButton(
                                                                      onPressed: () => Navigator.pop(
                                                                          alertDialogContext,
                                                                          true),
                                                                      child: Text(
                                                                          'Confirm'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ) ??
                                                            false;
                                                    FFAppState().showLoader =
                                                        false;
                                                    safeSetState(() {});
                                                  }
                                                } else {
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    FFAppState()
                                                                        .ERROR),
                                                                content: Text((_model
                                                                        .initiateKYCResponseMob
                                                                        ?.exceptionMessage ??
                                                                    '')),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: Text(
                                                                        'Cancel'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: Text(
                                                                        'Confirm'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  FFAppState().showLoader =
                                                      false;
                                                  safeSetState(() {});
                                                }

                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  Container(
                                    width: 400.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'By proceeding I allow IDFC FIRST Bank to use my Aadhaar to fetch KYC details from UIDAI, fetch CIBIL report from ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'CustomInter',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: 'TransUnion CIBIL',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'CustomInter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  ' EPFO details and give consent to the bank to contact me via Call, SMS, Email and WhatsApp. This consent overrides any registration for DNC/NDNC.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'CustomInter',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'CustomInter',
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      title: 'Verify Aadhaar',
                                      width: 300.0,
                                      isDisabled: FFAppState().getOTP1 == false,
                                      onButtonClick: () async {
                                        FFAppState().requestID =
                                            functions.getRequestId();
                                        safeSetState(() {});
                                        _model.verifyOtpChkSm =
                                            await actions.getChkSumVrfAdhrOtp(
                                          FFAppState().secureToken,
                                          FFAppState().requestID,
                                          FFAppState().journeyId,
                                          FFAppState().source,
                                          FFAppState().entityId,
                                          FFAppState().createUser,
                                          _model.oTPInputModel.textController
                                              .text,
                                        );
                                        FFAppState().showLoader = true;
                                        safeSetState(() {});
                                        await actions.printLog(
                                          '${FFAppState().showLoader.toString()} ${getCurrentTimestamp.toString()}',
                                        );
                                        _model.verifyOtpRes =
                                            await ETollFlutterflowGroup
                                                .verifyOtpAadharCall
                                                .call(
                                          entityId: FFAppState().entityId,
                                          source: FFAppState().source,
                                          createUser: FFAppState().createUser,
                                          journeyId: FFAppState().journeyId,
                                          otp: _model.oTPInputModel
                                              .textController.text,
                                          requestId: FFAppState().requestID,
                                          chkSm: _model.verifyOtpChkSm,
                                        );

                                        if ((_model.verifyOtpRes?.succeeded ??
                                            true)) {
                                          if (ETollFlutterflowGroup
                                                  .verifyOtpAadharCall
                                                  .resCode(
                                                (_model.verifyOtpRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '700') {
                                            FFAppState().custPermanentAddress =
                                                PermanentAddressStruct(
                                              address1: valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .pmAddress1(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                              address2: valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .pmAddress2(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                              street: valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .pmStreet(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                              city: valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .pmCity(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                              pincode: valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .pmPincode(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                              state: valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .pmState(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                            );
                                            FFAppState().vehicleDetails =
                                                VehicleStruct(
                                              vrn: valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .vrn(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                              isCommercial:
                                                  valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .commercialStatus(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                            );
                                            FFAppState().custDetails =
                                                CustomerDetailsStruct(
                                              customerName:
                                                  valueOrDefault<String>(
                                                ETollFlutterflowGroup
                                                    .verifyOtpAadharCall
                                                    .custName(
                                                  (_model.verifyOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                'NA',
                                              ),
                                              mobileNumber:
                                                  ETollFlutterflowGroup
                                                      .verifyOtpAadharCall
                                                      .custMob(
                                                (_model.verifyOtpRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              dob: ETollFlutterflowGroup
                                                  .verifyOtpAadharCall
                                                  .custDob(
                                                (_model.verifyOtpRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              posidexUcic: ETollFlutterflowGroup
                                                  .verifyOtpAadharCall
                                                  .ucicId(
                                                (_model.verifyOtpRes
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                            );
                                            FFAppState().showLoader = false;
                                            safeSetState(() {});
                                            await actions.printLog(
                                              '${FFAppState().showLoader.toString()} ${getCurrentTimestamp.toString()}',
                                            );

                                            context.goNamed('AddOnsminKYC');
                                          } else {
                                            FFAppState().showLoader = false;
                                            safeSetState(() {});
                                            await actions.printLog(
                                              '${FFAppState().showLoader.toString()}${getCurrentTimestamp.toString()}',
                                            );
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              FFAppState()
                                                                  .ERROR),
                                                          content: Text(
                                                              ETollFlutterflowGroup
                                                                  .verifyOtpAadharCall
                                                                  .resMsg(
                                                            (_model.verifyOtpRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      false),
                                                              child: Text(
                                                                  'Cancel'),
                                                            ),
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext,
                                                                      true),
                                                              child: Text(
                                                                  'Confirm'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ) ??
                                                    false;
                                          }
                                        } else {
                                          FFAppState().showLoader = false;
                                          safeSetState(() {});
                                          await actions.printLog(
                                            '${FFAppState().showLoader.toString()}${getCurrentTimestamp.toString()}',
                                          );
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            FFAppState().ERROR),
                                                        content: Text((_model
                                                                .verifyOtpRes
                                                                ?.exceptionMessage ??
                                                            '')),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                Text('Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child:
                                                                Text('Confirm'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Container(
                              width: 1344.0,
                              decoration: BoxDecoration(
                                color: Color(0x4DFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Input customer details to proceed',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'CustomInter',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Container(
                                            width: 1053.0,
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .emailInputWebModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              EmailInputWidget(
                                                            placeholder:
                                                                'Email address',
                                                            validationCallback:
                                                                (isValid) async {
                                                              _model.isEmailValid =
                                                                  isValid;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .pANInputWebModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: PANInputWidget(
                                                            placeholder: 'PAN',
                                                            validationCallback:
                                                                (isValid) async {
                                                              _model.isPANValid =
                                                                  isValid;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .aadhaarInputWebModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              AadhaarInputWidget(
                                                            placeholder:
                                                                '12 digit Aadhaar number',
                                                            validationCallback:
                                                                (isValid) async {
                                                              _model.isAadhaarValid =
                                                                  isValid;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .dateofBirthWebModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              DateofBirthWidget(),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .genderInputModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              GenderInputWidget(
                                                            label: 'Gender',
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .checkBoxModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child: CheckBoxWidget(
                                                            checkBoxTitle:
                                                                'My delivery address is same as my Aadhaar address',
                                                          ),
                                                        ),
                                                        if (FFAppState()
                                                                .getOTP1 ==
                                                            true)
                                                          wrapWithModel(
                                                            model: _model
                                                                .oTPInputWebModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                OTPInputWidget(
                                                              placeholder:
                                                                  'Enter OTP sent to your mobile number registered with Aadhaar',
                                                              validationCallback:
                                                                  (isValid) async {
                                                                _model.isOTPValid =
                                                                    isValid;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .getOTP1 ==
                                                            true)
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          30.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                'Time left ',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'CustomInter',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                              FlutterFlowTimer(
                                                                                initialTime: _model.timerInitialTimeMs2,
                                                                                getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                                                                                  value,
                                                                                  hours: false,
                                                                                  milliSecond: false,
                                                                                ),
                                                                                controller: _model.timerController2,
                                                                                updateStateInterval: Duration(milliseconds: 1000),
                                                                                onChanged: (value, displayTime, shouldUpdate) {
                                                                                  _model.timerMilliseconds2 = value;
                                                                                  _model.timerValue2 = displayTime;
                                                                                  if (shouldUpdate) safeSetState(() {});
                                                                                },
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'CustomInter',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.buttonModel4,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              ButtonWidget(
                                                                            title:
                                                                                'Resend OTP',
                                                                            width:
                                                                                120.0,
                                                                            background:
                                                                                Color(0x00E9E9E9),
                                                                            titleColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            titleSize:
                                                                                16.0,
                                                                            isDisabled:
                                                                                false,
                                                                            onButtonClick:
                                                                                () async {
                                                                              safeSetState(() {
                                                                                _model.oTPInputWebModel.textController?.clear();
                                                                              });
                                                                              FFAppState().showLoader = true;
                                                                              safeSetState(() {});
                                                                              _model.initiateKYCWebResend = await ETollFlutterflowGroup.initiateNKYCCall.call(
                                                                                entityId: FFAppState().entityId,
                                                                                source: FFAppState().source,
                                                                                createUser: FFAppState().createUser,
                                                                                journeyId: FFAppState().journeyId,
                                                                                emailId: _model.emailInputWebModel.textController.text,
                                                                                aadharNo: _model.aadhaarInputWebModel.textController.text,
                                                                                panNo: _model.pANInputWebModel.textController.text,
                                                                                dob: dateTimeFormat("dd/MM/yyyy", _model.dateofBirthWebModel.datePicked),
                                                                                address1: _model.houseNoFieldModel.textController.text,
                                                                                address2: _model.streetFieldModel.textController.text,
                                                                                street: _model.landMarkFieldModel.textController.text,
                                                                                city: _model.cityFieldModel.textController.text,
                                                                                pincode: _model.pinCodeFieldModel.textController.text,
                                                                                state: _model.stateFieldModel.textController.text,
                                                                                requestId: functions.getRequestId(),
                                                                              );

                                                                              if ((_model.initiateKYCWebResend?.succeeded ?? true)) {
                                                                                if (ETollFlutterflowGroup.initiateNKYCCall.resCode(
                                                                                      (_model.initiateKYCWebResend?.jsonBody ?? ''),
                                                                                    ) ==
                                                                                    '700') {
                                                                                  FFAppState().getOTP1 = true;
                                                                                  FFAppState().showLoader = false;
                                                                                  safeSetState(() {});
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        ETollFlutterflowGroup.initiateNKYCCall.resMsg(
                                                                                          (_model.initiateKYCWebResend?.jsonBody ?? ''),
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'CustomInter',
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                    ),
                                                                                  );
                                                                                  _model.timerController2.timer.setPresetTime(mSec: 100000, add: false);
                                                                                  _model.timerController2.onResetTimer();

                                                                                  _model.timerController2.onStartTimer();
                                                                                } else {
                                                                                  FFAppState().showLoader = false;
                                                                                  safeSetState(() {});
                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                        context: context,
                                                                                        builder: (alertDialogContext) {
                                                                                          return AlertDialog(
                                                                                            title: Text(FFAppState().ERROR),
                                                                                            content: Text(ETollFlutterflowGroup.initiateNKYCCall.resMsg(
                                                                                              (_model.initiateKYCWebResend?.jsonBody ?? ''),
                                                                                            )!),
                                                                                            actions: [
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                child: Text('Cancel'),
                                                                                              ),
                                                                                              TextButton(
                                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                child: Text('Confirm'),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      ) ??
                                                                                      false;
                                                                                }
                                                                              } else {
                                                                                FFAppState().showLoader = false;
                                                                                safeSetState(() {});
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          title: Text(FFAppState().ERROR),
                                                                                          content: Text((_model.initiateKYCWebResend?.exceptionMessage ?? '')),
                                                                                          actions: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                              child: Text('Cancel'),
                                                                                            ),
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                              child: Text('Confirm'),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ) ??
                                                                                    false;
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .buttonModel5,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      child:
                                                                          ButtonWidget(
                                                                        title:
                                                                            'Verify Aadhaar',
                                                                        width:
                                                                            250.0,
                                                                        onButtonClick:
                                                                            () async {
                                                                          FFAppState().requestID =
                                                                              functions.getRequestId();
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.verifyOtpChkSmWeb =
                                                                              await actions.getChkSumVrfAdhrOtp(
                                                                            FFAppState().secureToken,
                                                                            FFAppState().requestID,
                                                                            FFAppState().journeyId,
                                                                            FFAppState().source,
                                                                            FFAppState().entityId,
                                                                            FFAppState().createUser,
                                                                            _model.oTPInputWebModel.textController.text,
                                                                          );
                                                                          FFAppState().showLoader =
                                                                              true;
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.verifyOtpWebResp = await ETollFlutterflowGroup
                                                                              .verifyOtpAadharCall
                                                                              .call(
                                                                            entityId:
                                                                                FFAppState().entityId,
                                                                            source:
                                                                                FFAppState().source,
                                                                            createUser:
                                                                                FFAppState().createUser,
                                                                            journeyId:
                                                                                FFAppState().journeyId,
                                                                            otp:
                                                                                _model.oTPInputModel.textController.text,
                                                                            requestId:
                                                                                FFAppState().requestID,
                                                                            chkSm:
                                                                                _model.verifyOtpChkSmWeb,
                                                                          );

                                                                          if ((_model.verifyOtpWebResp?.succeeded ??
                                                                              true)) {
                                                                            if (ETollFlutterflowGroup.verifyOtpAadharCall.resCode(
                                                                                  (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                ) ==
                                                                                '700') {
                                                                              FFAppState().custPermanentAddress = PermanentAddressStruct(
                                                                                address1: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.pmAddress1(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                address2: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.pmAddress2(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                street: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.pmStreet(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                city: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.pmCity(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                pincode: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.pmPincode(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                state: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.pmState(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                              );
                                                                              FFAppState().vehicleDetails = VehicleStruct(
                                                                                vrn: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.vrn(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                isCommercial: ETollFlutterflowGroup.verifyOtpAadharCall.commercialStatus(
                                                                                  (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                ),
                                                                              );
                                                                              FFAppState().custDetails = CustomerDetailsStruct(
                                                                                customerName: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.custName(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                mobileNumber: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.custMob(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                dob: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.custDob(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                                posidexUcic: valueOrDefault<String>(
                                                                                  ETollFlutterflowGroup.verifyOtpAadharCall.ucicId(
                                                                                    (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                  ),
                                                                                  'NA',
                                                                                ),
                                                                              );
                                                                              FFAppState().showLoader = false;
                                                                              safeSetState(() {});

                                                                              context.goNamed('AddOnsminKYC');
                                                                            } else {
                                                                              FFAppState().showLoader = false;
                                                                              safeSetState(() {});
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text(FFAppState().ERROR),
                                                                                        content: Text(ETollFlutterflowGroup.verifyOtpAadharCall.resMsg(
                                                                                          (_model.verifyOtpWebResp?.jsonBody ?? ''),
                                                                                        )!),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                            child: Text('Cancel'),
                                                                                          ),
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                            child: Text('Confirm'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ) ??
                                                                                  false;
                                                                            }
                                                                          } else {
                                                                            FFAppState().showLoader =
                                                                                false;
                                                                            safeSetState(() {});
                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text(FFAppState().ERROR),
                                                                                      content: Text((_model.verifyOtpWebResp?.exceptionMessage ?? '')),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                          child: Text('Cancel'),
                                                                                        ),
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                          child: Text('Confirm'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                ) ??
                                                                                false;
                                                                          }

                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                      ].divide(SizedBox(
                                                          height: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        if (_model
                                                                .checkBoxModel2
                                                                .checkboxValue ==
                                                            true)
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .formTextReadOnlyModel7,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        FormTextReadOnlyWidget(
                                                                      address:
                                                                          'Flat, House no, Building, Company',
                                                                      addresslabel:
                                                                          'Flat, House no, Building, Company, Apartment',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .formTextReadOnlyModel8,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        FormTextReadOnlyWidget(
                                                                      address:
                                                                          'Area, City, Village',
                                                                      addresslabel:
                                                                          'Area, City, Village',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .formTextReadOnlyModel9,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        FormTextReadOnlyWidget(
                                                                      address:
                                                                          'Landmark',
                                                                      addresslabel:
                                                                          'Landmark',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .formTextReadOnlyModel10,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        FormTextReadOnlyWidget(
                                                                      address:
                                                                          'PIN',
                                                                      addresslabel:
                                                                          'PIN',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .formTextReadOnlyModel11,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        FormTextReadOnlyWidget(
                                                                      address:
                                                                          'City',
                                                                      addresslabel:
                                                                          'City',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .formTextReadOnlyModel12,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        FormTextReadOnlyWidget(
                                                                      address:
                                                                          'State',
                                                                      addresslabel:
                                                                          'State',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      16.0)),
                                                            ),
                                                          ),
                                                        if (valueOrDefault<
                                                            bool>(
                                                          _model.checkBoxModel2
                                                                  .checkboxValue ==
                                                              false,
                                                          true,
                                                        ))
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .houseNoFieldModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        TextInputWidget(
                                                                      placeholder:
                                                                          'Flat, House no, Building, Company',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .streetFieldModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        TextInputWidget(
                                                                      placeholder:
                                                                          'Area city, street, Sector, Village',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .landMarkFieldModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        TextInputWidget(
                                                                      placeholder:
                                                                          'Landmark',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .pinCodeFieldModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        TextInputWidget(
                                                                      placeholder:
                                                                          'PIN',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .cityFieldModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        TextInputWidget(
                                                                      placeholder:
                                                                          'City',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .stateFieldModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        TextInputWidget(
                                                                      placeholder:
                                                                          'State',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .buttonModel6,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  ButtonWidget(
                                                                title:
                                                                    'Get OTP to Verify Aadhaar',
                                                                width: 350.0,
                                                                isDisabled: !((_model.isEmailValid == true) &&
                                                                    (_model.isPANValid ==
                                                                        true) &&
                                                                    (_model.isAadhaarValid ==
                                                                        true) &&
                                                                    (_model.genderInputModel2.genderValue !=
                                                                            null &&
                                                                        _model.genderInputModel2.genderValue !=
                                                                            '') &&
                                                                    (_model.dateofBirthWebModel
                                                                            .datePicked !=
                                                                        null) &&
                                                                    ((_model.checkBoxModel2.checkboxValue ==
                                                                            true) ||
                                                                        ((_model.houseNoFieldModel.textController.text != null && _model.houseNoFieldModel.textController.text != '') &&
                                                                            (_model.streetFieldModel.textController.text != null &&
                                                                                _model.streetFieldModel.textController.text != '') &&
                                                                            (_model.pinCodeFieldModel.textController.text != null && _model.pinCodeFieldModel.textController.text != '') &&
                                                                            (_model.cityFieldModel.textController.text != null && _model.cityFieldModel.textController.text != '')))),
                                                                onButtonClick:
                                                                    () async {
                                                                  FFAppState()
                                                                          .requestID =
                                                                      functions
                                                                          .getRequestId();
                                                                  safeSetState(
                                                                      () {});
                                                                  FFAppState()
                                                                          .showLoader =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.initiateKYCWebRes =
                                                                      await ETollFlutterflowGroup
                                                                          .initiateNKYCCall
                                                                          .call(
                                                                    entityId:
                                                                        FFAppState()
                                                                            .entityId,
                                                                    source: FFAppState()
                                                                        .source,
                                                                    createUser:
                                                                        FFAppState()
                                                                            .createUser,
                                                                    journeyId:
                                                                        FFAppState()
                                                                            .journeyId,
                                                                    emailId: _model
                                                                        .emailInputWebModel
                                                                        .textController
                                                                        .text,
                                                                    aadharNo: _model
                                                                        .aadhaarInputWebModel
                                                                        .textController
                                                                        .text,
                                                                    panNo: _model
                                                                        .pANInputWebModel
                                                                        .textController
                                                                        .text,
                                                                    address1: _model
                                                                        .houseNoFieldModel
                                                                        .textController
                                                                        .text,
                                                                    address2: _model
                                                                        .streetFieldModel
                                                                        .textController
                                                                        .text,
                                                                    street: _model
                                                                        .landMarkFieldModel
                                                                        .textController
                                                                        .text,
                                                                    city: _model
                                                                        .cityFieldModel
                                                                        .textController
                                                                        .text,
                                                                    pincode: _model
                                                                        .pinCodeFieldModel
                                                                        .textController
                                                                        .text,
                                                                    state: _model
                                                                        .stateFieldModel
                                                                        .textController
                                                                        .text,
                                                                    requestId:
                                                                        functions
                                                                            .getRequestId(),
                                                                    dob: dateTimeFormat(
                                                                        "dd/MM/yyyy",
                                                                        _model
                                                                            .dateofBirthWebModel
                                                                            .datePicked),
                                                                  );

                                                                  if ((_model
                                                                          .initiateKYCWebRes
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    if (ETollFlutterflowGroup
                                                                            .initiateNKYCCall
                                                                            .resCode(
                                                                          (_model.initiateKYCWebRes?.jsonBody ??
                                                                              ''),
                                                                        ) ==
                                                                        '700') {
                                                                      FFAppState()
                                                                              .getOTP1 =
                                                                          true;
                                                                      FFAppState()
                                                                              .showLoader =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                      _model
                                                                          .timerController2
                                                                          .onStartTimer();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            ETollFlutterflowGroup.initiateNKYCCall.resMsg(
                                                                              (_model.initiateKYCWebRes?.jsonBody ?? ''),
                                                                            )!,
                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).success,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      var confirmDialogResponse = await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text(FFAppState().ERROR),
                                                                                content: Text(ETollFlutterflowGroup.initiateNKYCCall.resMsg(
                                                                                  (_model.initiateKYCWebRes?.jsonBody ?? ''),
                                                                                )!),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: Text('Cancel'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: Text('Confirm'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                      FFAppState()
                                                                              .showLoader =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  } else {
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text(FFAppState().ERROR),
                                                                                  content: Text((_model.initiateKYCWebRes?.exceptionMessage ?? '')),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                      child: Text('Cancel'),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                      child: Text('Confirm'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                    FFAppState()
                                                                            .showLoader =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  }

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 32.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                if (valueOrDefault<bool>(
                  FFAppState().showLoader,
                  false,
                ))
                  wrapWithModel(
                    model: _model.loaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: LoaderWidget(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
