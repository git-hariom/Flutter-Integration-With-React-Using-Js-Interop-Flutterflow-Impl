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
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_details_man_k_y_c_e_t_b_c_s_model.dart';
export 'customer_details_man_k_y_c_e_t_b_c_s_model.dart';

class CustomerDetailsManKYCETBCSWidget extends StatefulWidget {
  const CustomerDetailsManKYCETBCSWidget({super.key});

  @override
  State<CustomerDetailsManKYCETBCSWidget> createState() =>
      _CustomerDetailsManKYCETBCSWidgetState();
}

class _CustomerDetailsManKYCETBCSWidgetState
    extends State<CustomerDetailsManKYCETBCSWidget> {
  late CustomerDetailsManKYCETBCSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerDetailsManKYCETBCSModel());

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
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFCF7D6), Color(0xFFE5CCE0)],
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                        Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width: 400.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, -1.0),
                                                    child: Text(
                                                      'Refresh',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'CustomInter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Select a customer to proceed',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ],
                                              ),

                                              // This page is a deminstration for the usage of the ListViewSelectable component.
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 260.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                width: 110.0,
                                                                height: 45.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'CUSTOMERID',
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
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Container(
                                                                width: 120.0,
                                                                height: 45.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'CUSTOMERNAME',
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
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Builder(
                                                            builder: (context) {
                                                              final customerList =
                                                                  FFAppState()
                                                                      .exstingCutomerList
                                                                      .toList();

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    customerList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        customerListIndex) {
                                                                  final customerListItem =
                                                                      customerList[
                                                                          customerListIndex];
                                                                  return InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      FFAppState()
                                                                              .selectedCustomerName =
                                                                          customerListItem
                                                                              .name;
                                                                      FFAppState()
                                                                              .selectedCustomerID =
                                                                          customerListItem
                                                                              .custId;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                110.0,
                                                                            height:
                                                                                45.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  customerListItem.custId,
                                                                                  'NA',
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'CustomInter',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              120.0,
                                                                          height:
                                                                              45.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                customerListItem.name,
                                                                                'NA',
                                                                              ),
                                                                              maxLines: 3,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'CustomInter',
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            FFAppState()
                                                                .selectedCustomerName,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            FFAppState()
                                                                .selectedCustomerID,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 20.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.buttonModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        title: 'Generate OTP',
                                        width: 200.0,
                                        isDisabled: false,
                                        onButtonClick: () async {
                                          FFAppState().showLoader = true;
                                          FFAppState().requestID =
                                              functions.getRequestId();
                                          safeSetState(() {});
                                          _model.reqOtpChkSm =
                                              await actions.getChkSumReqOtp(
                                            FFAppState().bearerToken,
                                            FFAppState().requestID,
                                            FFAppState().source,
                                            FFAppState().entityId,
                                            FFAppState().createUser,
                                            FFAppState().custDetails.customerID,
                                            FFAppState()
                                                .dedupeStatusVehicleDtls
                                                .vehicleRegNo,
                                            'ETBNEWTAG',
                                            'N',
                                            'N',
                                            'N',
                                          );
                                          _model.requestOtpRes =
                                              await ETollFlutterflowGroup
                                                  .requestOtpCall
                                                  .call(
                                            entityId: FFAppState().entityId,
                                            source: FFAppState().source,
                                            requestId: functions.getRequestId(),
                                            createUser: FFAppState().createUser,
                                            customerId: FFAppState()
                                                .custDetails
                                                .customerID,
                                            vrn: FFAppState()
                                                .dedupeStatusVehicleDtls
                                                .vehicleRegNo,
                                            action: 'ETBNEWTAG',
                                          );

                                          if ((_model
                                                  .requestOtpRes?.succeeded ??
                                              true)) {
                                            if (ETollFlutterflowGroup
                                                    .requestOtpCall
                                                    .resCode(
                                                  (_model.requestOtpRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                '700') {
                                              FFAppState().otpId = _model
                                                  .oTPInpuMobModel
                                                  .textController
                                                  .text;
                                              FFAppState().showLoader = false;
                                              safeSetState(() {});
                                              FFAppState().getOTP2 = true;
                                              safeSetState(() {});
                                              _model.timerController1
                                                  .onStartTimer();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    ETollFlutterflowGroup
                                                        .requestOtpCall
                                                        .resMsg(
                                                      (_model.requestOtpRes
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
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .success,
                                                ),
                                              );
                                            } else {
                                              FFAppState().showLoader = false;
                                              safeSetState(() {});
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
                                                                    .requestOtpCall
                                                                    .resMsg(
                                                              (_model.requestOtpRes
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
                                                                  .requestOtpRes
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
                                          }

                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                if (FFAppState().getOTP2 == true)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.oTPInpuMobModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OTPInputCopyWidget(
                                        onOTPInputChange: (isOTPInputValid,
                                            testString) async {},
                                      ),
                                    ),
                                  ),
                                if (FFAppState().getOTP2 == true)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
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
                                              isDisabled: false,
                                              onButtonClick: () async {
                                                _model.requestOtpMobileResp =
                                                    await ETollFlutterflowGroup
                                                        .requestOtpCall
                                                        .call(
                                                  entityId:
                                                      FFAppState().entityId,
                                                  source: FFAppState().source,
                                                  requestId:
                                                      functions.getRequestId(),
                                                  createUser:
                                                      FFAppState().createUser,
                                                  customerId: FFAppState()
                                                      .custDetails
                                                      .customerID,
                                                  vrn: FFAppState()
                                                      .dedupeStatusVehicleDtls
                                                      .vehicleRegNo,
                                                );

                                                FFAppState().showLoader = true;
                                                safeSetState(() {});
                                                if ((_model.requestOtpMobileResp
                                                        ?.succeeded ??
                                                    true)) {
                                                  if (ETollFlutterflowGroup
                                                          .requestOtpCall
                                                          .resCode(
                                                        (_model.requestOtpMobileResp
                                                                ?.jsonBody ??
                                                            ''),
                                                      ) ==
                                                      '700') {
                                                    FFAppState().otpId = _model
                                                        .oTPInpuMobModel
                                                        .textController
                                                        .text;
                                                    FFAppState().showLoader =
                                                        false;
                                                    safeSetState(() {});
                                                    FFAppState().getOTP2 = true;
                                                    safeSetState(() {});
                                                    _model
                                                        .timerController1.timer
                                                        .setPresetTime(
                                                            mSec: 100000,
                                                            add: false);
                                                    _model.timerController1
                                                        .onResetTimer();

                                                    _model.timerController1
                                                        .onStartTimer();
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          ETollFlutterflowGroup
                                                              .requestOtpCall
                                                              .resMsg(
                                                            (_model.requestOtpMobileResp
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
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                      ),
                                                    );
                                                  } else {
                                                    FFAppState().showLoader =
                                                        false;
                                                    safeSetState(() {});
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
                                                                          .requestOtpCall
                                                                          .resMsg(
                                                                    (_model.requestOtpMobileResp
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
                                                  }
                                                } else {
                                                  FFAppState().showLoader =
                                                      false;
                                                  safeSetState(() {});
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
                                                                        .requestOtpMobileResp
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
                                                }

                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (FFAppState().getOTP2 == true)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.buttonModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        title: 'Verify OTP',
                                        width: 200.0,
                                        isDisabled:
                                            FFAppState().getOTP2 == false,
                                        onButtonClick: () async {
                                          FFAppState().showLoader = true;
                                          FFAppState().requestID =
                                              functions.getRequestId();
                                          safeSetState(() {});
                                          _model.verifyOtpChksum =
                                              await actions.getChkSumVerifyOtp(
                                            FFAppState().secureToken,
                                            FFAppState().requestID,
                                            FFAppState().source,
                                            FFAppState().entityId,
                                            FFAppState().createUser,
                                            _model.oTPInpuMobModel
                                                .textController.text,
                                            FFAppState().otpId,
                                            FFAppState().otpAction,
                                          );
                                          _model.verifyOtpMobRes =
                                              await ETollFlutterflowGroup
                                                  .verifyOtpCall
                                                  .call(
                                            entityId: FFAppState().entityId,
                                            source: FFAppState().source,
                                            requestId: functions.getRequestId(),
                                            createUser: FFAppState().createUser,
                                            otp: _model.oTPInpuMobModel
                                                .textController.text,
                                            otpId: FFAppState().otpId,
                                            journeyId: FFAppState().journeyId,
                                          );

                                          if ((_model
                                                  .verifyOtpMobRes?.succeeded ??
                                              true)) {
                                            if (ETollFlutterflowGroup
                                                    .verifyOtpCall
                                                    .resCode(
                                                  (_model.verifyOtpMobRes
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                '700') {
                                              FFAppState().showLoader = false;
                                              safeSetState(() {});

                                              context.goNamed(
                                                  'ConfirmPaymentminKYC');
                                            } else {
                                              FFAppState().showLoader = false;
                                              safeSetState(() {});
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
                                                                    .verifyOtpCall
                                                                    .resMsg(
                                                              (_model.verifyOtpMobRes
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
                                                                  .verifyOtpMobRes
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
                                          }

                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                              ],
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
                              decoration: BoxDecoration(
                                color: Color(0x4CFFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 32.0),
                                      child: Container(
                                        width: 1000.0,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x4D57636C),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          32.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width: 1053.0,
                                        height: 430.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    25.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Refresh',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'CustomInter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Select a cutomer to proceed',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'CustomInter',
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              // This page is a deminstration for the usage of the ListViewSelectable component.
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 260.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                width: 300.0,
                                                                height: 45.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'CUSTOMERID',
                                                                    maxLines: 3,
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
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Container(
                                                                width: 300.0,
                                                                height: 45.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'CUSTOMERNAME',
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
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Builder(
                                                            builder: (context) {
                                                              final customerList =
                                                                  FFAppState()
                                                                      .exstingCutomerList
                                                                      .toList();

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    customerList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        customerListIndex) {
                                                                  final customerListItem =
                                                                      customerList[
                                                                          customerListIndex];
                                                                  return InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      FFAppState()
                                                                              .selectedCustomerName =
                                                                          customerListItem
                                                                              .name;
                                                                      FFAppState()
                                                                              .selectedCustomerID =
                                                                          customerListItem
                                                                              .custId;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                300.0,
                                                                            height:
                                                                                45.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  customerListItem.custId,
                                                                                  'NA',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'CustomInter',
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              400.0,
                                                                          height:
                                                                              45.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                customerListItem.name,
                                                                                'NA',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'CustomInter',
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(15.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .selectedCustomerName,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(15.0),
                                                      child: Text(
                                                        FFAppState()
                                                            .selectedCustomerID,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            600.0, 16.0, 0.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.buttonModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ButtonWidget(
                                                title: 'Generate OTP',
                                                width: 200.0,
                                                isDisabled: false,
                                                onButtonClick: () async {
                                                  FFAppState().showLoader =
                                                      true;
                                                  FFAppState().requestID =
                                                      functions.getRequestId();
                                                  safeSetState(() {});
                                                  _model.reqOtpChkSmWeb =
                                                      await actions
                                                          .getChkSumReqOtp(
                                                    FFAppState().bearerToken,
                                                    FFAppState().requestID,
                                                    FFAppState().source,
                                                    FFAppState().entityId,
                                                    FFAppState().createUser,
                                                    FFAppState()
                                                        .custDetails
                                                        .customerID,
                                                    FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .vehicleRegNo,
                                                    'ETBNEWTAG',
                                                    'N',
                                                    'N',
                                                    'N',
                                                  );
                                                  _model.requestOtpWebRes =
                                                      await ETollFlutterflowGroup
                                                          .requestOtpCall
                                                          .call(
                                                    entityId:
                                                        FFAppState().entityId,
                                                    source: FFAppState().source,
                                                    requestId: functions
                                                        .getRequestId(),
                                                    createUser:
                                                        FFAppState().createUser,
                                                    customerId: FFAppState()
                                                        .custDetails
                                                        .customerID,
                                                    vrn: FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .vehicleRegNo,
                                                    action: 'ETBNEWTAG',
                                                    journeyId:
                                                        FFAppState().journeyId,
                                                    chkSm: 'reqOtpChkSum',
                                                  );

                                                  if ((_model.requestOtpWebRes
                                                          ?.succeeded ??
                                                      true)) {
                                                    if (ETollFlutterflowGroup
                                                            .requestOtpCall
                                                            .resCode(
                                                          (_model.requestOtpWebRes
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        '700') {
                                                      FFAppState().otpId =
                                                          _model
                                                              .oTPInpuMobModel
                                                              .textController
                                                              .text;
                                                      FFAppState().showLoader =
                                                          false;
                                                      safeSetState(() {});
                                                      FFAppState().getOTP2 =
                                                          true;
                                                      safeSetState(() {});
                                                      _model.timerController2
                                                          .onStartTimer();
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            ETollFlutterflowGroup
                                                                .requestOtpCall
                                                                .resMsg(
                                                              (_model.requestOtpWebRes
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
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                        ),
                                                      );
                                                    } else {
                                                      FFAppState().showLoader =
                                                          false;
                                                      safeSetState(() {});
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        FFAppState()
                                                                            .ERROR),
                                                                    content: Text(ETollFlutterflowGroup
                                                                        .requestOtpCall
                                                                        .resMsg(
                                                                      (_model.requestOtpWebRes
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
                                                    }
                                                  } else {
                                                    FFAppState().showLoader =
                                                        false;
                                                    safeSetState(() {});
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
                                                                          .requestOtpWebRes
                                                                          ?.exceptionMessage ??
                                                                      '')),
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
                                                  }

                                                  safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (FFAppState().getOTP2 == true)
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  32.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              wrapWithModel(
                                                model: _model.oTPInputWebModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: OTPInputCopyWidget(
                                                  onOTPInputChange:
                                                      (isOTPInputValid,
                                                          testString) async {},
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
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
                                                                padding:
                                                                    EdgeInsetsDirectional
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
                                                                initialTime: _model
                                                                    .timerInitialTimeMs2,
                                                                getDisplayTime:
                                                                    (value) =>
                                                                        StopWatchTimer
                                                                            .getDisplayTime(
                                                                  value,
                                                                  hours: false,
                                                                  milliSecond:
                                                                      false,
                                                                ),
                                                                controller: _model
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
                                                          wrapWithModel(
                                                            model: _model
                                                                .buttonModel5,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child: ButtonWidget(
                                                              title:
                                                                  'Resend OTP',
                                                              width: 120.0,
                                                              background: Colors
                                                                  .transparent,
                                                              titleColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              isDisabled: false,
                                                              onButtonClick:
                                                                  () async {
                                                                _model.requestotpResendWebRes =
                                                                    await ETollFlutterflowGroup
                                                                        .requestOtpCall
                                                                        .call(
                                                                  entityId:
                                                                      FFAppState()
                                                                          .entityId,
                                                                  source:
                                                                      FFAppState()
                                                                          .source,
                                                                  requestId:
                                                                      functions
                                                                          .getRequestId(),
                                                                  createUser:
                                                                      FFAppState()
                                                                          .createUser,
                                                                  customerId: FFAppState()
                                                                      .custDetails
                                                                      .customerID,
                                                                  vrn: FFAppState()
                                                                      .dedupeStatusVehicleDtls
                                                                      .vehicleRegNo,
                                                                );

                                                                if ((_model
                                                                        .requestotpResendWebRes
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  if (ETollFlutterflowGroup
                                                                          .requestOtpCall
                                                                          .resCode(
                                                                        (_model.requestotpResendWebRes?.jsonBody ??
                                                                            ''),
                                                                      ) ==
                                                                      '700') {
                                                                    FFAppState()
                                                                            .otpId =
                                                                        _model
                                                                            .oTPInpuMobModel
                                                                            .textController
                                                                            .text;
                                                                    safeSetState(
                                                                        () {});
                                                                    FFAppState()
                                                                            .getOTP2 =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                    _model
                                                                        .timerController2
                                                                        .timer
                                                                        .setPresetTime(
                                                                            mSec:
                                                                                100000,
                                                                            add:
                                                                                false);
                                                                    _model
                                                                        .timerController2
                                                                        .onResetTimer();

                                                                    _model
                                                                        .timerController2
                                                                        .onStartTimer();
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          ETollFlutterflowGroup
                                                                              .requestOtpCall
                                                                              .resMsg(
                                                                            (_model.requestotpResendWebRes?.jsonBody ??
                                                                                ''),
                                                                          )!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
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
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text(FFAppState().ERROR),
                                                                                  content: Text(ETollFlutterflowGroup.requestOtpCall.resMsg(
                                                                                    (_model.requestotpResendWebRes?.jsonBody ?? ''),
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
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text(FFAppState().ERROR),
                                                                                content: Text((_model.requestotpResendWebRes?.exceptionMessage ?? '')),
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
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    30.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .buttonModel6,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: ButtonWidget(
                                                            title: 'Verify OTP',
                                                            width: 250.0,
                                                            isDisabled:
                                                                FFAppState()
                                                                        .getOTP2 ==
                                                                    false,
                                                            onButtonClick:
                                                                () async {
                                                              _model.verifyOtpWebRes =
                                                                  await ETollFlutterflowGroup
                                                                      .verifyOtpCall
                                                                      .call(
                                                                entityId:
                                                                    FFAppState()
                                                                        .entityId,
                                                                source:
                                                                    FFAppState()
                                                                        .source,
                                                                requestId: functions
                                                                    .getRequestId(),
                                                                createUser:
                                                                    FFAppState()
                                                                        .createUser,
                                                                otp: _model
                                                                    .oTPInputWebModel
                                                                    .textController
                                                                    .text,
                                                                otpId:
                                                                    FFAppState()
                                                                        .otpId,
                                                              );

                                                              FFAppState()
                                                                      .showLoader =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                              if ((_model
                                                                      .verifyOtpWebRes
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                if (ETollFlutterflowGroup
                                                                        .verifyOtpCall
                                                                        .resCode(
                                                                      (_model.verifyOtpWebRes
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ) ==
                                                                    '700') {
                                                                  FFAppState()
                                                                          .showLoader =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});

                                                                  context.goNamed(
                                                                      'VehicleDetails');
                                                                } else {
                                                                  FFAppState()
                                                                          .showLoader =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  var confirmDialogResponse =
                                                                      await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text(FFAppState().ERROR),
                                                                                content: Text(ETollFlutterflowGroup.verifyOtpCall.resMsg(
                                                                                  (_model.verifyOtpWebRes?.jsonBody ?? ''),
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
                                                                FFAppState()
                                                                        .showLoader =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                                var confirmDialogResponse =
                                                                    await showDialog<
                                                                            bool>(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: Text(FFAppState().ERROR),
                                                                              content: Text(ETollFlutterflowGroup.verifyOtpCall.resMsg(
                                                                                (_model.verifyOtpWebRes?.jsonBody ?? ''),
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
                                            ],
                                          ),
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
