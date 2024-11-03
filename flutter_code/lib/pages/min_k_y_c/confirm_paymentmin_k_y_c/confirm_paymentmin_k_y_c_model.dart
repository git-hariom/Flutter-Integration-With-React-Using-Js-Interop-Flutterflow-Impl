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
import 'confirm_paymentmin_k_y_c_widget.dart' show ConfirmPaymentminKYCWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmPaymentminKYCModel
    extends FlutterFlowModel<ConfirmPaymentminKYCWidget> {
  ///  Local state fields for this page.

  List<ProductStruct> productList = [];
  void addToProductList(ProductStruct item) => productList.add(item);
  void removeFromProductList(ProductStruct item) => productList.remove(item);
  void removeAtIndexFromProductList(int index) => productList.removeAt(index);
  void insertAtIndexInProductList(int index, ProductStruct item) =>
      productList.insert(index, item);
  void updateProductListAtIndex(int index, Function(ProductStruct) updateFn) =>
      productList[index] = updateFn(productList[index]);

  BarcodeStruct? selectedBarcode;
  void updateSelectedBarcodeStruct(Function(BarcodeStruct) updateFn) {
    updateFn(selectedBarcode ??= BarcodeStruct());
  }

  bool tagIssuedSuccessfully = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ProductListing)] action in ConfirmPaymentminKYC widget.
  ApiCallResponse? productListApiResp;
  // Model for BarcodeInput component.
  late BarcodeInputModel barcodeInputModel1;
  // Model for ProductInput component.
  late ProductInputModel productInputModel1;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel1;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextFieldFinalAmountMob widget.
  FocusNode? textFieldFinalAmountMobFocusNode;
  TextEditingController? textFieldFinalAmountMobTextController;
  String? Function(BuildContext, String?)?
      textFieldFinalAmountMobTextControllerValidator;
  // Stores action output result for [Custom Action - finalAmountCalculation] action in TextFieldFinalAmountMob widget.
  String? finalAmountPaymentMob;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Custom Action - finalAmountCalculation] action in Button widget.
  String? finalAmountPaymentCheckUpi;
  // Stores action output result for [Custom Action - checkFinalAmount] action in Button widget.
  bool? finalPaymentCheckOutputUpi;
  // Stores action output result for [Custom Action - getChkSumIssueTag] action in Button widget.
  String? issueTagUpiChkSm;
  // Stores action output result for [Backend Call - API (IssueTagUpi)] action in Button widget.
  ApiCallResponse? issueTagUpiRespMobile;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Stores action output result for [Custom Action - finalAmountCalculation] action in Button widget.
  String? finalAmountPaymentCheck;
  // Stores action output result for [Custom Action - checkFinalAmount] action in Button widget.
  bool? finalPaymentCheckOutput;
  // Stores action output result for [Custom Action - getChkSumIssueTag] action in Button widget.
  String? issueTagChkSm;
  // Stores action output result for [Backend Call - API (IssueTag)] action in Button widget.
  ApiCallResponse? issueTagApiRespMobile;
  // Model for BarcodeInput component.
  late BarcodeInputModel barcodeInputModel2;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel4;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel5;
  // Model for formTextReadOnly component.
  late FormTextReadOnlyModel formTextReadOnlyModel6;
  // State field(s) for RadioButtonWeb widget.
  FormFieldController<String>? radioButtonWebValueController;
  // Model for ProductInput component.
  late ProductInputModel productInputModel2;
  // Model for Button component.
  late ButtonModel buttonModel3;
  // Stores action output result for [Custom Action - finalAmountCalculation] action in Button widget.
  String? finalAmountPaymentCheckUpiWeb;
  // Stores action output result for [Custom Action - checkFinalAmount] action in Button widget.
  bool? finalPaymentCheckOutputUpiWeb;
  // Stores action output result for [Custom Action - getChkSumIssueTag] action in Button widget.
  String? issueTagUpiChkSmWeb;
  // Stores action output result for [Backend Call - API (IssueTagUpi)] action in Button widget.
  ApiCallResponse? issueTagUpiRespWeb;
  // Model for Button component.
  late ButtonModel buttonModel4;
  // Stores action output result for [Backend Call - API (IssueTag)] action in Button widget.
  ApiCallResponse? issueTagApiRespCopy;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    barcodeInputModel1 = createModel(context, () => BarcodeInputModel());
    productInputModel1 = createModel(context, () => ProductInputModel());
    formTextReadOnlyModel1 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel2 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel3 =
        createModel(context, () => FormTextReadOnlyModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    barcodeInputModel2 = createModel(context, () => BarcodeInputModel());
    formTextReadOnlyModel4 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel5 =
        createModel(context, () => FormTextReadOnlyModel());
    formTextReadOnlyModel6 =
        createModel(context, () => FormTextReadOnlyModel());
    productInputModel2 = createModel(context, () => ProductInputModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    buttonModel4 = createModel(context, () => ButtonModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    barcodeInputModel1.dispose();
    productInputModel1.dispose();
    formTextReadOnlyModel1.dispose();
    formTextReadOnlyModel2.dispose();
    formTextReadOnlyModel3.dispose();
    textFieldFinalAmountMobFocusNode?.dispose();
    textFieldFinalAmountMobTextController?.dispose();

    buttonModel1.dispose();
    buttonModel2.dispose();
    barcodeInputModel2.dispose();
    formTextReadOnlyModel4.dispose();
    formTextReadOnlyModel5.dispose();
    formTextReadOnlyModel6.dispose();
    productInputModel2.dispose();
    buttonModel3.dispose();
    buttonModel4.dispose();
    loaderModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
  String? get radioButtonWebValue => radioButtonWebValueController?.value;
}
