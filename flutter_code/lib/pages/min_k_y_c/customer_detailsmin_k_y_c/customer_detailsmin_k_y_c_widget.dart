import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/components/loader_widget.dart';
import '/components/mobile_number_input_widget.dart';
import '/components/upload_image_widget.dart';
import '/components/vehicle_number_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_detailsmin_k_y_c_model.dart';
export 'customer_detailsmin_k_y_c_model.dart';

class CustomerDetailsminKYCWidget extends StatefulWidget {
  const CustomerDetailsminKYCWidget({super.key});

  @override
  State<CustomerDetailsminKYCWidget> createState() =>
      _CustomerDetailsminKYCWidgetState();
}

class _CustomerDetailsminKYCWidgetState
    extends State<CustomerDetailsminKYCWidget> {
  late CustomerDetailsminKYCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerDetailsminKYCModel());

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
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.07),
          child: AppBar(
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
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
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.mobileNumberInputModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MobileNumberInputWidget(
                                        placeholder:
                                            'Mobile number registered with Aadhaar',
                                        validationCallback: (isValid) async {
                                          _model.isMobileNumberValid = isValid;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.vehicleNumberInputModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: VehicleNumberInputWidget(
                                        placeholder: 'Vehicle Number',
                                        validationCallback: (isValid) async {
                                          _model.isVehicleNumberValid = isValid;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 16.0),
                                      child: wrapWithModel(
                                        model: _model.uploadImageModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: UploadImageWidget(
                                          title: 'Upload front RC image',
                                          callback: (base64Op) async {
                                            FFAppState().rcImageFront =
                                                base64Op!;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.uploadImageModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: UploadImageWidget(
                                        title: 'Upload back RC image',
                                        callback: (base64Op) async {
                                          FFAppState().rcImageBack = base64Op!;
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
                                          context.goNamed(
                                              'CustomerDetailsChassis');
                                        },
                                        child: Text(
                                          'Don\'t have vehicle number',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'CustomInter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 400.0,
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.buttonModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ButtonWidget(
                                          title: 'Initiate Customer Onboarding',
                                          width: 250.0,
                                          isDisabled:
                                              !((_model.isMobileNumberValid ==
                                                      true) &&
                                                  (_model.isVehicleNumberValid ==
                                                      true) &&
                                                  (FFAppState().rcImageFront !=
                                                          null &&
                                                      FFAppState()
                                                              .rcImageFront !=
                                                          '') &&
                                                  (FFAppState().rcImageBack !=
                                                          null &&
                                                      FFAppState()
                                                              .rcImageBack !=
                                                          '')),
                                          onButtonClick: () async {
                                            FFAppState().requestID =
                                                functions.getRequestId();
                                            FFAppState().mobileNumber = _model
                                                .mobileNumberInputModel
                                                .textController
                                                .text;
                                            safeSetState(() {});
                                            _model.dedupeInitChkSm =
                                                await actions
                                                    .getChkSumDedupeInit(
                                              FFAppState().secureToken,
                                              _model.mobileNumberInputModel
                                                  .textController.text,
                                              FFAppState().requestID,
                                              FFAppState().source,
                                              FFAppState().entityId,
                                              FFAppState().createUser,
                                              _model.mobileNumberInputModel
                                                  .textController.text,
                                              FFAppState()
                                                  .dedupeStatusVehicleDtls
                                                  .chassisNo,
                                              FFAppState()
                                                  .dedupeStatusVehicleDtls
                                                  .engineNo,
                                              FFAppState()
                                                  .dedupeStatusVehicleDtls
                                                  .engineNo,
                                            );
                                            _model.rcFrontImgBase64Mob =
                                                await actions
                                                    .convertImageFileToBase64(
                                              _model.uploadImageModel1
                                                  .uploadedLocalFile1,
                                            );
                                            _model.rcBackbase64Mob =
                                                await actions
                                                    .convertImageFileToBase64(
                                              _model.uploadImageModel1
                                                  .uploadedLocalFile1,
                                            );
                                            FFAppState().showLoader = true;
                                            safeSetState(() {});
                                            _model.dedopeInitiate =
                                                await ETollFlutterflowGroup
                                                    .dedupeInitiateCall
                                                    .call(
                                              entityId: FFAppState().entityId,
                                              source: FFAppState().source,
                                              createUser:
                                                  FFAppState().createUser,
                                              mobileNo: _model
                                                  .mobileNumberInputModel
                                                  .textController
                                                  .text,
                                              vrn: _model
                                                  .vehicleNumberInputModel
                                                  .textController
                                                  .text,
                                              rcFront:
                                                  _model.rcFrontImgBase64Mob,
                                              rcBack: _model.rcBackbase64Mob,
                                              requestId: FFAppState().requestID,
                                              chkSm: _model.dedupeInitChkSm,
                                            );

                                            if ((_model.dedopeInitiate
                                                    ?.succeeded ??
                                                true)) {
                                              if (ETollFlutterflowGroup
                                                      .dedupeInitiateCall
                                                      .resCode(
                                                    (_model.dedopeInitiate
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) ==
                                                  '700') {
                                                FFAppState().journeyId =
                                                    ETollFlutterflowGroup
                                                        .dedupeInitiateCall
                                                        .journeyId(
                                                  (_model.dedopeInitiate
                                                          ?.jsonBody ??
                                                      ''),
                                                )!;
                                                safeSetState(() {});
                                                _model.dedupeStatusResponse =
                                                    await actions
                                                        .dedupeStatusApiCall();
                                                if (DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.resCode ==
                                                    '700') {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'True',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                  FFAppState()
                                                          .dedupeStatusVehicleDtls =
                                                      DedupeStatusVehicleDtlsStruct(
                                                    vehicleRegNo:
                                                        DedupeStatusResponseBodyStruct
                                                                .maybeFromMap(_model
                                                                    .dedupeStatusResponse)
                                                            ?.vehicle
                                                            ?.vehicleRegNo,
                                                    chassisNo: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.chassisNo,
                                                    engineNo: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.engineNo,
                                                    make: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.make,
                                                    model: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.model,
                                                    vehicleColor:
                                                        DedupeStatusResponseBodyStruct
                                                                .maybeFromMap(_model
                                                                    .dedupeStatusResponse)
                                                            ?.vehicle
                                                            ?.vehicleColor,
                                                    vehicleRegAvlbl:
                                                        DedupeStatusResponseBodyStruct
                                                                .maybeFromMap(_model
                                                                    .dedupeStatusResponse)
                                                            ?.vehicle
                                                            ?.vehicleRegAvlbl,
                                                    tvc: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.tvc,
                                                    cch: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.cch,
                                                    commercial: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.commercial,
                                                    regDate: DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse)
                                                        ?.vehicle
                                                        ?.regDate,
                                                    isVahanVerified:
                                                        DedupeStatusResponseBodyStruct
                                                                .maybeFromMap(_model
                                                                    .dedupeStatusResponse)
                                                            ?.vehicle
                                                            ?.isVahanVerified,
                                                    isOcrVerified:
                                                        DedupeStatusResponseBodyStruct
                                                                .maybeFromMap(_model
                                                                    .dedupeStatusResponse)
                                                            ?.vehicle
                                                            ?.isOcrVerified,
                                                    isIssuanceAllowed:
                                                        DedupeStatusResponseBodyStruct
                                                                .maybeFromMap(_model
                                                                    .dedupeStatusResponse)
                                                            ?.vehicle
                                                            ?.isIssuanceAllowed,
                                                  );
                                                  FFAppState()
                                                          .exstingCutomerList =
                                                      DedupeStatusResponseBodyStruct
                                                              .maybeFromMap(_model
                                                                  .dedupeStatusResponse!)!
                                                          .existingCustomerDtls
                                                          .toList()
                                                          .cast<
                                                              ExstingCustomerStruct>();
                                                  FFAppState().showLoader =
                                                      false;
                                                  safeSetState(() {});
                                                  await actions.printLog(
                                                    FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .vehicleRegNo,
                                                  );
                                                  if (FFAppState()
                                                          .exstingCutomerList
                                                          .length ==
                                                      0) {
                                                    FFAppState().otpAction =
                                                        'OPTSERVICE';
                                                    safeSetState(() {});

                                                    context.goNamed(
                                                        'VehicleDetails');
                                                  } else {
                                                    FFAppState().otpAction =
                                                        'ETBNEWTAG ';
                                                    safeSetState(() {});

                                                    context.goNamed(
                                                        'CustomerDetailsManKYC_ETB_CS');
                                                  }
                                                } else {
                                                  FFAppState().showLoader =
                                                      false;
                                                  safeSetState(() {});
                                                  await actions.printLog(
                                                    DedupeStatusResponseBodyStruct
                                                            .maybeFromMap(_model
                                                                .dedupeStatusResponse!)!
                                                        .resMsg,
                                                  );
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
                                                                    valueOrDefault<
                                                                        String>(
                                                                  DedupeStatusResponseBodyStruct.maybeFromMap(
                                                                          _model
                                                                              .dedupeStatusResponse)
                                                                      ?.resMsg,
                                                                  'Something went wrong , Please try again later',
                                                                )),
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

                                                await actions.printLog(
                                                  _model.dedupeStatusResponse ==
                                                          null
                                                      ? 'unset'
                                                      : getJsonField(
                                                          _model
                                                              .dedupeStatusResponse,
                                                          r'''$.requestId''',
                                                        ).toString(),
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
                                                                      .dedupeInitiateCall
                                                                      .resCode(
                                                                (_model.dedopeInitiate
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
                                                                    .dedopeInitiate
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
                                        0.0, 32.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    15.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .mobileNumberInputWebModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  MobileNumberInputWidget(
                                                                placeholder:
                                                                    'Mobile number registered with Aadhaar',
                                                                validationCallback:
                                                                    (isValid) async {
                                                                  _model.isMobileNumberValid =
                                                                      isValid;
                                                                  safeSetState(
                                                                      () {});
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        _model
                                                                            .isMobileNumberValid!
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'CustomInter',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .warning,
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .vehicleNumberInputWebModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              VehicleNumberInputWidget(
                                                            placeholder:
                                                                'Vehicle',
                                                            validationCallback:
                                                                (isValid) async {
                                                              _model.isVehicleNumberValid =
                                                                  isValid;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 20.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 50.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    15.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .uploadImageWebModel1,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  UploadImageWidget(
                                                                title:
                                                                    'Upload front RC image',
                                                                callback:
                                                                    (base64Op) async {
                                                                  FFAppState()
                                                                          .rcImageFront =
                                                                      base64Op!;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    15.0),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .uploadImageWebModel2,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  UploadImageWidget(
                                                                title:
                                                                    'Upload back RC image',
                                                                callback:
                                                                    (base64Op) async {
                                                                  FFAppState()
                                                                          .rcImageBack =
                                                                      base64Op!;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 20.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 50.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
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
                                                                context.goNamed(
                                                                    'CustomerDetailsChassis');
                                                              },
                                                              child: Text(
                                                                'Don\'t have vehicle number',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'CustomInter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
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
                                                      ].divide(SizedBox(
                                                          width: 20.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                100.0,
                                                                0.0,
                                                                30.0),
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.buttonModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ButtonWidget(
                                                        title:
                                                            'Initiate Customer Onboarding',
                                                        width: 369.0,
                                                        isDisabled: !((_model
                                                                    .isMobileNumberValid ==
                                                                true) &&
                                                            (_model.isVehicleNumberValid ==
                                                                true) &&
                                                            (FFAppState()
                                                                        .rcImageFront !=
                                                                    null &&
                                                                FFAppState()
                                                                        .rcImageFront !=
                                                                    '') &&
                                                            (FFAppState()
                                                                        .rcImageBack !=
                                                                    null &&
                                                                FFAppState()
                                                                        .rcImageBack !=
                                                                    '')),
                                                        onButtonClick:
                                                            () async {
                                                          FFAppState()
                                                                  .requestID =
                                                              functions
                                                                  .getRequestId();
                                                          FFAppState()
                                                                  .mobileNumber =
                                                              _model
                                                                  .mobileNumberInputWebModel
                                                                  .textController
                                                                  .text;
                                                          safeSetState(() {});
                                                          _model.dedupeInitChkSmWeb =
                                                              await actions
                                                                  .getChkSumDedupeInit(
                                                            FFAppState()
                                                                .secureToken,
                                                            _model
                                                                .mobileNumberInputModel
                                                                .textController
                                                                .text,
                                                            FFAppState()
                                                                .requestID,
                                                            FFAppState().source,
                                                            FFAppState()
                                                                .entityId,
                                                            FFAppState()
                                                                .createUser,
                                                            _model
                                                                .mobileNumberInputModel
                                                                .textController
                                                                .text,
                                                            FFAppState()
                                                                .dedupeStatusVehicleDtls
                                                                .chassisNo,
                                                            FFAppState()
                                                                .dedupeStatusVehicleDtls
                                                                .engineNo,
                                                            FFAppState()
                                                                .dedupeStatusVehicleDtls
                                                                .engineNo,
                                                          );
                                                          _model.isLoading =
                                                              true;
                                                          safeSetState(() {});
                                                          _model.rcFrontBase64 =
                                                              await actions
                                                                  .convertImageFileToBase64(
                                                            _model.uploadImageWebModel1.uploadedLocalFile2 !=
                                                                        null &&
                                                                    (_model
                                                                            .uploadImageWebModel1
                                                                            .uploadedLocalFile2
                                                                            .bytes
                                                                            ?.isNotEmpty ??
                                                                        false)
                                                                ? _model
                                                                    .uploadImageWebModel1
                                                                    .uploadedLocalFile2
                                                                : _model
                                                                    .uploadImageWebModel1
                                                                    .uploadedLocalFile1,
                                                          );
                                                          _model.rcBackbase64 =
                                                              await actions
                                                                  .convertImageFileToBase64(
                                                            _model.uploadImageWebModel2.uploadedLocalFile2 !=
                                                                        null &&
                                                                    (_model
                                                                            .uploadImageWebModel2
                                                                            .uploadedLocalFile2
                                                                            .bytes
                                                                            ?.isNotEmpty ??
                                                                        false)
                                                                ? _model
                                                                    .uploadImageWebModel2
                                                                    .uploadedLocalFile2
                                                                : _model
                                                                    .uploadImageWebModel2
                                                                    .uploadedLocalFile1,
                                                          );
                                                          FFAppState()
                                                                  .showLoader =
                                                              true;
                                                          safeSetState(() {});
                                                          _model.dedupeInitiate =
                                                              await ETollFlutterflowGroup
                                                                  .dedupeInitiateCall
                                                                  .call(
                                                            entityId:
                                                                FFAppState()
                                                                    .entityId,
                                                            source: FFAppState()
                                                                .entityId,
                                                            createUser:
                                                                FFAppState()
                                                                    .createUser,
                                                            mobileNo: _model
                                                                .mobileNumberInputWebModel
                                                                .textController
                                                                .text,
                                                            vrn: _model
                                                                .vehicleNumberInputWebModel
                                                                .textController
                                                                .text,
                                                            rcFront:
                                                                valueOrDefault<
                                                                    String>(
                                                              _model
                                                                  .rcFrontBase64,
                                                              'r567fghgyt565445dfgyy7666tfgty665fg',
                                                            ),
                                                            rcBack:
                                                                valueOrDefault<
                                                                    String>(
                                                              _model
                                                                  .rcBackbase64,
                                                              'fgghg66556rtfghghjyu6765rtfghtyu665trfth',
                                                            ),
                                                            requestId:
                                                                FFAppState()
                                                                    .requestID,
                                                            chkSm: _model
                                                                .dedupeInitChkSmWeb,
                                                          );

                                                          if ((_model
                                                                  .dedupeInitiate
                                                                  ?.succeeded ??
                                                              true)) {
                                                            if (ETollFlutterflowGroup
                                                                    .dedupeInitiateCall
                                                                    .resCode(
                                                                  (_model.dedupeInitiate
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                '700') {
                                                              await actions
                                                                  .printLog(
                                                                ETollFlutterflowGroup
                                                                    .dedupeInitiateCall
                                                                    .resCode(
                                                                  (_model.dedupeInitiate
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!,
                                                              );
                                                              FFAppState()
                                                                      .journeyId =
                                                                  valueOrDefault<
                                                                      String>(
                                                                ETollFlutterflowGroup
                                                                    .dedupeInitiateCall
                                                                    .journeyId(
                                                                  (_model.dedupeInitiate
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                'NA',
                                                              );
                                                              FFAppState()
                                                                      .isLoading =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              await actions
                                                                  .printLog(
                                                                (_model.dedupeInitiate
                                                                            ?.jsonBody ??
                                                                        '')
                                                                    .toString(),
                                                              );
                                                              _model.requestIdStatus =
                                                                  await actions
                                                                      .generateRequestId();
                                                              await actions
                                                                  .printLog(
                                                                FFAppState()
                                                                    .journeyId,
                                                              );
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          30000));
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
                                                                requestId: functions
                                                                    .getRequestId(),
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
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleRegNo(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    chassisNo:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .chassisNo(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    engineNo:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .engineNo(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    make: valueOrDefault<
                                                                        String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleMake(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    model: valueOrDefault<
                                                                        String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleModel(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    vehicleColor:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleColor(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    vehicleRegAvlbl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleRegAvlbl(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    tvc: valueOrDefault<
                                                                        String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleTvc(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    cch: ETollFlutterflowGroup
                                                                        .dedupeStatusCall
                                                                        .vehicleCch(
                                                                      (_model.dedupeStatusResp
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    commercial:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleComercial(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    regDate:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleRegDate(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    isVahanVerified:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vahanVerified(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    isOcrVerified:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleOCRVerified(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    isIssuanceAllowed:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .vehicleInsuarnceAllowed(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                  );
                                                                  FFAppState().exstingCutomerList = ETollFlutterflowGroup
                                                                      .dedupeStatusCall
                                                                      .custDtlsBody(
                                                                        (_model.dedupeStatusResp?.jsonBody ??
                                                                            ''),
                                                                      )!
                                                                      .map((e) =>
                                                                          ExstingCustomerStruct.maybeFromMap(
                                                                              e))
                                                                      .withoutNulls
                                                                      .toList()
                                                                      .cast<
                                                                          ExstingCustomerStruct>();
                                                                  FFAppState()
                                                                          .showLoader =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  await actions
                                                                      .printLog(
                                                                    ETollFlutterflowGroup
                                                                        .dedupeStatusCall
                                                                        .resCode(
                                                                      (_model.dedupeStatusResp
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!,
                                                                  );
                                                                  _model.isLoading =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  if (ETollFlutterflowGroup
                                                                          .dedupeStatusCall
                                                                          .custDtlsBody(
                                                                            (_model.dedupeStatusResp?.jsonBody ??
                                                                                ''),
                                                                          )
                                                                          ?.length ==
                                                                      0) {
                                                                    FFAppState()
                                                                            .otpAction =
                                                                        'OPTSERVICE';
                                                                    safeSetState(
                                                                        () {});

                                                                    context.goNamed(
                                                                        'VehicleDetails');
                                                                  } else {
                                                                    FFAppState()
                                                                            .otpAction =
                                                                        'ETBNEWTAG';
                                                                    safeSetState(
                                                                        () {});

                                                                    context.goNamed(
                                                                        'CustomerDetailsManKYC_ETB_CS');
                                                                  }
                                                                } else {
                                                                  FFAppState()
                                                                          .showLoader =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.isLoading =
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
                                                                                content: Text(ETollFlutterflowGroup.dedupeStatusCall.resMsg(
                                                                                  (_model.dedupeStatusResp?.jsonBody ?? ''),
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
                                                                _model.isLoading =
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
                                                                              content: Text((_model.dedupeStatusResp?.exceptionMessage ?? '')),
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
                                                              _model.isLoading =
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
                                                                                Text(ETollFlutterflowGroup.dedupeInitiateCall.resMsg(
                                                                              (_model.dedupeInitiate?.jsonBody ?? ''),
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
                                                            safeSetState(() {});
                                                            _model.isLoading =
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
                                                                              Text((_model.dedupeInitiate?.exceptionMessage ?? '')),
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
                                                ],
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
