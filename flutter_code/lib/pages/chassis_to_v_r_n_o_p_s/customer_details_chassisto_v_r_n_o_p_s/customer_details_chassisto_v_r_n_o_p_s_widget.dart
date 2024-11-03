import '/components/cta_widget.dart';
import '/components/text_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_details_chassisto_v_r_n_o_p_s_model.dart';
export 'customer_details_chassisto_v_r_n_o_p_s_model.dart';

class CustomerDetailsChassistoVRNOPSWidget extends StatefulWidget {
  const CustomerDetailsChassistoVRNOPSWidget({super.key});

  @override
  State<CustomerDetailsChassistoVRNOPSWidget> createState() =>
      _CustomerDetailsChassistoVRNOPSWidgetState();
}

class _CustomerDetailsChassistoVRNOPSWidgetState
    extends State<CustomerDetailsChassistoVRNOPSWidget> {
  late CustomerDetailsChassistoVRNOPSModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerDetailsChassistoVRNOPSModel());

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
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFCF7D6), Color(0xFFE5CCE0)],
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.textInputModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Registered mobile number',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.textInputModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Chassis number',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.textInputModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Engine number (Last 5 digits)',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: wrapWithModel(
                                model: _model.textInputModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: TextInputWidget(
                                  placeholder: 'Vehicle registration number',
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.uploadImageModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: UploadImageWidget(
                                title: 'Upload Front RC Image',
                                titleSize: 14.0,
                                callback: (base64Op) async {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.uploadImageModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Upload Back RC Image (Optional)',
                                  titleSize: 14.0,
                                  callback: (base64Op) async {},
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.ctaModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CtaWidget(
                                    title: 'Submit',
                                    width: 200.0,
                                    callback: (title) async {},
                                  ),
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
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
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
                                                model: _model.textInputModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder:
                                                      'Registered mobile number',
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.textInputModel6,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'Chassis number',
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 16.0),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.uploadImageModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UploadImageWidget(
                                                    title:
                                                        'Upload Front RC image',
                                                    callback:
                                                        (base64Op) async {},
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
                                                model: _model.textInputModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextInputWidget(
                                                  placeholder:
                                                      'Last 5 digits of engine number',
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.textInputModel8,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextInputWidget(
                                                    placeholder:
                                                        'Vehicle registration number',
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.uploadImageModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UploadImageWidget(
                                                    title:
                                                        'Upload Black RC image (optional)',
                                                    callback:
                                                        (base64Op) async {},
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 50.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model.ctaModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CtaWidget(
                                                    title: 'Submit',
                                                    width: 200.0,
                                                    callback: (title) async {},
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
