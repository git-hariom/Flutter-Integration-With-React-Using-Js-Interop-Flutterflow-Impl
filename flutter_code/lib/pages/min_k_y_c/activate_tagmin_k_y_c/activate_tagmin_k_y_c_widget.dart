import '/backend/api_requests/api_calls.dart';
import '/components/button_widget.dart';
import '/components/loader_widget.dart';
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
import 'activate_tagmin_k_y_c_model.dart';
export 'activate_tagmin_k_y_c_model.dart';

class ActivateTagminKYCWidget extends StatefulWidget {
  const ActivateTagminKYCWidget({super.key});

  @override
  State<ActivateTagminKYCWidget> createState() =>
      _ActivateTagminKYCWidgetState();
}

class _ActivateTagminKYCWidgetState extends State<ActivateTagminKYCWidget> {
  late ActivateTagminKYCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivateTagminKYCModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Activate Tag',
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
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Complete KYV for vehicle',
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
                                    model: _model.uploadImageModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UploadImageWidget(
                                      title:
                                          'Front Image with Vehicle No & Fastag',
                                      titleSize: 14.0,
                                      callback: (base64Op) async {
                                        _model.frontImageBase64 = base64Op;
                                        safeSetState(() {});
                                        FFAppState().showLoader = true;
                                        FFAppState().requestID =
                                            functions.getRequestId();
                                        safeSetState(() {});
                                        _model.vrnImgChkSm =
                                            await actions.getChkSmkyvProcess(
                                          FFAppState().secureToken,
                                          FFAppState().requestID,
                                          FFAppState().journeyId,
                                          FFAppState().source,
                                          FFAppState().entityId,
                                          FFAppState().createUser,
                                        );
                                        _model.apiResult3hc =
                                            await ETollFlutterflowGroup
                                                .imageUploadCall
                                                .call(
                                          source: FFAppState().source,
                                          requestId: FFAppState().requestID,
                                          journeyId: FFAppState().journeyId,
                                          entityId: FFAppState().entityId,
                                          createUser: FFAppState().createUser,
                                          docType: 'vrnFront',
                                          front: base64Op,
                                          chkSm: _model.vrnImgChkSm,
                                        );

                                        if ((_model.apiResult3hc?.succeeded ??
                                            true)) {
                                          if (ETollFlutterflowGroup
                                                  .imageUploadCall
                                                  .resCode(
                                                (_model.apiResult3hc
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '700') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  ETollFlutterflowGroup
                                                      .imageUploadCall
                                                      .resMsg(
                                                    (_model.apiResult3hc
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
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );
                                            FFAppState().showLoader = false;
                                            safeSetState(() {});
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
                                                                  .imageUploadCall
                                                                  .resMsg(
                                                            (_model.apiResult3hc
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
                                                                .apiResult3hc
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
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.uploadImageModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UploadImageWidget(
                                      title: 'Close Up with Tag Pasted',
                                      titleSize: 14.0,
                                      callback: (base64Op) async {
                                        _model.closeWithTagPastedImageBase64 =
                                            base64Op;
                                        safeSetState(() {});
                                        FFAppState().requestID =
                                            functions.getRequestId();
                                        FFAppState().isLoading = true;
                                        safeSetState(() {});
                                        _model.fastagImageChkSm =
                                            await actions.getChkSmkyvProcess(
                                          FFAppState().secureToken,
                                          FFAppState().requestID,
                                          FFAppState().journeyId,
                                          FFAppState().source,
                                          FFAppState().entityId,
                                          FFAppState().createUser,
                                        );
                                        _model.apiResult4hc =
                                            await ETollFlutterflowGroup
                                                .imageUploadCall
                                                .call(
                                          source: FFAppState().source,
                                          requestId: FFAppState().requestID,
                                          journeyId: FFAppState().journeyId,
                                          entityId: FFAppState().entityId,
                                          createUser: FFAppState().createUser,
                                          docType: 'fastag',
                                          front: base64Op,
                                          chkSm: _model.fastagImageChkSm,
                                        );

                                        if ((_model.apiResult4hc?.succeeded ??
                                            true)) {
                                          if (ETollFlutterflowGroup
                                                  .imageUploadCall
                                                  .resCode(
                                                (_model.apiResult4hc
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '700') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  ETollFlutterflowGroup
                                                      .imageUploadCall
                                                      .resMsg(
                                                    (_model.apiResult4hc
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
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );
                                            FFAppState().showLoader = false;
                                            safeSetState(() {});
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
                                                                  .imageUploadCall
                                                                  .resMsg(
                                                            (_model.apiResult4hc
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
                                                                .apiResult4hc
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
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.uploadImageModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UploadImageWidget(
                                      title:
                                          'Side Image with Front and\nBack Wheel',
                                      titleSize: 14.0,
                                      callback: (base64Op) async {
                                        _model.sideImageBase64 = base64Op;
                                        safeSetState(() {});
                                        FFAppState().requestID =
                                            functions.getRequestId();
                                        FFAppState().showLoader = true;
                                        safeSetState(() {});
                                        _model.axleImageChkSm =
                                            await actions.getChkSmkyvProcess(
                                          FFAppState().secureToken,
                                          FFAppState().requestID,
                                          FFAppState().journeyId,
                                          FFAppState().source,
                                          FFAppState().entityId,
                                          FFAppState().createUser,
                                        );
                                        _model.apiResult5hc =
                                            await ETollFlutterflowGroup
                                                .imageUploadCall
                                                .call(
                                          source: FFAppState().source,
                                          requestId: FFAppState().requestID,
                                          journeyId: FFAppState().journeyId,
                                          entityId: FFAppState().entityId,
                                          createUser: FFAppState().createUser,
                                          docType: 'axleImage',
                                          front: base64Op,
                                          chkSm: _model.axleImageChkSm,
                                        );

                                        if ((_model.apiResult5hc?.succeeded ??
                                            true)) {
                                          if (ETollFlutterflowGroup
                                                  .imageUploadCall
                                                  .resCode(
                                                (_model.apiResult5hc
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '700') {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  ETollFlutterflowGroup
                                                      .imageUploadCall
                                                      .resMsg(
                                                    (_model.apiResult5hc
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
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );
                                            FFAppState().showLoader = false;
                                            safeSetState(() {});
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
                                                                  .imageUploadCall
                                                                  .resMsg(
                                                            (_model.apiResult5hc
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
                                                                .apiResult5hc
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
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 400.0,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.buttonModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ButtonWidget(
                                            title: 'Activate Tag',
                                            width: 200.0,
                                            isDisabled: !((_model
                                                            .frontImageBase64 !=
                                                        null &&
                                                    _model.frontImageBase64 !=
                                                        '') &&
                                                (_model.sideImageBase64 !=
                                                        null &&
                                                    _model.sideImageBase64 !=
                                                        '') &&
                                                (_model.closeWithTagPastedImageBase64 !=
                                                        null &&
                                                    _model.closeWithTagPastedImageBase64 !=
                                                        '')),
                                            onButtonClick: () async {
                                              FFAppState().showLoader = true;
                                              safeSetState(() {});
                                              _model.apiResultggw =
                                                  await ETollFlutterflowGroup
                                                      .activateTagCall
                                                      .call(
                                                requestId:
                                                    functions.getRequestId(),
                                                journeyId:
                                                    FFAppState().journeyId,
                                                source: FFAppState().source,
                                                entityId: FFAppState().entityId,
                                                createUser:
                                                    FFAppState().createUser,
                                              );

                                              if ((_model.apiResultggw
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState().showLoader = false;
                                                safeSetState(() {});
                                                if (ETollFlutterflowGroup
                                                        .activateTagCall
                                                        .resCode(
                                                      (_model.apiResultggw
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    '700') {
                                                  _model.isTagActivated = true;
                                                  safeSetState(() {});
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
                                                                        .activateTagCall
                                                                        .resMsg(
                                                                  (_model.apiResultggw
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
                                                                      .apiResultggw
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
                                  if (_model.isTagActivated == true)
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 0.0),
                                        child: Container(
                                          width: 400.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xCC028568),
                                                FlutterFlowTheme.of(context)
                                                    .success
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.0, -1.0),
                                              end: AlignmentDirectional(0, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Text(
                                              'FASTag has been succesfully issued on vehicle ${FFAppState().dedupeStatusVehicleDtls.vehicleRegNo}. Customer ID : ${FFAppState().selectedCustomer.custID}  | FASTag ID : ${FFAppState().selectedProduct.prodId}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'CustomInter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
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
                                      'Complete KYV for vehicle',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'CustomInter',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Container(
                                        width: 1053.0,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
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
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    wrapWithModel(
                                                      model: _model
                                                          .uploadImageModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: UploadImageWidget(
                                                        title:
                                                            'Front Image with Vehicle No & Fastag',
                                                        callback:
                                                            (base64Op) async {
                                                          _model.frontImageBase64 =
                                                              base64Op;
                                                          safeSetState(() {});
                                                          _model.vrnImgWebChkSm =
                                                              await actions
                                                                  .getChkSmkyvProcess(
                                                            FFAppState()
                                                                .secureToken,
                                                            FFAppState()
                                                                .requestID,
                                                            FFAppState()
                                                                .journeyId,
                                                            FFAppState().source,
                                                            FFAppState()
                                                                .entityId,
                                                            FFAppState()
                                                                .createUser,
                                                          );
                                                          _model.apiResult6hc =
                                                              await ETollFlutterflowGroup
                                                                  .imageUploadCall
                                                                  .call(
                                                            source: FFAppState()
                                                                .source,
                                                            requestId:
                                                                FFAppState()
                                                                    .requestID,
                                                            journeyId:
                                                                FFAppState()
                                                                    .journeyId,
                                                            entityId:
                                                                FFAppState()
                                                                    .entityId,
                                                            createUser:
                                                                FFAppState()
                                                                    .createUser,
                                                            docType: 'vrnFront',
                                                            front: base64Op,
                                                            chkSm: _model
                                                                .vrnImgWebChkSm,
                                                          );

                                                          FFAppState()
                                                                  .requestID =
                                                              functions
                                                                  .getRequestId();
                                                          FFAppState()
                                                              .isLoading = true;
                                                          safeSetState(() {});
                                                          if ((_model
                                                                  .apiResult6hc
                                                                  ?.succeeded ??
                                                              true)) {
                                                            if (ETollFlutterflowGroup
                                                                    .imageUploadCall
                                                                    .resCode(
                                                                  (_model.apiResult6hc
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                '700') {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    ETollFlutterflowGroup
                                                                        .imageUploadCall
                                                                        .resMsg(
                                                                      (_model.apiResult6hc
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'CustomInter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
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
                                                              FFAppState()
                                                                      .showLoader =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
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
                                                                                Text(ETollFlutterflowGroup.imageUploadCall.resMsg(
                                                                              (_model.apiResult3hc?.jsonBody ?? ''),
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
                                                                              Text((_model.apiResult6hc?.exceptionMessage ?? '')),
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
                                                            safeSetState(() {});
                                                          }

                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .uploadImageModel5,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: UploadImageWidget(
                                                        title:
                                                            'Side Image with Front and\nBack Wheel',
                                                        callback:
                                                            (base64Op) async {
                                                          _model.sideImageBase64 =
                                                              base64Op;
                                                          safeSetState(() {});
                                                          FFAppState()
                                                                  .requestID =
                                                              functions
                                                                  .getRequestId();
                                                          safeSetState(() {});
                                                          _model.axselWebImgChkSm =
                                                              await actions
                                                                  .getChkSmkyvProcess(
                                                            FFAppState()
                                                                .secureToken,
                                                            FFAppState()
                                                                .requestID,
                                                            FFAppState()
                                                                .journeyId,
                                                            FFAppState().source,
                                                            FFAppState()
                                                                .entityId,
                                                            FFAppState()
                                                                .createUser,
                                                          );
                                                          _model.apiResult8hc =
                                                              await ETollFlutterflowGroup
                                                                  .imageUploadCall
                                                                  .call(
                                                            source: FFAppState()
                                                                .source,
                                                            requestId:
                                                                FFAppState()
                                                                    .requestID,
                                                            journeyId:
                                                                FFAppState()
                                                                    .journeyId,
                                                            entityId:
                                                                FFAppState()
                                                                    .entityId,
                                                            createUser:
                                                                FFAppState()
                                                                    .createUser,
                                                            docType:
                                                                'axleImage',
                                                            front: base64Op,
                                                            chkSm: _model
                                                                .axselWebImgChkSm,
                                                          );

                                                          if ((_model
                                                                  .apiResult5hc
                                                                  ?.succeeded ??
                                                              true)) {
                                                            if (ETollFlutterflowGroup
                                                                    .imageUploadCall
                                                                    .resCode(
                                                                  (_model.apiResult8hc
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                '700') {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    ETollFlutterflowGroup
                                                                        .imageUploadCall
                                                                        .resMsg(
                                                                      (_model.apiResult8hc
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'CustomInter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
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
                                                                                Text(ETollFlutterflowGroup.imageUploadCall.resMsg(
                                                                              (_model.apiResult8hc?.jsonBody ?? ''),
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
                                                                          title:
                                                                              Text(FFAppState().ERROR),
                                                                          content:
                                                                              Text((_model.apiResult8hc?.exceptionMessage ?? '')),
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
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
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
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    wrapWithModel(
                                                      model: _model
                                                          .uploadImageModel6,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: UploadImageWidget(
                                                        title:
                                                            'Close Up with Tag Pasted',
                                                        callback:
                                                            (base64Op) async {
                                                          _model.closeWithTagPastedImageBase64 =
                                                              base64Op;
                                                          safeSetState(() {});
                                                          _model.fastagWebImgChkSm =
                                                              await actions
                                                                  .getChkSmkyvProcess(
                                                            FFAppState()
                                                                .secureToken,
                                                            FFAppState()
                                                                .requestID,
                                                            FFAppState()
                                                                .journeyId,
                                                            FFAppState().source,
                                                            FFAppState()
                                                                .entityId,
                                                            FFAppState()
                                                                .createUser,
                                                          );
                                                          _model.apiResult7hc =
                                                              await ETollFlutterflowGroup
                                                                  .imageUploadCall
                                                                  .call(
                                                            source: FFAppState()
                                                                .source,
                                                            requestId:
                                                                FFAppState()
                                                                    .requestID,
                                                            journeyId:
                                                                FFAppState()
                                                                    .journeyId,
                                                            entityId:
                                                                FFAppState()
                                                                    .entityId,
                                                            createUser:
                                                                FFAppState()
                                                                    .createUser,
                                                            docType: 'fastag',
                                                            front: base64Op,
                                                            chkSm: _model
                                                                .fastagWebImgChkSm,
                                                          );

                                                          FFAppState()
                                                                  .requestID =
                                                              functions
                                                                  .getRequestId();
                                                          FFAppState()
                                                              .isLoading = true;
                                                          safeSetState(() {});
                                                          if ((_model
                                                                  .apiResult7hc
                                                                  ?.succeeded ??
                                                              true)) {
                                                            if (ETollFlutterflowGroup
                                                                    .imageUploadCall
                                                                    .resCode(
                                                                  (_model.apiResult7hc
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                '700') {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    ETollFlutterflowGroup
                                                                        .imageUploadCall
                                                                        .resMsg(
                                                                      (_model.apiResult7hc
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'CustomInter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
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
                                                              FFAppState()
                                                                      .showLoader =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
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
                                                                                Text(ETollFlutterflowGroup.imageUploadCall.resMsg(
                                                                              (_model.apiResult3hc?.jsonBody ?? ''),
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
                                                                              Text((_model.apiResult3hc?.exceptionMessage ?? '')),
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
                                                            safeSetState(() {});
                                                          }

                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  116.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: wrapWithModel(
                                                        model:
                                                            _model.buttonModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: ButtonWidget(
                                                          title: 'Activate Tag',
                                                          width: 200.0,
                                                          isDisabled: !((_model
                                                                          .frontImageBase64 !=
                                                                      null &&
                                                                  _model.frontImageBase64 !=
                                                                      '') &&
                                                              (_model.sideImageBase64 !=
                                                                      null &&
                                                                  _model.sideImageBase64 !=
                                                                      '') &&
                                                              (_model.closeWithTagPastedImageBase64 !=
                                                                      null &&
                                                                  _model.closeWithTagPastedImageBase64 !=
                                                                      '')),
                                                          onButtonClick:
                                                              () async {
                                                            FFAppState()
                                                                    .showLoader =
                                                                true;
                                                            safeSetState(() {});
                                                            _model.apiResultyq2 =
                                                                await ETollFlutterflowGroup
                                                                    .activateTagCall
                                                                    .call();

                                                            if ((_model
                                                                    .apiResultyq2
                                                                    ?.succeeded ??
                                                                true)) {
                                                              FFAppState()
                                                                      .showLoader =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              if (ETollFlutterflowGroup
                                                                      .activateTagCall
                                                                      .resCode(
                                                                    (_model.apiResultyq2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) ==
                                                                  '700') {
                                                                _model.isTagActivated =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
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
                                                                              content: Text(ETollFlutterflowGroup.activateTagCall.resMsg(
                                                                                (_model.apiResultyq2?.jsonBody ?? ''),
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
                                                                            title:
                                                                                Text(FFAppState().ERROR),
                                                                            content:
                                                                                Text((_model.apiResultyq2?.exceptionMessage ?? '')),
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
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (_model.isTagActivated == true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xCC028568),
                                                FlutterFlowTheme.of(context)
                                                    .success
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.0, -1.0),
                                              end: AlignmentDirectional(0, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Text(
                                              'FASTag has been succesfully issued on vehicle ${FFAppState().dedupeStatusVehicleDtls.vehicleRegNo}. Customer ID : ${FFAppState().selectedCustomer.custID}| FASTag ID : ${FFAppState().selectedProduct.prodId}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'CustomInter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
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
