import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/components/chassis_input_widget.dart';
import '/components/engine_no_input_widget.dart';
import '/components/mobile_number_input_widget.dart';
import '/components/select_doc_type_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_details_chassis_model.dart';
export 'customer_details_chassis_model.dart';

class CustomerDetailsChassisWidget extends StatefulWidget {
  const CustomerDetailsChassisWidget({super.key});

  @override
  State<CustomerDetailsChassisWidget> createState() =>
      _CustomerDetailsChassisWidgetState();
}

class _CustomerDetailsChassisWidgetState
    extends State<CustomerDetailsChassisWidget> {
  late CustomerDetailsChassisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerDetailsChassisModel());

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
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFCF7D6), Color(0xFFE5CCE0)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: SingleChildScrollView(
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Please enter your details',
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
                                model: _model.mobileNumberInputModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: MobileNumberInputWidget(
                                  validationCallback: (isValid) async {
                                    _model.isMobileNumberValid = isValid;
                                    safeSetState(() {});
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.engineNoInputMobModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: EngineNoInputWidget(
                                    placeholder:
                                        'Last 5 digits of Engine number',
                                    validationCallback: (isValid) async {
                                      _model.isEngineNoValid = isValid;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: wrapWithModel(
                                  model: _model.selectDocTypeInputModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SelectDocTypeInputWidget(
                                    label: 'Select Document',
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.uploadImageMob1Model,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Copy of Sales Invoice',
                                  titleSize: 14.0,
                                  callback: (base64Op) async {
                                    _model.isSalesInvoiceUploaded = base64Op;
                                    safeSetState(() {});
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.uploadImageMob2Model,
                                  updateCallback: () => safeSetState(() {}),
                                  child: UploadImageWidget(
                                    title: 'Copy of Insurance',
                                    titleSize: 14.0,
                                    callback: (base64Op) async {
                                      _model.isInsuranceCopyUploaded = base64Op;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.chassisInputModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ChassisInputWidget(
                                    placeholder: 'Chassis number',
                                    validationCallback: (isValid) async {
                                      _model.isChassisNoValid = isValid;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.goNamed('CustomerDetailsminKYC');
                                    },
                                    child: Text(
                                      'Don\'t have chassis number',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'CustomInter',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            decoration:
                                                TextDecoration.underline,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: wrapWithModel(
                                  model: _model.buttonModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ButtonWidget(
                                    title: 'Initiate Customer Onboarding',
                                    width: 350.0,
                                    isDisabled: !((_model.isMobileNumberValid ==
                                            true) &&
                                        (_model.isEngineNoValid == true) &&
                                        (_model.isChassisNoValid == true) &&
                                        (_model.selectDocTypeInputModel1
                                                    .selectDocumentTypeValue !=
                                                null &&
                                            _model.selectDocTypeInputModel1
                                                    .selectDocumentTypeValue !=
                                                '') &&
                                        ((_model.isSalesInvoiceUploaded !=
                                                    null &&
                                                _model.isSalesInvoiceUploaded !=
                                                    '') ||
                                            (_model.isInsuranceCopyUploaded !=
                                                    null &&
                                                _model.isInsuranceCopyUploaded !=
                                                    ''))),
                                    onButtonClick: () async {
                                      _model.rcFrontImgBase64Mob = await actions
                                          .convertImageFileToBase64(
                                        _model.uploadImageMob1Model
                                            .uploadedLocalFile1,
                                      );
                                      _model.rcBackbase64Mob = await actions
                                          .convertImageFileToBase64(
                                        _model.uploadImageMob2Model
                                            .uploadedLocalFile1,
                                      );
                                      FFAppState().showLoader = true;
                                      safeSetState(() {});
                                      _model.dedupeInitiateChassisResMob =
                                          await ETollFlutterflowGroup
                                              .dedupeInitiateCall
                                              .call(
                                        entityId: FFAppState().entityId,
                                        source: FFAppState().source,
                                        createUser: FFAppState().createUser,
                                        mobileNo: _model.mobileNumberInputModel1
                                            .textController.text,
                                        chassisNo: _model.chassisInputModel1
                                            .textController.text,
                                        engineNoLast5: _model
                                            .engineNoInputMobModel
                                            .textController
                                            .text,
                                        docType: _model.selectDocTypeInputModel1
                                            .selectDocumentTypeValue,
                                        docFront: _model.docImageFirst,
                                        docBack: _model.docImageSecond,
                                        requestId: functions.getRequestId(),
                                      );

                                      if ((_model.dedupeInitiateChassisResMob
                                              ?.succeeded ??
                                          true)) {
                                        if (ETollFlutterflowGroup
                                                .dedupeInitiateCall
                                                .resCode(
                                              (_model.dedupeInitiateChassisResMob
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            '700') {
                                          FFAppState().journeyId =
                                              ETollFlutterflowGroup
                                                  .dedupeInitiateCall
                                                  .journeyId(
                                            (_model.dedupeInitiateChassisResMob
                                                    ?.jsonBody ??
                                                ''),
                                          )!;
                                          safeSetState(() {});
                                          _model.dedupeStatusChassisRespMob =
                                              await ETollFlutterflowGroup
                                                  .dedupeStatusCall
                                                  .call(
                                            entityId: FFAppState().entityId,
                                            source: FFAppState().source,
                                            createUser: FFAppState().createUser,
                                            journeyId: FFAppState().journeyId,
                                            requestId: functions.getRequestId(),
                                          );

                                          if ((_model.dedupeStatusChassisRespMob
                                                  ?.succeeded ??
                                              true)) {
                                            if (ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .resCode(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                '700') {
                                              FFAppState()
                                                      .dedupeStatusVehicleDtls =
                                                  DedupeStatusVehicleDtlsStruct(
                                                vehicleRegNo:
                                                    ETollFlutterflowGroup
                                                        .dedupeStatusCall
                                                        .vehicleRegNo(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                chassisNo: ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .chassisNo(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                engineNo: ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .engineNo(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                make: ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .vehicleMake(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                model: ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .vehicleModel(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                vehicleColor:
                                                    ETollFlutterflowGroup
                                                        .dedupeStatusCall
                                                        .vehicleColor(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                vehicleRegAvlbl:
                                                    ETollFlutterflowGroup
                                                        .dedupeStatusCall
                                                        .vehicleRegAvlbl(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                tvc: ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .vehicleTvc(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                cch: ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .vehicleCch(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                commercial:
                                                    ETollFlutterflowGroup
                                                        .dedupeStatusCall
                                                        .vehicleComercial(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                regDate: ETollFlutterflowGroup
                                                    .dedupeStatusCall
                                                    .vehicleRegDate(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                isVahanVerified:
                                                    ETollFlutterflowGroup
                                                        .dedupeStatusCall
                                                        .vahanVerified(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                isOcrVerified:
                                                    ETollFlutterflowGroup
                                                        .dedupeStatusCall
                                                        .vehicleOCRVerified(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                isIssuanceAllowed:
                                                    ETollFlutterflowGroup
                                                        .dedupeStatusCall
                                                        .vehicleInsuarnceAllowed(
                                                  (_model.dedupeStatusChassisRespMob
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              );
                                              FFAppState().showLoader = false;
                                              FFAppState().exstingCutomerList =
                                                  ETollFlutterflowGroup
                                                      .dedupeStatusCall
                                                      .custDtlsBody(
                                                        (_model.dedupeStatusChassisRespMob
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                      .map((e) =>
                                                          ExstingCustomerStruct
                                                              .maybeFromMap(e))
                                                      .withoutNulls
                                                      .toList()
                                                      .cast<
                                                          ExstingCustomerStruct>();
                                              safeSetState(() {});
                                              if (FFAppState()
                                                      .exstingCutomerList
                                                      .length ==
                                                  0) {
                                                context
                                                    .goNamed('VehicleDetails');
                                              } else {
                                                context.goNamed(
                                                    'CustomerDetailsManKYC_ETB_CS');
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
                                                            content: Text(
                                                                'Something went wrong , please refresh'),
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
                                                          content: Text(
                                                              'Something went wrong , please refresh'),
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
                                                            FFAppState().ERROR),
                                                        content: Text((_model
                                                                .dedupeInitiateChassisResMob
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
                                                          FFAppState().ERROR),
                                                      content: Text((_model
                                                              .dedupeInitiateChassisResMob
                                                              ?.exceptionMessage ??
                                                          '')),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text('Cancel'),
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
                            width: 1285.0,
                            decoration: BoxDecoration(
                              color: Color(0x4CFFFFFF),
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
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .mobileNumberInputModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      MobileNumberInputWidget(
                                                    validationCallback:
                                                        (isValid) async {
                                                      _model.isMobileNumberValid =
                                                          isValid;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 15.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .engineNoInputModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: EngineNoInputWidget(
                                                      placeholder:
                                                          'Last 5 digits of Engine number',
                                                      validationCallback:
                                                          (isValid) async {
                                                        _model.isEngineNoValid =
                                                            isValid;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .selectDocTypeInputModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        SelectDocTypeInputWidget(
                                                      label: 'Select Document',
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 16.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .uploadImageModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: UploadImageWidget(
                                                      title:
                                                          'Copy of Sales Invoice',
                                                      callback:
                                                          (base64Op) async {
                                                        _model.isSalesInvoiceUploaded =
                                                            base64Op;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ]
                                              .divide(SizedBox(width: 0.0))
                                              .around(SizedBox(width: 0.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.chassisInputModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ChassisInputWidget(
                                                    placeholder:
                                                        'Chassis number',
                                                    validationCallback:
                                                        (isValid) async {
                                                      _model.isChassisNoValid =
                                                          isValid;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 245.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .uploadImageModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: UploadImageWidget(
                                                      title:
                                                          'Copy of Insurance',
                                                      callback:
                                                          (base64Op) async {
                                                        _model.isInsuranceCopyUploaded =
                                                            base64Op;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(15.0),
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
                                                        context.goNamed(
                                                            'CustomerDetailsminKYC');
                                                      },
                                                      child: Text(
                                                        'Don\'t have chassis number',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 146.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model.buttonModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ButtonWidget(
                                                      title:
                                                          'Initiate Customer Onboarding',
                                                      width: 369.0,
                                                      isDisabled: !((_model.isMobileNumberValid == true) &&
                                                          (_model.isEngineNoValid ==
                                                              true) &&
                                                          (_model.isChassisNoValid ==
                                                              true) &&
                                                          (_model.selectDocTypeInputModel2
                                                                      .selectDocumentTypeValue !=
                                                                  null &&
                                                              _model.selectDocTypeInputModel2
                                                                      .selectDocumentTypeValue !=
                                                                  '') &&
                                                          ((_model.isSalesInvoiceUploaded !=
                                                                      null &&
                                                                  _model.isSalesInvoiceUploaded !=
                                                                      '') ||
                                                              (_model.isInsuranceCopyUploaded !=
                                                                      null &&
                                                                  _model.isInsuranceCopyUploaded !=
                                                                      ''))),
                                                      onButtonClick: () async {
                                                        _model.docImageFirst =
                                                            await actions
                                                                .convertImageFileToBase64(
                                                          _model
                                                              .uploadImageModel1
                                                              .uploadedLocalFile1,
                                                        );
                                                        _model.docImageSecond =
                                                            await actions
                                                                .convertImageFileToBase64(
                                                          _model
                                                              .uploadImageModel2
                                                              .uploadedLocalFile1,
                                                        );
                                                        FFAppState()
                                                            .showLoader = true;
                                                        safeSetState(() {});
                                                        _model.dedopeInitiateResWeb =
                                                            await ETollFlutterflowGroup
                                                                .dedupeInitiateCall
                                                                .call(
                                                          entityId: FFAppState()
                                                              .entityId,
                                                          source: FFAppState()
                                                              .source,
                                                          createUser:
                                                              FFAppState()
                                                                  .createUser,
                                                          mobileNo: _model
                                                              .mobileNumberInputModel2
                                                              .textController
                                                              .text,
                                                          chassisNo: _model
                                                              .chassisInputModel2
                                                              .textController
                                                              .text,
                                                          docType: _model
                                                              .selectDocTypeInputModel2
                                                              .selectDocumentTypeValue,
                                                          engineNoLast5: _model
                                                              .engineNoInputModel
                                                              .textController
                                                              .text,
                                                          docFront: _model
                                                              .docImageFirst,
                                                          docBack: _model
                                                              .docImageSecond,
                                                        );

                                                        if ((_model
                                                                .dedopeInitiateResWeb
                                                                ?.succeeded ??
                                                            true)) {
                                                          if (ETollFlutterflowGroup
                                                                  .dedupeInitiateCall
                                                                  .resCode(
                                                                (_model.dedopeInitiateResWeb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) ==
                                                              '700') {
                                                            FFAppState()
                                                                    .journeyId =
                                                                ETollFlutterflowGroup
                                                                    .dedupeInitiateCall
                                                                    .journeyId(
                                                              (_model.dedopeInitiateResWeb
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!;
                                                            safeSetState(() {});
                                                            _model.dedupeStatusResp =
                                                                await ETollFlutterflowGroup
                                                                    .dedupeStatusCall
                                                                    .call(
                                                              entityId:
                                                                  FFAppState()
                                                                      .entityId,
                                                              source:
                                                                  FFAppState()
                                                                      .source,
                                                              createUser:
                                                                  FFAppState()
                                                                      .createUser,
                                                              journeyId:
                                                                  FFAppState()
                                                                      .journeyId,
                                                            );

                                                            if ((_model
                                                                    .dedupeStatusResp
                                                                    ?.succeeded ??
                                                                true)) {
                                                              if (ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .resCode(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) ==
                                                                  '700') {
                                                                FFAppState()
                                                                        .dedupeStatusVehicleDtls =
                                                                    DedupeStatusVehicleDtlsStruct(
                                                                  vehicleRegNo:
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleRegNo(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  chassisNo: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .chassisNo(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  engineNo: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .engineNo(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  make: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .vehicleMake(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  model: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .vehicleModel(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  vehicleColor:
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleColor(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  vehicleRegAvlbl:
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleRegAvlbl(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  tvc: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .vehicleTvc(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  cch: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .vehicleCch(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  commercial: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .vehicleComercial(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  regDate: ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .vehicleRegDate(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  isVahanVerified:
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vahanVerified(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  isOcrVerified:
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleOCRVerified(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  isIssuanceAllowed:
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleInsuarnceAllowed(
                                                                    (_model.dedupeStatusResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                );
                                                                FFAppState()
                                                                        .showLoader =
                                                                    false;
                                                                FFAppState().exstingCutomerList = ETollFlutterflowGroup
                                                                    .dedupeStatusCall
                                                                    .custDtlsBody(
                                                                      (_model.dedupeStatusResp
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                    .map((e) =>
                                                                        ExstingCustomerStruct
                                                                            .maybeFromMap(
                                                                                e))
                                                                    .withoutNulls
                                                                    .toList()
                                                                    .cast<
                                                                        ExstingCustomerStruct>();
                                                                safeSetState(
                                                                    () {});
                                                                if (FFAppState()
                                                                        .exstingCutomerList
                                                                        .length ==
                                                                    0) {
                                                                  context.goNamed(
                                                                      'VehicleDetails');
                                                                } else {
                                                                  context.goNamed(
                                                                      'CustomerDetailsManKYC_ETB_CS');
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
                                                                              content: Text('Something went wrong , please refresh'),
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
                                                                            title:
                                                                                Text(FFAppState().ERROR),
                                                                            content:
                                                                                Text('Something went wrong , please refresh'),
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
                                                            safeSetState(() {});
                                                            var confirmDialogResponse =
                                                                await showDialog<
                                                                        bool>(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text(FFAppState().ERROR),
                                                                          content:
                                                                              Text((_model.dedopeInitiateResWeb?.exceptionMessage ?? '')),
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
                                                                            FFAppState().ERROR),
                                                                        content:
                                                                            Text((_model.dedopeInitiateResWeb?.exceptionMessage ??
                                                                                '')),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, false),
                                                                            child:
                                                                                Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext, true),
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
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
      ),
    );
  }
}
