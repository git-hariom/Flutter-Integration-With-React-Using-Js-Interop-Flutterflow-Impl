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
import 'consent_widget.dart' show ConsentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConsentModel extends FlutterFlowModel<ConsentWidget> {
  ///  Local state fields for this page.

  bool? isPANNumberValid;

  bool? isMobileNumberValid;

  bool? isAadhaarNumberValid;

  bool? isEmailNumberValid;

  bool? isVehicleNumberValid;

  bool? isOTPValid;

  ///  State fields for stateful widgets in this page.

  // Model for AadhaarInput component.
  late AadhaarInputModel aadhaarInputModel;
  // Model for DateofBirth component.
  late DateofBirthModel dateofBirthModel;
  // Model for OTPInput component.
  late OTPInputModel oTPInputModel;
  // Model for EmailInput component.
  late EmailInputModel emailInputModel;
  // Model for GenderInput component.
  late GenderInputModel genderInputModel;
  // Model for PANInput component.
  late PANInputModel pANInputModel;
  // Model for MobileNumberInput component.
  late MobileNumberInputModel mobileNumberInputModel;
  // Model for VehicleNumberInput component.
  late VehicleNumberInputModel vehicleNumberInputModel;

  @override
  void initState(BuildContext context) {
    aadhaarInputModel = createModel(context, () => AadhaarInputModel());
    dateofBirthModel = createModel(context, () => DateofBirthModel());
    oTPInputModel = createModel(context, () => OTPInputModel());
    emailInputModel = createModel(context, () => EmailInputModel());
    genderInputModel = createModel(context, () => GenderInputModel());
    pANInputModel = createModel(context, () => PANInputModel());
    mobileNumberInputModel =
        createModel(context, () => MobileNumberInputModel());
    vehicleNumberInputModel =
        createModel(context, () => VehicleNumberInputModel());
  }

  @override
  void dispose() {
    aadhaarInputModel.dispose();
    dateofBirthModel.dispose();
    oTPInputModel.dispose();
    emailInputModel.dispose();
    genderInputModel.dispose();
    pANInputModel.dispose();
    mobileNumberInputModel.dispose();
    vehicleNumberInputModel.dispose();
  }
}
