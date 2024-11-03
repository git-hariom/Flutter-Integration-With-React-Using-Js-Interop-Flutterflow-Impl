import '/components/check_box_widget.dart';
import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/otp_input_widget.dart';
import '/components/text_input_widget.dart';
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
import 'user_detailsmin_k_y_c_v_c4_nc_model.dart';
export 'user_detailsmin_k_y_c_v_c4_nc_model.dart';

class UserDetailsminKYCVC4NcWidget extends StatefulWidget {
  const UserDetailsminKYCVC4NcWidget({super.key});

  @override
  State<UserDetailsminKYCVC4NcWidget> createState() =>
      _UserDetailsminKYCVC4NcWidgetState();
}

class _UserDetailsminKYCVC4NcWidgetState
    extends State<UserDetailsminKYCVC4NcWidget> {
  late UserDetailsminKYCVC4NcModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDetailsminKYCVC4NcModel());

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
            height: double.infinity,
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                                model: _model.textInputModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Email Address',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Permanent Account Number (PAN)',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: '12  digit Aadhaar number',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Date of birth',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Gender',
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
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  address: 'Pre Field text',
                                  addresslabel:
                                      'Flat, House no, Buliding, Comatment',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  address: '605 -Noida ',
                                  addresslabel:
                                      'Area city, Street, Sector, Village',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  address: 'Hiranandi Garden',
                                  addresslabel: 'Landmark',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  address: '12345',
                                  addresslabel: 'PIN',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  address: 'Mumbai',
                                  addresslabel: 'City',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  address: 'Maharastha',
                                  addresslabel: 'State',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 32.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.ctaModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CtaWidget(
                                    title: 'Get OTP to Verify Aadhaar',
                                    width: 350.0,
                                    callback: (title) async {},
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 32.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.otpInputModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: OtpInputWidget(
                                    onOTPInputChange:
                                        (isOTPInputValid) async {},
                                  ),
                                ),
                              ),
                              Container(
                                width: 400.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Time left :',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'CustomInter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: FlutterFlowTimer(
                                              initialTime:
                                                  _model.timerInitialTimeMs1,
                                              getDisplayTime: (value) =>
                                                  StopWatchTimer.getDisplayTime(
                                                value,
                                                hours: false,
                                                milliSecond: false,
                                              ),
                                              controller:
                                                  _model.timerController1,
                                              updateStateInterval:
                                                  Duration(milliseconds: 1000),
                                              onChanged: (value, displayTime,
                                                  shouldUpdate) {
                                                _model.timerMilliseconds1 =
                                                    value;
                                                _model.timerValue1 =
                                                    displayTime;
                                                if (shouldUpdate)
                                                  safeSetState(() {});
                                              },
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                    Text(
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
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 32.0, 0.0, 0.0),
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 32.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('AddOnsminKYC');
                                  },
                                  child: wrapWithModel(
                                    model: _model.ctaModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CtaWidget(
                                      title: 'Verify Aadhar',
                                      width: 350.0,
                                      callback: (title) async {},
                                    ),
                                  ),
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
                          width: 1285.0,
                          decoration: BoxDecoration(
                            color: Color(0x4DFFFFFF),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              wrapWithModel(
                                                model: _model.textInputModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder: 'Email Address',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder:
                                                      'Permanent Account Number (PAN)',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel8,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder:
                                                      '12  digit Aadhaar number',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel9,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder: 'Date of birth',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel10,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder: 'Gender',
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 200.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.otpInputModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: OtpInputWidget(
                                                    onOTPInputChange:
                                                        (isOTPInputValid) async {},
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  30.0,
                                                                  0.0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: FFAppState()
                                                            .elivationValue,
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
                                                                      style: FlutterFlowTheme.of(
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
                                                                    FlutterFlowTimer(
                                                                      initialTime:
                                                                          _model
                                                                              .timerInitialTimeMs2,
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
                                                                          _model
                                                                              .timerController2,
                                                                      updateStateInterval:
                                                                          Duration(
                                                                              milliseconds: 1000),
                                                                      onChanged: (value,
                                                                          displayTime,
                                                                          shouldUpdate) {
                                                                        _model.timerMilliseconds2 =
                                                                            value;
                                                                        _model.timerValue2 =
                                                                            displayTime;
                                                                        if (shouldUpdate)
                                                                          safeSetState(
                                                                              () {});
                                                                      },
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
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
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                              'AddOnsminKYC');
                                                        },
                                                        child: wrapWithModel(
                                                          model:
                                                              _model.ctaModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: CtaWidget(
                                                            title:
                                                                'Verify Aadhar',
                                                            width: 250.0,
                                                            callback:
                                                                (title) async {},
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              wrapWithModel(
                                                model: _model.checkBoxModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CheckBoxWidget(
                                                  checkBoxTitle:
                                                      'My delivery address is same as my Aadhaar address',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel11,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder:
                                                      'Flat, House no, Building, Containment',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel12,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder:
                                                      'Area city, Street, Sector, Village',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel13,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder: 'Landmark',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel14,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder: 'PIN',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel15,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder: 'City',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.textInputModel16,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder: 'State',
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 32.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.ctaModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CtaWidget(
                                                    title:
                                                        'Get OTP to Verify Aadhaar',
                                                    width: 350.0,
                                                    callback: (title) async {},
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(SizedBox(height: 32.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
