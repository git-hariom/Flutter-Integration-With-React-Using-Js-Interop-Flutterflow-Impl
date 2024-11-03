import '/components/check_box_widget.dart';
import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/otp_input_widget.dart';
import '/components/text_input_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manual_k_y_c_model.dart';
export 'manual_k_y_c_model.dart';

class ManualKYCWidget extends StatefulWidget {
  const ManualKYCWidget({super.key});

  @override
  State<ManualKYCWidget> createState() => _ManualKYCWidgetState();
}

class _ManualKYCWidgetState extends State<ManualKYCWidget> {
  late ManualKYCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManualKYCModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Customer Details',
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
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
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Get an IDFC FIRST Bank FASTag now!',
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
                                  placeholder: 'Mobile Number',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder:
                                      'Name as per entity/proprietor PAN',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder:
                                      'Date of incorporation as per PAN',
                                ),
                              ),
                              Container(
                                width: 400.0,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 32.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.ctaModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CtaWidget(
                                      title: 'Generate OTP',
                                      width: 250.0,
                                      isDisabled: false,
                                      callback: (title) async {},
                                    ),
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.otpInputModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: OtpInputWidget(
                                  onOTPInputChange: (isOTPInputValid) async {},
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Time left',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'CustomInter',
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: FlutterFlowTimer(
                                            initialTime:
                                                _model.timerInitialTimeMs1,
                                            getDisplayTime: (value) =>
                                                StopWatchTimer.getDisplayTime(
                                              value,
                                              hours: false,
                                              milliSecond: false,
                                            ),
                                            controller: _model.timerController1,
                                            updateStateInterval:
                                                Duration(milliseconds: 1000),
                                            onChanged: (value, displayTime,
                                                shouldUpdate) {
                                              _model.timerMilliseconds1 = value;
                                              _model.timerValue1 = displayTime;
                                              if (shouldUpdate)
                                                safeSetState(() {});
                                            },
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
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
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 30.0, 0.0),
                                      child: Text(
                                        'Resend OTP',
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
                                    ),
                                  ),
                                ],
                              ),
                              wrapWithModel(
                                model: _model.ctaModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: CtaWidget(
                                  title: 'Confirmed and proceed',
                                  width: 400.0,
                                  isDisabled: false,
                                  callback: (title) async {},
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Input general and contact person details',
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
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'Name as per PAN',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'Date of incorporation',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'PAN Number',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Name of the contact person',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Email ID',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'CIN / TIN (Optional)',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'TAN (Optional)',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Nature of business (Optional)',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textInputModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Designation',
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Please input permanent address ',
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
                                model: _model.formTextReadOnlyModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'Pre-filled text field',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel:
                                      'Area, City, Street, Sector, Village',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'Landmark',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'PIN',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'City',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'State',
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'Please input delivery address',
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
                                model: _model.checkBoxModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: CheckBoxWidget(
                                  checkBoxTitle:
                                      'My delivery address is same as my Aadhaar address',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'Pre-filled text field',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel:
                                      'Area, City, Street, Sector, Village',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'Landmark',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'PIN',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'City',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.formTextReadOnlyModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  addresslabel: 'State',
                                ),
                              ),
                              Container(
                                width: 400.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Text(
                                        'Select entity type to proceed',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'CustomInter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FlutterFlowRadioButton(
                                            options: [
                                              'Partnership',
                                              'Limited Liability Partnership(LLP)',
                                              'Company(Ltd and Pvt Ltd)',
                                              'Sole Proprietorship'
                                            ].toList(),
                                            onChanged: (val) =>
                                                safeSetState(() {}),
                                            controller: _model
                                                    .radioButtonValueController1 ??=
                                                FormFieldController<String>(
                                                    'Sole Proprietorship'),
                                            optionHeight: 32.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'CustomInter',
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            textPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            buttonPosition:
                                                RadioButtonPosition.left,
                                            direction: Axis.horizontal,
                                            radioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            toggleable: false,
                                            horizontalAlignment:
                                                WrapAlignment.start,
                                            verticalAlignment:
                                                WrapCrossAlignment.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 400.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.ctaModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CtaWidget(
                                        title: 'Proceed',
                                        width: 200.0,
                                        isDisabled: false,
                                        callback: (title) async {},
                                      ),
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 32.0, 0.0, 0.0),
                                child: Text(
                                  'Please enter customer details',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'CustomInter',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 32.0, 0.0, 0.0),
                                child: Container(
                                  width: 1053.0,
                                  decoration: BoxDecoration(),
                                  child: Form(
                                    key: _model.formKey1,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel10,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'Mobile Number',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel11,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'Date of incorporation as per PAN',
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 100.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.otpInputModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: OtpInputWidget(
                                                      onOTPInputChange:
                                                          (isOTPInputValid) async {},
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 500.0,
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
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
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Time left:',
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
                                                                            milliseconds:
                                                                                1000),
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
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        100.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context.pushNamed(
                                                                    'ActivateTagminKYC');
                                                              },
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .ctaModel4,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    CtaWidget(
                                                                  title:
                                                                      'Verify Aadhar',
                                                                  width: 200.0,
                                                                  isDisabled:
                                                                      false,
                                                                  callback:
                                                                      (title) async {},
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel12,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'Name as per PAN',
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 146.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model.ctaModel5,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CtaWidget(
                                                      title: 'Generate OTP',
                                                      width: 369.0,
                                                      isDisabled: false,
                                                      callback:
                                                          (title) async {},
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
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 32.0, 0.0, 32.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x4D57636C),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 32.0, 0.0, 0.0),
                                child: Container(
                                  width: 1053.0,
                                  decoration: BoxDecoration(),
                                  child: Form(
                                    key: _model.formKey3,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel16,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel:
                                                        'Name as per PAN',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel17,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel:
                                                        'Date of incorporation',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel18,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'PAN Number',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel13,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'Name of the contact person',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel14,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder: 'Email ID',
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
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel15,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'CIN / TIN (Optional)',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel16,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'TAN (Optional)',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel17,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'Nature of business (Optional)',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.textInputModel18,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder: 'Designation',
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 32.0, 0.0, 0.0),
                                child: Container(
                                  width: 1053.0,
                                  decoration: BoxDecoration(),
                                  child: Form(
                                    key: _model.formKey2,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 32.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Please input permanent address ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel19,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel:
                                                        'Pre-filled text field',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel20,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel:
                                                        'Area, City, Street, Sector, Village',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel21,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'Landmark',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel22,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'PIN',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel23,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'City',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel24,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'State',
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
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(50.0,
                                                                32.0, 0.0, 0.0),
                                                    child: Text(
                                                      'Please input permanent address ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineMedium
                                                          .override(
                                                            fontFamily:
                                                                'CustomInter',
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.checkBoxModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CheckBoxWidget(
                                                    checkBoxTitle:
                                                        'My delivery address is same as my permanent address.',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel25,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel:
                                                        'Pre-filled text field',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel26,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel:
                                                        'Area, City, Street, Sector, Village',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel27,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'Landmark',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel28,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'PIN',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel29,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'City',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel30,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    addresslabel: 'State',
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 32.0, 0.0, 0.0),
                                child: Text(
                                  'Select entity type to proceed',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'CustomInter',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 32.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Partnership',
                                          'Limited Liability Partnership(LLP)',
                                          'Company(Ltd and Pvt Ltd)',
                                          'Sole Proprietorship'
                                        ].toList(),
                                        onChanged: (val) => safeSetState(() {}),
                                        controller: _model
                                                .radioButtonValueController2 ??=
                                            FormFieldController<String>(
                                                'Sole Proprietorship'),
                                        optionHeight: 32.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'CustomInter',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 32.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.horizontal,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 20.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 0.0, 0.0, 32.0),
                                child: Container(
                                  width: 1053.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        32.0, 32.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context
                                                .pushNamed('UserDetailsminKYC');
                                          },
                                          child: wrapWithModel(
                                            model: _model.ctaModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CtaWidget(
                                              title: 'Proceed',
                                              width: 281.0,
                                              callback: (title) async {},
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
