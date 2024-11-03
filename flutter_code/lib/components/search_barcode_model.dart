import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/button_widget.dart';
import '/components/loader_widget.dart';
import '/components/text_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'search_barcode_widget.dart' show SearchBarcodeWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBarcodeModel extends FlutterFlowModel<SearchBarcodeWidget> {
  ///  Local state fields for this component.

  List<BarcodeStruct> barcodeList = [];
  void addToBarcodeList(BarcodeStruct item) => barcodeList.add(item);
  void removeFromBarcodeList(BarcodeStruct item) => barcodeList.remove(item);
  void removeAtIndexFromBarcodeList(int index) => barcodeList.removeAt(index);
  void insertAtIndexInBarcodeList(int index, BarcodeStruct item) =>
      barcodeList.insert(index, item);
  void updateBarcodeListAtIndex(int index, Function(BarcodeStruct) updateFn) =>
      barcodeList[index] = updateFn(barcodeList[index]);

  ///  State fields for stateful widgets in this component.

  // Model for textInput component.
  late TextInputModel textInputModel1;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Stores action output result for [Backend Call - API (BarcodeSearch)] action in Button widget.
  ApiCallResponse? apiResultqmyMobile;
  // Model for loader component.
  late LoaderModel loaderModel1;
  // Model for textInput component.
  late TextInputModel textInputModel2;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Stores action output result for [Backend Call - API (BarcodeSearch)] action in Button widget.
  ApiCallResponse? apiResultqmyWeb;
  // Model for loader component.
  late LoaderModel loaderModel2;

  @override
  void initState(BuildContext context) {
    textInputModel1 = createModel(context, () => TextInputModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    loaderModel1 = createModel(context, () => LoaderModel());
    textInputModel2 = createModel(context, () => TextInputModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    loaderModel2 = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    textInputModel1.dispose();
    buttonModel1.dispose();
    loaderModel1.dispose();
    textInputModel2.dispose();
    buttonModel2.dispose();
    loaderModel2.dispose();
  }
}
