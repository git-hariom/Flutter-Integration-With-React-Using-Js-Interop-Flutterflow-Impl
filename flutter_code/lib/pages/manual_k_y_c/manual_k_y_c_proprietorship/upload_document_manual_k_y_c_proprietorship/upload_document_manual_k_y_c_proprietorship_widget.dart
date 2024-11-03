import '/components/cta_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/gender_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upload_document_manual_k_y_c_proprietorship_model.dart';
export 'upload_document_manual_k_y_c_proprietorship_model.dart';

class UploadDocumentManualKYCProprietorshipWidget extends StatefulWidget {
  const UploadDocumentManualKYCProprietorshipWidget({super.key});

  @override
  State<UploadDocumentManualKYCProprietorshipWidget> createState() =>
      _UploadDocumentManualKYCProprietorshipWidgetState();
}

class _UploadDocumentManualKYCProprietorshipWidgetState
    extends State<UploadDocumentManualKYCProprietorshipWidget> {
  late UploadDocumentManualKYCProprietorshipModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => UploadDocumentManualKYCProprietorshipModel());

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
                      primary: false,
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
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        100.0, 0.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 10.0, 15.0, 0.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Upload necessary',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' documents to proceed.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  )
                                                ],
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
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 80.0, 15.0, 15.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .formTextReadOnlyModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: FormTextReadOnlyWidget(
                                                  address: 'BTDFRT24T',
                                                  addresslabel: 'PAN',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.genderInputModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GenderInputWidget(
                                                label:
                                                    'Select Entity ID Document 1',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.genderInputModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GenderInputWidget(
                                                label:
                                                    'Select Entity ID Document 2',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.genderInputModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GenderInputWidget(
                                                label:
                                                    'Select Address Proof Document',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.genderInputModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: GenderInputWidget(
                                                label:
                                                    'Officially valid document [OVD] ',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'Accepted documents :',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' Passport | Aadhaar |\nVoter ID Card',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  )
                                                ],
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
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(15.0),
                                              child: wrapWithModel(
                                                model: _model.uploadImageModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: UploadImageWidget(
                                                  title: 'Proprietor photo',
                                                  callback: (base64Op) async {},
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 100.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 100.0, 15.0, 15.0),
                                            child: wrapWithModel(
                                              model: _model.uploadImageModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UploadImageWidget(
                                                title:
                                                    'Upload Entity/Proprietor PAN image',
                                                callback: (base64Op) async {},
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.uploadImageModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UploadImageWidget(
                                                title:
                                                    'Latest Copy of Electricity Bill',
                                                callback: (base64Op) async {},
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.uploadImageModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UploadImageWidget(
                                                title:
                                                    'Valid Shop Act & Establishment Certificate',
                                                callback: (base64Op) async {},
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.uploadImageModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UploadImageWidget(
                                                title:
                                                    'Latest copy of Electricity Bill',
                                                callback: (base64Op) async {},
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: wrapWithModel(
                                              model: _model.uploadImageModel6,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UploadImageWidget(
                                                title:
                                                    'Officially valid document [OVD] copy',
                                                callback: (base64Op) async {},
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 100.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.ctaModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CtaWidget(
                                                title: 'Upload and Submit',
                                                width: 300.0,
                                                isDisabled: false,
                                                callback: (title) async {},
                                              ),
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
                                15.0, 10.0, 15.0, 0.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Upload necessary',
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
                                    text: ' documents to proceed.',
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
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.formTextReadOnlyModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: FormTextReadOnlyWidget(
                                  address: 'BTDFRT24T',
                                  addresslabel: 'PAN',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.genderInputModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: GenderInputWidget(
                                label: 'Select Entity ID Document 1',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.genderInputModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: GenderInputWidget(
                                label: 'Select Entity ID Document 2',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.genderInputModel7,
                              updateCallback: () => safeSetState(() {}),
                              child: GenderInputWidget(
                                label: 'Select Address Proof Document',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: wrapWithModel(
                              model: _model.genderInputModel8,
                              updateCallback: () => safeSetState(() {}),
                              child: GenderInputWidget(
                                label: 'Officially valid document [OVD]',
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
                                    text: 'Accepted documents :',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'CustomInter',
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' Passport | Aadhaar |\nVoter ID Card',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'CustomInter',
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'CustomInter',
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.uploadImageModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Proprietor photo',
                                  callback: (base64Op) async {},
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.uploadImageModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Upload entity/proprietor PAN image',
                                  callback: (base64Op) async {},
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.uploadImageModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Latest Copy of Electricity Bill',
                                  callback: (base64Op) async {},
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.uploadImageModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title:
                                      'Valid Shop Act & Establishment Certificate',
                                  callback: (base64Op) async {},
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.uploadImageModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Latest Copy of Electricity Bill',
                                  callback: (base64Op) async {},
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.uploadImageModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: UploadImageWidget(
                                  title: 'Officially valid document [OVD] copy',
                                  callback: (base64Op) async {},
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: wrapWithModel(
                                model: _model.ctaModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: CtaWidget(
                                  title: 'Upload and Submit',
                                  width: 300.0,
                                  isDisabled: false,
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
