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
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_details_biometric_model.dart';
export 'user_details_biometric_model.dart';

class UserDetailsBiometricWidget extends StatefulWidget {
  const UserDetailsBiometricWidget({super.key});

  @override
  State<UserDetailsBiometricWidget> createState() =>
      _UserDetailsBiometricWidgetState();
}

class _UserDetailsBiometricWidgetState
    extends State<UserDetailsBiometricWidget> {
  late UserDetailsBiometricModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDetailsBiometricModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      100.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15.0,
                                                                15.0,
                                                                15.0,
                                                                15.0),
                                                    child: Text(
                                                      'Input Customers details to proceed.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'CustomInter',
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .textInputModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TextInputWidget(
                                                        placeholder:
                                                            'Email Address',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .textInputModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TextInputWidget(
                                                        placeholder:
                                                            'Permanent Account Number (PAN)',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .textInputModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TextInputWidget(
                                                        placeholder:
                                                            '12  digit Aadhaar number',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .textInputModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TextInputWidget(
                                                        placeholder:
                                                            'Date of birth',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .textInputModel5,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TextInputWidget(
                                                        placeholder: 'Gender',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .genderInputModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: GenderInputWidget(
                                                        label:
                                                            'Gross anual income in ₹',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .genderInputModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: GenderInputWidget(
                                                        label:
                                                            'Emloyement type',
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0,
                                                                80.0, 0.0, 0.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'An OTP has been sent to',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' customer’s mobile number.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          )
                                                        ],
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.otpInputModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: OtpInputWidget(
                                                        onOTPInputChange:
                                                            (isOTPInputValid) async {},
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      30.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Time left ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'CustomInter',
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                      FlutterFlowTimer(
                                                                        initialTime:
                                                                            _model.timerInitialTimeMs1,
                                                                        getDisplayTime:
                                                                            (value) =>
                                                                                StopWatchTimer.getDisplayTime(
                                                                          value,
                                                                          hours:
                                                                              false,
                                                                          milliSecond:
                                                                              false,
                                                                        ),
                                                                        controller:
                                                                            _model.timerController1,
                                                                        updateStateInterval:
                                                                            Duration(milliseconds: 1000),
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
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'CustomInter',
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Resend OTP',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'CustomInter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .ctaModel1,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child: CtaWidget(
                                                                title:
                                                                    'Verify Aadhar',
                                                                width: 250.0,
                                                                titleSize: 20.0,
                                                                callback:
                                                                    (title) async {},
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 60.0, 110.0, 15.0),
                                          child: wrapWithModel(
                                            model: _model.checkBoxModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            updateOnChange: true,
                                            child: CheckBoxWidget(
                                              checkBoxTitle:
                                                  'My delivery address  is same as my Aadhaar address.',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.5,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (valueOrDefault<bool>(
                                                _model.checkBoxModel1
                                                        .checkboxValue ==
                                                    false,
                                                false,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 100.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .textInputModel6,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                TextInputWidget(
                                                              placeholder:
                                                                  'Flat, House no, Buliding, Company, Apartment',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .textInputModel7,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                TextInputWidget(
                                                              placeholder:
                                                                  'Area, City, Village',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .textInputModel8,
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
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .textInputModel9,
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
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .textInputModel10,
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
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .textInputModel11,
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
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .ctaModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child: CtaWidget(
                                                              title:
                                                                  'Capture Biometric',
                                                              width: 390.0,
                                                              titleSize: 20.0,
                                                              callback:
                                                                  (title) async {},
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if (valueOrDefault<bool>(
                                                _model.checkBoxModel1
                                                        .checkboxValue ==
                                                    true,
                                                true,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 100.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .formTextReadOnlyModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                FormTextReadOnlyWidget(
                                                              addresslabel:
                                                                  'Flat, House no, Building, Company, Apartment',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .formTextReadOnlyModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                FormTextReadOnlyWidget(
                                                              addresslabel:
                                                                  'Area, City, Village',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .formTextReadOnlyModel3,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                FormTextReadOnlyWidget(
                                                              addresslabel:
                                                                  'Landmark',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .formTextReadOnlyModel4,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                FormTextReadOnlyWidget(
                                                              addresslabel:
                                                                  'PIN',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .formTextReadOnlyModel5,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                FormTextReadOnlyWidget(
                                                              addresslabel:
                                                                  'City',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .formTextReadOnlyModel6,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                FormTextReadOnlyWidget(
                                                              addresslabel:
                                                                  'State',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  15.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .ctaModel3,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child: CtaWidget(
                                                              title:
                                                                  'Capture Biometric',
                                                              width: 390.0,
                                                              titleSize: 20.0,
                                                              callback:
                                                                  (title) async {},
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 15.0),
                            child: Text(
                              'Input Customers details to proceed.',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'CustomInter',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.textInputModel12,
                              updateCallback: () => safeSetState(() {}),
                              child: TextInputWidget(
                                placeholder: 'Email Address',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.textInputModel13,
                              updateCallback: () => safeSetState(() {}),
                              child: TextInputWidget(
                                placeholder: 'Permanent Account Number (PAN)',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.textInputModel14,
                              updateCallback: () => safeSetState(() {}),
                              child: TextInputWidget(
                                placeholder: '12  digit Aadhaar number',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.textInputModel15,
                              updateCallback: () => safeSetState(() {}),
                              child: TextInputWidget(
                                placeholder: 'Date of birth',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.textInputModel16,
                              updateCallback: () => safeSetState(() {}),
                              child: TextInputWidget(
                                placeholder: 'Gender',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.genderInputModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: GenderInputWidget(
                                label: 'Gross anual income in ₹',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.genderInputModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: GenderInputWidget(
                                label: 'Emloyment type',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.uploadImageModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: UploadImageWidget(
                                title: 'Upload PAN',
                                callback: (base64Op) async {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.uploadImageModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: UploadImageWidget(
                                title: 'Aadhar Front',
                                callback: (base64Op) async {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.uploadImageModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: UploadImageWidget(
                                title: 'Aadhar back',
                                callback: (base64Op) async {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.checkBoxModel2,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: CheckBoxWidget(
                                checkBoxTitle:
                                    'My delivery address is same as my Aadhaar address',
                              ),
                            ),
                          ),
                          if (_model.checkBoxModel2.checkboxValue == false)
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.textInputModel17,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextInputWidget(
                                        placeholder:
                                            'Flat, House no, Buliding, Company, Apartment',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.textInputModel18,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextInputWidget(
                                        placeholder:
                                            'Area city, Street, Sector, Village',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.textInputModel19,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextInputWidget(
                                        placeholder: 'Landmark',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.textInputModel20,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextInputWidget(
                                        placeholder: 'PIN',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.textInputModel21,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextInputWidget(
                                        placeholder: 'City',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.textInputModel22,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextInputWidget(
                                        placeholder: 'State',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (valueOrDefault<bool>(
                            _model.checkBoxModel2.checkboxValue == true,
                            true,
                          ))
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.formTextReadOnlyModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormTextReadOnlyWidget(
                                        addresslabel:
                                            'Flat, House no, Building, Company, Apartment',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.formTextReadOnlyModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormTextReadOnlyWidget(
                                        addresslabel:
                                            'Area city, Street, Sector, Village ',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.formTextReadOnlyModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormTextReadOnlyWidget(
                                        addresslabel: 'Landmark',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.formTextReadOnlyModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormTextReadOnlyWidget(
                                        addresslabel: 'PIN',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.formTextReadOnlyModel11,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormTextReadOnlyWidget(
                                        addresslabel: 'City',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: wrapWithModel(
                                      model: _model.formTextReadOnlyModel12,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormTextReadOnlyWidget(
                                        addresslabel: 'State',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'An OTP has been sent to',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'CustomInter',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' customer’s mobile number.',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'CustomInter',
                                          fontSize: 20.0,
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
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.otpInputModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: OtpInputWidget(
                                onOTPInputChange: (isOTPInputValid) async {},
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Text(
                                      'Time left ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'CustomInter',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: FlutterFlowTimer(
                                      initialTime: _model.timerInitialTimeMs2,
                                      getDisplayTime: (value) =>
                                          StopWatchTimer.getDisplayTime(
                                        value,
                                        hours: false,
                                        milliSecond: false,
                                      ),
                                      controller: _model.timerController2,
                                      updateStateInterval:
                                          Duration(milliseconds: 1000),
                                      onChanged:
                                          (value, displayTime, shouldUpdate) {
                                        _model.timerMilliseconds2 = value;
                                        _model.timerValue2 = displayTime;
                                        if (shouldUpdate) safeSetState(() {});
                                      },
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'CustomInter',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 5.0, 15.0, 15.0),
                              child: Text(
                                'Resend OTP',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'CustomInter',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.ctaModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: CtaWidget(
                                title: ' Verify Aadhaar',
                                width: 350.0,
                                callback: (title) async {},
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'By proceeding I allow IDFC FIRST Bank to use my Aadhaar to fetch KYC details from UIDAI, fetch CIBIL report from ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'CustomInter',
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text: 'TransUnion CIBIL',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'CustomInter',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' EPFO details and give consent to the bank to contact me via Call, SMS, Email and WhatsApp. This consent overrides any registration for DNC/NDNC.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'CustomInter',
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
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.ctaModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: CtaWidget(
                                  title: 'Capture Biometric',
                                  width: 350.0,
                                  callback: (title) async {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
