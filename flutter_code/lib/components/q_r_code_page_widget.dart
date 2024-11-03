import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'q_r_code_page_model.dart';
export 'q_r_code_page_model.dart';

class QRCodePageWidget extends StatefulWidget {
  const QRCodePageWidget({super.key});

  @override
  State<QRCodePageWidget> createState() => _QRCodePageWidgetState();
}

class _QRCodePageWidgetState extends State<QRCodePageWidget> {
  late QRCodePageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QRCodePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Container(
            width: 1100.0,
            height: 821.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Scan this QR Code to pay FASTag Issuance Fee',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'CustomInter',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
                      child: Container(
                        width: 340.0,
                        height: 340.0,
                        child: custom_widgets.QRCode(
                          width: 340.0,
                          height: 340.0,
                          data: FFAppState().upiIssueTagRes.payeeUrl,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.buttonModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: ButtonWidget(
                        title: 'Check Payment Status',
                        width: 260.0,
                        isDisabled: false,
                        onButtonClick: () async {
                          _model.upiStatusChksm =
                              await actions.getChkSmUpiStatus(
                            FFAppState().secureToken,
                            FFAppState().requestID,
                            FFAppState().journeyId,
                            FFAppState().source,
                            FFAppState().entityId,
                            FFAppState().createUser,
                            FFAppState().upiOrderId,
                          );
                          FFAppState().requestID = functions.getRequestId();
                          safeSetState(() {});
                          _model.upiStatusResp =
                              await ETollFlutterflowGroup.upiStatusCall.call(
                            requestId: FFAppState().requestID,
                            journeyId: FFAppState().journeyId,
                            source: FFAppState().source,
                            entityId: FFAppState().entityId,
                            createUser: FFAppState().createUser,
                            payOrderNo: FFAppState().upiOrderId,
                          );

                          if ((_model.upiStatusResp?.succeeded ?? true)) {
                            if (ETollFlutterflowGroup.upiStatusCall.resCode(
                                  (_model.upiStatusResp?.jsonBody ?? ''),
                                ) ==
                                '700') {
                              FFAppState().upiPymtStatusResp =
                                  UpiPymtStatusStruct.maybeFromMap(
                                      (_model.upiStatusResp?.jsonBody ?? ''))!;
                              safeSetState(() {});

                              context.pushNamed('ActivateTagminKYC');
                            } else {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text(FFAppState().ERROR),
                                            content: Text(ETollFlutterflowGroup
                                                .upiStatusCall
                                                .resMsg(
                                              (_model.upiStatusResp?.jsonBody ??
                                                  ''),
                                            )!),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                            }
                          } else {
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text(FFAppState().ERROR),
                                      content: Text((_model.upiStatusResp
                                              ?.exceptionMessage ??
                                          '')),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
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
              ],
            ),
          ),
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: 311.0,
            height: 657.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Scan this QR Code to pay FASTag Issuance Fee',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'CustomInter',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: custom_widgets.QRCode(
                      width: 200.0,
                      height: 200.0,
                      data: FFAppState().upiIssueTagRes.payeeUrl,
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.buttonModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: ButtonWidget(
                    title: 'Check Payment Status',
                    width: 260.0,
                    isDisabled: false,
                    onButtonClick: () async {
                      _model.upiStatusChksmMob =
                          await actions.getChkSmUpiStatus(
                        FFAppState().secureToken,
                        FFAppState().requestID,
                        FFAppState().journeyId,
                        FFAppState().source,
                        FFAppState().entityId,
                        FFAppState().createUser,
                        FFAppState().upiOrderId,
                      );
                      FFAppState().requestID = functions.getRequestId();
                      safeSetState(() {});
                      _model.upiStatusRespMob =
                          await ETollFlutterflowGroup.upiStatusCall.call(
                        requestId: FFAppState().requestID,
                        journeyId: FFAppState().journeyId,
                        source: FFAppState().source,
                        entityId: FFAppState().entityId,
                        createUser: FFAppState().createUser,
                        payOrderNo: FFAppState().upiOrderId,
                        chkSm: _model.upiStatusChksmMob,
                      );

                      if ((_model.upiStatusRespMob?.succeeded ?? true)) {
                        if (ETollFlutterflowGroup.upiStatusCall.resCode(
                              (_model.upiStatusRespMob?.jsonBody ?? ''),
                            ) ==
                            '700') {
                          FFAppState().upiPymtStatusResp =
                              UpiPymtStatusStruct.maybeFromMap(
                                  (_model.upiStatusRespMob?.jsonBody ?? ''))!;
                          safeSetState(() {});

                          context.pushNamed('ActivateTagminKYC');
                        } else {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text(FFAppState().ERROR),
                                    content: Text(ETollFlutterflowGroup
                                        .upiStatusCall
                                        .resMsg(
                                      (_model.upiStatusRespMob?.jsonBody ?? ''),
                                    )!),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Confirm'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                        }
                      } else {
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text(FFAppState().ERROR),
                                  content: Text((_model
                                          .upiStatusRespMob?.exceptionMessage ??
                                      '')),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
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
      ],
    );
  }
}
