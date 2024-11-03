import '/components/cta_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'activate_tag_biometric_model.dart';
export 'activate_tag_biometric_model.dart';

class ActivateTagBiometricWidget extends StatefulWidget {
  const ActivateTagBiometricWidget({super.key});

  @override
  State<ActivateTagBiometricWidget> createState() =>
      _ActivateTagBiometricWidgetState();
}

class _ActivateTagBiometricWidgetState
    extends State<ActivateTagBiometricWidget> {
  late ActivateTagBiometricModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivateTagBiometricModel());

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
            child: SingleChildScrollView(
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
                        color: FlutterFlowTheme.of(context).primaryBackground,
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
                                  title: 'Front Image with Vehicle No & Fastag',
                                  titleSize: 14.0,
                                  callback: (base64Op) async {},
                                ),
                              ),
                              wrapWithModel(
                                model: _model.uploadImageModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Close Up with Tag Pasted',
                                  titleSize: 14.0,
                                  callback: (base64Op) async {},
                                ),
                              ),
                              wrapWithModel(
                                model: _model.uploadImageModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title:
                                      'Side Image with Front and\nBack Wheel',
                                  titleSize: 14.0,
                                  callback: (base64Op) async {},
                                ),
                              ),
                              Container(
                                width: 400.0,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.ctaModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CtaWidget(
                                      title: 'Activate Tag',
                                      callback: (title) async {
                                        _model.biometricOutput =
                                            await actions.useBiometric();
                                        _model.biometricResponse =
                                            _model.biometricOutput;
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              if (valueOrDefault<bool>(
                                _model.biometricResponse != null &&
                                    _model.biometricResponse != '',
                                false,
                              ))
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xCC028568),
                                            FlutterFlowTheme.of(context).success
                                          ],
                                          stops: [0.0, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Text(
                                          'FASTag has been succesfully issued on vehicle MH14JU3224. Customer ID : 2123420192 | FASTag ID : FT2121012883922341',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'CustomInter',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                          height: MediaQuery.sizeOf(context).height * 1.0,
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
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.uploadImageModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UploadImageWidget(
                                                    title:
                                                        'Front Image with Vehicle No & Fastag',
                                                    callback:
                                                        (base64Op) async {},
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.uploadImageModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UploadImageWidget(
                                                    title:
                                                        'Side Image with Front and\nBack Wheel',
                                                    callback:
                                                        (base64Op) async {},
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.uploadImageModel6,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UploadImageWidget(
                                                    title:
                                                        'Close Up with Tag Pasted',
                                                    callback:
                                                        (base64Op) async {},
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 116.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model.ctaModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: CtaWidget(
                                                      title: 'Activate Tag',
                                                      width: 200.0,
                                                      callback:
                                                          (title) async {},
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 32.0, 0.0, 0.0),
                                  child: Container(
                                    width: 1053.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xCC028568),
                                          FlutterFlowTheme.of(context).success
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(0.0, -1.0),
                                        end: AlignmentDirectional(0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        'FASTag has been succesfully issued on vehicle MH14JU3224. Customer ID : 2123420192 | FASTag ID : FT2121012883922341',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'CustomInter',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
          ),
        ),
      ),
    );
  }
}
