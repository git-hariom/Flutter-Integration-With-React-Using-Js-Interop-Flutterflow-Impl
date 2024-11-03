import '/components/aadhaar_input_widget.dart';
import '/components/dateof_birth_widget.dart';
import '/components/email_input_widget.dart';
import '/components/gender_input_widget.dart';
import '/components/mobile_number_input_widget.dart';
import '/components/o_t_p_input_widget.dart';
import '/components/p_a_n_input_widget.dart';
import '/components/vehicle_number_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'consent_model.dart';
export 'consent_model.dart';

class ConsentWidget extends StatefulWidget {
  const ConsentWidget({super.key});

  @override
  State<ConsentWidget> createState() => _ConsentWidgetState();
}

class _ConsentWidgetState extends State<ConsentWidget> {
  late ConsentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConsentModel());

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
              wrapWithModel(
                model: _model.aadhaarInputModel,
                updateCallback: () => safeSetState(() {}),
                child: AadhaarInputWidget(
                  placeholder: 'Aadhaar',
                  validationCallback: (isValid) async {
                    _model.isAadhaarNumberValid = isValid;
                    safeSetState(() {});
                  },
                ),
              ),
              wrapWithModel(
                model: _model.dateofBirthModel,
                updateCallback: () => safeSetState(() {}),
                child: DateofBirthWidget(),
              ),
              wrapWithModel(
                model: _model.oTPInputModel,
                updateCallback: () => safeSetState(() {}),
                child: OTPInputWidget(
                  validationCallback: (isValid) async {
                    _model.isOTPValid = isValid;
                    safeSetState(() {});
                  },
                ),
              ),
              wrapWithModel(
                model: _model.emailInputModel,
                updateCallback: () => safeSetState(() {}),
                child: EmailInputWidget(
                  validationCallback: (isValid) async {
                    _model.isEmailNumberValid = isValid;
                    safeSetState(() {});
                  },
                ),
              ),
              wrapWithModel(
                model: _model.genderInputModel,
                updateCallback: () => safeSetState(() {}),
                child: GenderInputWidget(
                  label: 'Gender',
                ),
              ),
              wrapWithModel(
                model: _model.pANInputModel,
                updateCallback: () => safeSetState(() {}),
                child: PANInputWidget(
                  placeholder: 'PAN',
                  validationCallback: (isValid) async {
                    _model.isPANNumberValid = isValid;
                    safeSetState(() {});
                  },
                ),
              ),
              wrapWithModel(
                model: _model.mobileNumberInputModel,
                updateCallback: () => safeSetState(() {}),
                child: MobileNumberInputWidget(
                  placeholder: 'Mobile Number',
                  validationCallback: (isValid) async {
                    _model.isMobileNumberValid = isValid;
                    safeSetState(() {});
                  },
                ),
              ),
              wrapWithModel(
                model: _model.vehicleNumberInputModel,
                updateCallback: () => safeSetState(() {}),
                child: VehicleNumberInputWidget(
                  placeholder: 'Vehicle Registration Number',
                  validationCallback: (isValid) async {
                    _model.isVehicleNumberValid = isValid;
                    safeSetState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
