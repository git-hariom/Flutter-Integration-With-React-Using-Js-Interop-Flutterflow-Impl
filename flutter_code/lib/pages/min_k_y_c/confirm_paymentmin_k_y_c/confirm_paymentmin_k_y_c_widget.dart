import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/barcode_input_widget.dart';
import '/components/button_widget.dart';
import '/components/form_text_read_only_widget.dart';
import '/components/loader_widget.dart';
import '/components/product_input_widget.dart';
import '/components/q_r_code_page_widget.dart';
import '/components/search_barcode_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_paymentmin_k_y_c_model.dart';
export 'confirm_paymentmin_k_y_c_model.dart';

class ConfirmPaymentminKYCWidget extends StatefulWidget {
  const ConfirmPaymentminKYCWidget({super.key});

  @override
  State<ConfirmPaymentminKYCWidget> createState() =>
      _ConfirmPaymentminKYCWidgetState();
}

class _ConfirmPaymentminKYCWidgetState
    extends State<ConfirmPaymentminKYCWidget> {
  late ConfirmPaymentminKYCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmPaymentminKYCModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.productListApiResp =
          await ETollFlutterflowGroup.productListingCall.call();

      if ((_model.productListApiResp?.succeeded ?? true)) {
        if (ETollFlutterflowGroup.productListingCall.resCode(
              (_model.productListApiResp?.jsonBody ?? ''),
            ) ==
            '700') {
          _model.productList = ProductListResponseStruct.maybeFromMap(
                  (_model.productListApiResp?.jsonBody ?? ''))!
              .productList
              .toList()
              .cast<ProductStruct>();
          safeSetState(() {});
        }
      }
    });

    _model.textFieldFinalAmountMobTextController ??= TextEditingController(
        text: '${valueOrDefault<String>(
      _model.finalAmountPaymentMob,
      '600',
    )}');
    _model.textFieldFinalAmountMobFocusNode ??= FocusNode();
    _model.textFieldFinalAmountMobFocusNode!.addListener(
      () async {
        _model.finalAmountPaymentMob = await actions.finalAmountCalculation();
        await actions.printLog(
          'On focus change :  ${_model.finalAmountPaymentMob}',
        );

        safeSetState(() {});
      },
    );
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
            'Confirm Payment',
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
                  primary: false,
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
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Builder(
                                    builder: (context) => InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () =>
                                                    FocusScope.of(dialogContext)
                                                        .unfocus(),
                                                child: SearchBarcodeWidget(
                                                  onSelect: (value) async {
                                                    _model.selectedBarcode =
                                                        value;
                                                    safeSetState(() {});
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          _model
                                                              .selectedBarcode!
                                                              .barCode,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'CustomInter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: wrapWithModel(
                                        model: _model.barcodeInputModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: BarcodeInputWidget(
                                          placeholder: valueOrDefault<String>(
                                            _model.selectedBarcode?.barCode,
                                            'FASTag Details (Barcode)',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.productInputModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ProductInputWidget(
                                      label: 'Select product',
                                      products: _model.productList.isNotEmpty
                                          ? _model.productList
                                              .map((e) => e.prodName)
                                              .toList()
                                          : List.generate(
                                              random_data.randomInteger(0, 0),
                                              (index) =>
                                                  random_data.randomString(
                                                    0,
                                                    0,
                                                    true,
                                                    false,
                                                    false,
                                                  )),
                                      validationCallback: (isValid) async {},
                                      onChange: (value) async {
                                        FFAppState().selectedProduct = _model
                                            .productList
                                            .where((e) => e.prodName == value)
                                            .toList()
                                            .first;
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 32.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.formTextReadOnlyModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: FormTextReadOnlyWidget(
                                        address: FFAppState()
                                            .dedupeStatusVehicleDtls
                                            .vehicleRegNo,
                                        addresslabel: 'Vehicle number',
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.formTextReadOnlyModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormTextReadOnlyWidget(
                                      address:
                                          _model.selectedBarcode?.refCardNo,
                                      addresslabel: 'Tag ID',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.formTextReadOnlyModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FormTextReadOnlyWidget(
                                      address: FFAppState()
                                          .dedupeStatusVehicleDtls
                                          .chassisNo,
                                      addresslabel: 'Chassis number',
                                    ),
                                  ),
                                  Container(
                                    width: 400.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 32.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Commercial Vehicle',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'CustomInter',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          FlutterFlowRadioButton(
                                            options: ['Yes', 'No'].toList(),
                                            onChanged: (val) async {
                                              safeSetState(() {});
                                              FFAppState().commercialVehicle =
                                                  valueOrDefault<String>(
                                                _model.radioButtonValue == 'Yes'
                                                    ? 'Y'
                                                    : 'N',
                                                'N',
                                              );
                                              safeSetState(() {});
                                            },
                                            controller: _model
                                                    .radioButtonValueController ??=
                                                FormFieldController<String>(
                                                    'No'),
                                            optionHeight: 32.0,
                                            optionWidth: 71.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'CustomInter',
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            selectedTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'CustomInter',
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault<bool>(
                                    FFAppState().selectedProduct != null,
                                    false,
                                  ))
                                    Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Payment breakdown',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: ListView(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                if (valueOrDefault<bool>(
                                                  FFAppState()
                                                              .selectedProduct
                                                              .initialAmt !=
                                                          null &&
                                                      FFAppState()
                                                              .selectedProduct
                                                              .initialAmt !=
                                                          '',
                                                  false,
                                                ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Tag Insurance Fee',
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                      Text(
                                                        '₹ ${FFAppState().selectedProduct.initialAmt}',
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
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                if (valueOrDefault<bool>(
                                                  FFAppState()
                                                              .selectedProduct
                                                              .replacementFee !=
                                                          null &&
                                                      FFAppState()
                                                              .selectedProduct
                                                              .replacementFee !=
                                                          '',
                                                  false,
                                                ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Replacement Fee',
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                      Text(
                                                        '₹ ${FFAppState().selectedProduct.replacementFee}',
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
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                if (valueOrDefault<bool>(
                                                  FFAppState()
                                                              .selectedProduct
                                                              .securityAmt !=
                                                          null &&
                                                      FFAppState()
                                                              .selectedProduct
                                                              .securityAmt !=
                                                          '',
                                                  false,
                                                ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Security Deposit',
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                      Text(
                                                        '₹ ${FFAppState().selectedProduct.securityAmt}',
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
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                if (valueOrDefault<bool>(
                                                  FFAppState()
                                                              .selectedProduct
                                                              .minProdValue !=
                                                          null &&
                                                      FFAppState()
                                                              .selectedProduct
                                                              .minProdValue !=
                                                          '',
                                                  false,
                                                ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Minimum Balance',
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                      Text(
                                                        '₹ ${FFAppState().selectedProduct.minProdValue}',
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
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                if (valueOrDefault<bool>(
                                                  FFAppState()
                                                              .selectedProduct
                                                              .firstRecharge !=
                                                          null &&
                                                      FFAppState()
                                                              .selectedProduct
                                                              .firstRecharge !=
                                                          '',
                                                  false,
                                                ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'First Recharge',
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                      Text(
                                                        '₹ ${FFAppState().selectedProduct.firstRecharge}',
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
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                if (valueOrDefault<bool>(
                                                  FFAppState()
                                                              .selectedProduct
                                                              .premiumServiceCharges !=
                                                          null &&
                                                      FFAppState()
                                                              .selectedProduct
                                                              .premiumServiceCharges !=
                                                          '',
                                                  false,
                                                ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Max Subscription Charges/Premium Service Charges',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                      Text(
                                                        '₹ ${FFAppState().selectedProduct.premiumServiceCharges}',
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
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 1.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x4C57636C),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Final amount',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'CustomInter',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          190.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '₹ ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'CustomInter',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Container(
                                                      width: 80.0,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textFieldFinalAmountMobTextController,
                                                        focusNode: _model
                                                            .textFieldFinalAmountMobFocusNode,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
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
                                                          hintText: 'TextField',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
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
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
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
                                                        textAlign:
                                                            TextAlign.end,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        validator: _model
                                                            .textFieldFinalAmountMobTextControllerValidator
                                                            .asValidator(
                                                                context),
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Container(
                                      width: 400.0,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Builder(
                                            builder: (context) => wrapWithModel(
                                              model: _model.buttonModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ButtonWidget(
                                                title: 'Paid via UPI',
                                                width: 150.0,
                                                background:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                titleColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                isDisabled: false,
                                                onButtonClick: () async {
                                                  _model.finalAmountPaymentCheckUpi =
                                                      await actions
                                                          .finalAmountCalculation();
                                                  await actions.printLog(
                                                    'total amount calculated is${_model.finalAmountPaymentCheckUpi}',
                                                  );
                                                  await actions.printLog(
                                                    _model
                                                        .textFieldFinalAmountMobTextController
                                                        .text,
                                                  );
                                                  _model.finalPaymentCheckOutputUpi =
                                                      await actions
                                                          .checkFinalAmount(
                                                    _model
                                                        .textFieldFinalAmountMobTextController
                                                        .text,
                                                    _model
                                                        .finalAmountPaymentCheckUpi!,
                                                  );
                                                  await actions.printLog(
                                                    _model
                                                        .finalPaymentCheckOutputUpi!
                                                        .toString(),
                                                  );
                                                  if (_model
                                                          .finalPaymentCheckOutputUpi ==
                                                      true) {
                                                    await actions.printLog(
                                                      _model
                                                          .finalAmountPaymentCheckUpi!,
                                                    );
                                                    FFAppState().requestID =
                                                        functions
                                                            .getRequestId();
                                                    safeSetState(() {});
                                                    _model.issueTagUpiChkSm =
                                                        await actions
                                                            .getChkSumIssueTag(
                                                      FFAppState().secureToken,
                                                      FFAppState().requestID,
                                                      FFAppState().journeyId,
                                                      FFAppState().source,
                                                      FFAppState().entityId,
                                                      FFAppState().createUser,
                                                      FFAppState()
                                                          .selectedProduct
                                                          .prodId,
                                                      FFAppState()
                                                          .dedupeStatusVehicleDtls
                                                          .tvc,
                                                      FFAppState()
                                                          .selectedVehicleCCH,
                                                      _model.selectedBarcode!
                                                          .refCardNo,
                                                      _model.selectedBarcode!
                                                          .barCode,
                                                      FFAppState()
                                                          .dedupeStatusVehicleDtls
                                                          .vehicleRegNo,
                                                      FFAppState()
                                                          .selectedProduct
                                                          .initialAmt,
                                                      FFAppState()
                                                          .dedupeStatusVehicleDtls
                                                          .commercial,
                                                      FFAppState().exempted,
                                                      FFAppState().exemptedCatg,
                                                    );
                                                    FFAppState().showLoader =
                                                        true;
                                                    safeSetState(() {});
                                                    _model.issueTagUpiRespMobile =
                                                        await ETollFlutterflowGroup
                                                            .issueTagUpiCall
                                                            .call(
                                                      product: FFAppState()
                                                          .selectedProduct
                                                          .prodId,
                                                      tvc: FFAppState()
                                                          .dedupeStatusVehicleDtls
                                                          .tvc,
                                                      cch: FFAppState()
                                                          .selectedVehicleCCH,
                                                      tagId: _model
                                                          .selectedBarcode
                                                          ?.refCardNo,
                                                      vrnMobileNo: FFAppState()
                                                          .mobileNumber,
                                                      initialAmount: _model
                                                          .textFieldFinalAmountMobTextController
                                                          .text,
                                                      commVeh: FFAppState()
                                                          .commercialVehicle,
                                                      exempted:
                                                          FFAppState().exempted,
                                                      exemptedCatg: FFAppState()
                                                          .exemptedCatg,
                                                      barcode: _model
                                                          .selectedBarcode
                                                          ?.barCode,
                                                      entityId:
                                                          FFAppState().entityId,
                                                      createUser: FFAppState()
                                                          .createUser,
                                                      journeyId: FFAppState()
                                                          .journeyId,
                                                      requestId: FFAppState()
                                                          .requestID,
                                                      source:
                                                          FFAppState().source,
                                                      chkSm: _model
                                                          .issueTagUpiChkSm,
                                                    );

                                                    if ((_model
                                                            .issueTagUpiRespMobile
                                                            ?.succeeded ??
                                                        true)) {
                                                      if (ETollFlutterflowGroup
                                                              .issueTagUpiCall
                                                              .resCode(
                                                            (_model.issueTagUpiRespMobile
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          '700') {
                                                        FFAppState()
                                                                .issueTagResponse =
                                                            IssueTagStruct
                                                                .maybeFromMap((_model
                                                                        .issueTagUpiRespMobile
                                                                        ?.jsonBody ??
                                                                    ''))!;
                                                        FFAppState()
                                                            .showLoader = false;
                                                        FFAppState()
                                                                .upiIssueTagRes =
                                                            UpiTagIssueStruct
                                                                .maybeFromMap((_model
                                                                        .issueTagUpiRespMobile
                                                                        ?.jsonBody ??
                                                                    ''))!;
                                                        safeSetState(() {});
                                                        _model.tagIssuedSuccessfully =
                                                            true;
                                                        safeSetState(() {});
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () =>
                                                                    FocusScope.of(
                                                                            dialogContext)
                                                                        .unfocus(),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.8,
                                                                  child:
                                                                      QRCodePageWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      } else {
                                                        _model.tagIssuedSuccessfully =
                                                            false;
                                                        safeSetState(() {});
                                                        FFAppState()
                                                            .showLoader = false;
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
                                                                          .issueTagUpiCall
                                                                          .resCode(
                                                                        (_model.issueTagUpiRespMobile?.jsonBody ??
                                                                            ''),
                                                                      )!),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              alertDialogContext,
                                                                              false),
                                                                          child:
                                                                              Text('Cancel'),
                                                                        ),
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
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
                                                      _model.tagIssuedSuccessfully =
                                                          false;
                                                      safeSetState(() {});
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
                                                                    content: Text((_model
                                                                            .issueTagUpiRespMobile
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
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text('ERROR'),
                                                          content: Text(
                                                              'Final amount must be greater'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }

                                                  safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.buttonModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ButtonWidget(
                                              title: 'Paid by Cash',
                                              width: 150.0,
                                              isDisabled: false,
                                              onButtonClick: () async {
                                                _model.finalAmountPaymentCheck =
                                                    await actions
                                                        .finalAmountCalculation();
                                                await actions.printLog(
                                                  'total amount calculated is${_model.finalAmountPaymentCheck}',
                                                );
                                                _model.finalPaymentCheckOutput =
                                                    await actions
                                                        .checkFinalAmount(
                                                  _model
                                                      .textFieldFinalAmountMobTextController
                                                      .text,
                                                  _model
                                                      .finalAmountPaymentCheck!,
                                                );
                                                await actions.printLog(
                                                  _model
                                                      .finalPaymentCheckOutput!
                                                      .toString(),
                                                );
                                                if (_model
                                                        .finalPaymentCheckOutput ==
                                                    true) {
                                                  await actions.printLog(
                                                    _model
                                                        .finalAmountPaymentCheck!,
                                                  );
                                                  FFAppState().requestID =
                                                      functions.getRequestId();
                                                  safeSetState(() {});
                                                  _model.issueTagChkSm =
                                                      await actions
                                                          .getChkSumIssueTag(
                                                    FFAppState().secureToken,
                                                    FFAppState().requestID,
                                                    FFAppState().journeyId,
                                                    FFAppState().source,
                                                    FFAppState().entityId,
                                                    FFAppState().createUser,
                                                    FFAppState()
                                                        .selectedProduct
                                                        .prodId,
                                                    FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .tvc,
                                                    FFAppState()
                                                        .selectedVehicleCCH,
                                                    _model.selectedBarcode!
                                                        .refCardNo,
                                                    _model.selectedBarcode!
                                                        .barCode,
                                                    FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .vehicleRegNo,
                                                    FFAppState()
                                                        .selectedProduct
                                                        .initialAmt,
                                                    FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .commercial,
                                                    FFAppState().exempted,
                                                    FFAppState().exemptedCatg,
                                                  );
                                                  FFAppState().showLoader =
                                                      true;
                                                  safeSetState(() {});
                                                  _model.issueTagApiRespMobile =
                                                      await ETollFlutterflowGroup
                                                          .issueTagCall
                                                          .call(
                                                    product: FFAppState()
                                                        .selectedProduct
                                                        .prodId,
                                                    tvc: FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .tvc,
                                                    tagId: _model
                                                        .selectedBarcode
                                                        ?.refCardNo,
                                                    barcode: _model
                                                        .selectedBarcode
                                                        ?.barCode,
                                                    commVeh: FFAppState()
                                                        .commercialVehicle,
                                                    requestId: functions
                                                        .getRequestId(),
                                                    entityId:
                                                        FFAppState().entityId,
                                                    journeyId:
                                                        FFAppState().journeyId,
                                                    source: FFAppState().source,
                                                    createUser:
                                                        FFAppState().createUser,
                                                    exempted:
                                                        FFAppState().exempted,
                                                    exemptedCatg: FFAppState()
                                                        .exemptedCatg,
                                                    vrnMobileNo: FFAppState()
                                                        .mobileNumber,
                                                    initialAmount: _model
                                                        .textFieldFinalAmountMobTextController
                                                        .text,
                                                  );

                                                  if ((_model
                                                          .issueTagApiRespMobile
                                                          ?.succeeded ??
                                                      true)) {
                                                    if (ETollFlutterflowGroup
                                                            .issueTagCall
                                                            .resCode(
                                                          (_model.issueTagApiRespMobile
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        '700') {
                                                      FFAppState()
                                                              .issueTagResponse =
                                                          IssueTagStruct
                                                              .maybeFromMap((_model
                                                                      .issueTagApiRespMobile
                                                                      ?.jsonBody ??
                                                                  ''))!;
                                                      FFAppState().showLoader =
                                                          false;
                                                      safeSetState(() {});
                                                      _model.tagIssuedSuccessfully =
                                                          true;
                                                      safeSetState(() {});

                                                      context.goNamed(
                                                          'ActivateTagminKYC');
                                                    } else {
                                                      _model.tagIssuedSuccessfully =
                                                          false;
                                                      safeSetState(() {});
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
                                                                        .issueTagCall
                                                                        .resCode(
                                                                      (_model.issueTagApiRespMobile
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
                                                    _model.tagIssuedSuccessfully =
                                                        false;
                                                    safeSetState(() {});
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
                                                                          .issueTagApiRespMobile
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
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('ERROR'),
                                                        content: Text(
                                                            'Final amount must be greater'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }

                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  if (valueOrDefault<bool>(
                                    _model.tagIssuedSuccessfully == true,
                                    false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Container(
                                        width: 400.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              'FASTag has been issued successfully!',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'CustomInter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          9.0,
                                                                          3.0,
                                                                          9.0,
                                                                          3.0),
                                                              child: Text(
                                                                'COMPLETE',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
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
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
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
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            'FASTAG ID',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            FFAppState().issueTagResponse.vehicle.tagId,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 8.0)),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            'MOBILE NUMBER',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '8668766030',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 8.0)),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            16.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
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
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            'VEHICLE NO.',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            FFAppState().issueTagResponse.vehicle.vrn,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 8.0)),
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            'KYC STATUS',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            'Min KYC',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 8.0)),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            16.0)),
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
                                            ],
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
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                Builder(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus(),
                                                              child: Container(
                                                                height: 821.0,
                                                                width: 1100.0,
                                                                child:
                                                                    SearchBarcodeWidget(
                                                                  onSelect:
                                                                      (value) async {
                                                                    _model.selectedBarcode =
                                                                        value;
                                                                    safeSetState(
                                                                        () {});
                                                                    Navigator.pop(
                                                                        context);
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          _model
                                                                              .selectedBarcode!
                                                                              .barCode,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: 'CustomInter',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).warning,
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .barcodeInputModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: BarcodeInputWidget(
                                                        placeholder:
                                                            valueOrDefault<
                                                                String>(
                                                          _model.selectedBarcode
                                                              ?.barCode,
                                                          'FASTag Details (Barcode)',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 32.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .formTextReadOnlyModel4,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        FormTextReadOnlyWidget(
                                                      address: FFAppState()
                                                          .dedupeStatusVehicleDtls
                                                          .vehicleRegNo,
                                                      addresslabel:
                                                          'Vehicle number',
                                                    ),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    address: _model
                                                        .selectedBarcode
                                                        ?.refCardNo,
                                                    addresslabel: 'Tag ID',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .formTextReadOnlyModel6,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: FormTextReadOnlyWidget(
                                                    address: FFAppState()
                                                        .dedupeStatusVehicleDtls
                                                        .chassisNo,
                                                    addresslabel:
                                                        'Chassis number',
                                                  ),
                                                ),
                                                Container(
                                                  width: 400.0,
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 32.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Commercial Vehicle',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'CustomInter',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        FlutterFlowRadioButton(
                                                          options: ['Yes', 'No']
                                                              .toList(),
                                                          onChanged: (val) =>
                                                              safeSetState(
                                                                  () {}),
                                                          controller: _model
                                                                  .radioButtonWebValueController ??=
                                                              FormFieldController<
                                                                  String>('No'),
                                                          optionHeight: 32.0,
                                                          optionWidth: 70.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
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
                                                          selectedTextStyle:
                                                              FlutterFlowTheme.of(
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
                                                          textPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          buttonPosition:
                                                              RadioButtonPosition
                                                                  .left,
                                                          direction:
                                                              Axis.horizontal,
                                                          radioButtonColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          inactiveRadioButtonColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                          toggleable: false,
                                                          horizontalAlignment:
                                                              WrapAlignment
                                                                  .start,
                                                          verticalAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
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
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 100.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .productInputModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: ProductInputWidget(
                                                      label: 'Select product',
                                                      products: _model
                                                              .productList
                                                              .isNotEmpty
                                                          ? _model.productList
                                                              .map((e) =>
                                                                  e.prodName)
                                                              .toList()
                                                          : List.generate(
                                                              random_data
                                                                  .randomInteger(
                                                                      0, 0),
                                                              (index) =>
                                                                  random_data
                                                                      .randomString(
                                                                    0,
                                                                    0,
                                                                    true,
                                                                    false,
                                                                    false,
                                                                  )),
                                                      validationCallback:
                                                          (isValid) async {},
                                                      onChange: (value) async {
                                                        FFAppState()
                                                                .selectedProduct =
                                                            _model.productList
                                                                .where((e) =>
                                                                    e.prodName ==
                                                                    value)
                                                                .toList()
                                                                .first;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                if (valueOrDefault<bool>(
                                                  FFAppState()
                                                          .selectedProduct !=
                                                      null,
                                                  false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                106.0,
                                                                0.0,
                                                                0.0),
                                                    child: Container(
                                                      width: 500.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Payment breakdown',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'CustomInter',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        16.0),
                                                                child: ListView(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  children: [
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      FFAppState().selectedProduct.initialAmt !=
                                                                              null &&
                                                                          FFAppState().selectedProduct.initialAmt !=
                                                                              '',
                                                                      false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Tag Insurance Fee',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '₹ ${FFAppState().selectedProduct.initialAmt}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      FFAppState().selectedProduct.replacementFee !=
                                                                              null &&
                                                                          FFAppState().selectedProduct.replacementFee !=
                                                                              '',
                                                                      false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Replacement Fee',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '₹ ${FFAppState().selectedProduct.replacementFee}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      FFAppState().selectedProduct.securityAmt !=
                                                                              null &&
                                                                          FFAppState().selectedProduct.securityAmt !=
                                                                              '',
                                                                      false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Security Deposit',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '₹ ${FFAppState().selectedProduct.securityAmt}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      FFAppState().selectedProduct.minProdValue !=
                                                                              null &&
                                                                          FFAppState().selectedProduct.minProdValue !=
                                                                              '',
                                                                      false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Minimum Balance',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '₹ ${FFAppState().selectedProduct.minProdValue}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      FFAppState().selectedProduct.firstRecharge !=
                                                                              null &&
                                                                          FFAppState().selectedProduct.firstRecharge !=
                                                                              '',
                                                                      false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'First Recharge',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            '₹ ${FFAppState().selectedProduct.firstRecharge}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      FFAppState().selectedProduct.premiumServiceCharges !=
                                                                              null &&
                                                                          FFAppState().selectedProduct.premiumServiceCharges !=
                                                                              '',
                                                                      false,
                                                                    ))
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              'Max Subscription Charges/Premium Service Charges',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'CustomInter',
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '₹ ${FFAppState().selectedProduct.premiumServiceCharges}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'CustomInter',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: false,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            1.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Final amount',
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
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 500.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            wrapWithModel(
                                                                      model: _model
                                                                          .buttonModel3,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      child:
                                                                          ButtonWidget(
                                                                        title:
                                                                            'Paid via UPI',
                                                                        width:
                                                                            200.0,
                                                                        background:
                                                                            FlutterFlowTheme.of(context).tertiary,
                                                                        titleColor:
                                                                            FlutterFlowTheme.of(context).primary,
                                                                        isDisabled:
                                                                            false,
                                                                        onButtonClick:
                                                                            () async {
                                                                          _model.finalAmountPaymentCheckUpiWeb =
                                                                              await actions.finalAmountCalculation();
                                                                          await actions
                                                                              .printLog(
                                                                            'total amount calculated is${_model.finalAmountPaymentCheck}',
                                                                          );
                                                                          _model.finalPaymentCheckOutputUpiWeb =
                                                                              await actions.checkFinalAmount(
                                                                            _model.textFieldFinalAmountMobTextController.text,
                                                                            _model.finalAmountPaymentCheckUpiWeb!,
                                                                          );
                                                                          await actions
                                                                              .printLog(
                                                                            _model.finalPaymentCheckOutputUpiWeb!.toString(),
                                                                          );
                                                                          if (_model.finalPaymentCheckOutputUpiWeb ==
                                                                              true) {
                                                                            await actions.printLog(
                                                                              _model.finalPaymentCheckOutputUpiWeb!.toString(),
                                                                            );
                                                                            FFAppState().requestID =
                                                                                functions.getRequestId();
                                                                            safeSetState(() {});
                                                                            _model.issueTagUpiChkSmWeb =
                                                                                await actions.getChkSumIssueTag(
                                                                              FFAppState().secureToken,
                                                                              FFAppState().requestID,
                                                                              FFAppState().journeyId,
                                                                              FFAppState().source,
                                                                              FFAppState().entityId,
                                                                              FFAppState().createUser,
                                                                              FFAppState().selectedProduct.prodId,
                                                                              FFAppState().dedupeStatusVehicleDtls.tvc,
                                                                              FFAppState().selectedVehicleCCH,
                                                                              _model.selectedBarcode!.refCardNo,
                                                                              _model.selectedBarcode!.barCode,
                                                                              FFAppState().dedupeStatusVehicleDtls.vehicleRegNo,
                                                                              FFAppState().selectedProduct.initialAmt,
                                                                              FFAppState().dedupeStatusVehicleDtls.commercial,
                                                                              FFAppState().exempted,
                                                                              FFAppState().exemptedCatg,
                                                                            );
                                                                            FFAppState().showLoader =
                                                                                true;
                                                                            safeSetState(() {});
                                                                            _model.issueTagUpiRespWeb =
                                                                                await ETollFlutterflowGroup.issueTagUpiCall.call(
                                                                              product: FFAppState().selectedProduct.prodId,
                                                                              tvc: FFAppState().dedupeStatusVehicleDtls.tvc,
                                                                              cch: FFAppState().selectedVehicleCCH,
                                                                              tagId: _model.selectedBarcode?.refCardNo,
                                                                              vrnMobileNo: FFAppState().mobileNumber,
                                                                              initialAmount: FFAppState().selectedProduct.initialAmt,
                                                                              commVeh: FFAppState().dedupeStatusVehicleDtls.commercial,
                                                                              exempted: FFAppState().exempted,
                                                                              exemptedCatg: FFAppState().exemptedCatg,
                                                                              barcode: _model.selectedBarcode?.barCode,
                                                                              entityId: FFAppState().entityId,
                                                                              createUser: FFAppState().createUser,
                                                                              journeyId: FFAppState().journeyId,
                                                                              requestId: FFAppState().requestID,
                                                                              source: FFAppState().source,
                                                                              chkSm: _model.issueTagUpiChkSmWeb,
                                                                            );

                                                                            if ((_model.issueTagUpiRespWeb?.succeeded ??
                                                                                true)) {
                                                                              if (ETollFlutterflowGroup.issueTagUpiCall.resCode(
                                                                                    (_model.issueTagUpiRespWeb?.jsonBody ?? ''),
                                                                                  ) ==
                                                                                  '700') {
                                                                                FFAppState().issueTagResponse = IssueTagStruct.maybeFromMap((_model.issueTagUpiRespMobile?.jsonBody ?? ''))!;
                                                                                FFAppState().showLoader = false;
                                                                                FFAppState().upiIssueTagRes = UpiTagIssueStruct.maybeFromMap((_model.issueTagUpiRespWeb?.jsonBody ?? ''))!;
                                                                                safeSetState(() {});
                                                                                _model.tagIssuedSuccessfully = true;
                                                                                safeSetState(() {});
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: GestureDetector(
                                                                                        onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                          child: QRCodePageWidget(),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              } else {
                                                                                _model.tagIssuedSuccessfully = false;
                                                                                safeSetState(() {});
                                                                                FFAppState().showLoader = false;
                                                                                safeSetState(() {});
                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          title: Text(FFAppState().ERROR),
                                                                                          content: Text(ETollFlutterflowGroup.issueTagUpiCall.resMsg(
                                                                                            (_model.issueTagUpiRespWeb?.jsonBody ?? ''),
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
                                                                              _model.tagIssuedSuccessfully = false;
                                                                              safeSetState(() {});
                                                                              FFAppState().showLoader = false;
                                                                              safeSetState(() {});
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text(FFAppState().ERROR),
                                                                                        content: Text((_model.issueTagUpiRespWeb?.exceptionMessage ?? '')),
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
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('ERROR'),
                                                                                  content: Text('Final amount must be greater'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          }

                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .buttonModel4,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ButtonWidget(
                                                                      title:
                                                                          'Paid by Cash',
                                                                      width:
                                                                          200.0,
                                                                      isDisabled:
                                                                          false,
                                                                      onButtonClick:
                                                                          () async {
                                                                        _model.issueTagApiRespCopy = await ETollFlutterflowGroup
                                                                            .issueTagCall
                                                                            .call(
                                                                          product: FFAppState()
                                                                              .selectedProduct
                                                                              .prodName,
                                                                          tvc: FFAppState()
                                                                              .dedupeStatusVehicleDtls
                                                                              .tvc,
                                                                          tagId: _model
                                                                              .selectedBarcode
                                                                              ?.refCardNo,
                                                                          barcode: _model
                                                                              .selectedBarcode
                                                                              ?.barCode,
                                                                          initialAmount: FFAppState()
                                                                              .selectedProduct
                                                                              .initialAmt,
                                                                          commVeh:
                                                                              valueOrDefault<String>(
                                                                            _model.radioButtonWebValue == 'Yes'
                                                                                ? 'Y'
                                                                                : 'N',
                                                                            'N',
                                                                          ),
                                                                        );

                                                                        FFAppState().showLoader =
                                                                            true;
                                                                        safeSetState(
                                                                            () {});
                                                                        if ((_model.issueTagApiRespCopy?.succeeded ??
                                                                            true)) {
                                                                          if (ETollFlutterflowGroup.issueTagCall.resCode(
                                                                                (_model.issueTagApiRespCopy?.jsonBody ?? ''),
                                                                              ) ==
                                                                              '700') {
                                                                            FFAppState().issueTagResponse =
                                                                                IssueTagStruct.maybeFromMap((_model.issueTagApiRespCopy?.jsonBody ?? ''))!;
                                                                            FFAppState().showLoader =
                                                                                false;
                                                                            safeSetState(() {});
                                                                            _model.tagIssuedSuccessfully =
                                                                                true;
                                                                            safeSetState(() {});

                                                                            context.goNamed('ActivateTagminKYC');
                                                                          } else {
                                                                            _model.tagIssuedSuccessfully =
                                                                                false;
                                                                            safeSetState(() {});
                                                                            FFAppState().showLoader =
                                                                                false;
                                                                            safeSetState(() {});
                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text(FFAppState().ERROR),
                                                                                      content: Text(ETollFlutterflowGroup.issueTagCall.resMsg(
                                                                                        (_model.issueTagApiRespCopy?.jsonBody ?? ''),
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
                                                                          _model.tagIssuedSuccessfully =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                          FFAppState().showLoader =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                          var confirmDialogResponse = await showDialog<bool>(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text(FFAppState().ERROR),
                                                                                    content: Text((_model.issueTagApiRespCopy?.exceptionMessage ?? '')),
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
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (valueOrDefault<bool>(
                                      _model.tagIssuedSuccessfully == true,
                                      false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 32.0, 0.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'FASTag has been issued successfully!',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'CustomInter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            9.0,
                                                                            3.0,
                                                                            9.0,
                                                                            3.0),
                                                                child: Text(
                                                                  'COMPLETE',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'CustomInter',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        32.0,
                                                                        16.0,
                                                                        32.0,
                                                                        16.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'FASTAG ID',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      FFAppState()
                                                                          .issueTagResponse
                                                                          .vehicle
                                                                          .tagId,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'VEHICLE NO.',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      FFAppState()
                                                                          .issueTagResponse
                                                                          .vehicle
                                                                          .vrn,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'MOBILE NUMBER',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      '8668766030',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'KYC STATUS',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Min KYC',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'CustomInter',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width:
                                                                      100.0)),
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
