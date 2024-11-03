import '/components/cta_widget.dart';
import '/components/data_table_widget.dart';
import '/components/loader_widget.dart';
import '/components/search_bar_widget.dart';
import '/components/text_input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bar_code_search_widget.dart' show BarCodeSearchWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BarCodeSearchModel extends FlutterFlowModel<BarCodeSearchWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for searchBar component.
  late SearchBarModel searchBarModel;
  // Model for textInput component.
  late TextInputModel textInputModel;
  // Model for cta component.
  late CtaModel ctaModel1;
  // Model for cta component.
  late CtaModel ctaModel2;
  // Model for DataTable component.
  late DataTableModel dataTableModel;
  // Model for loader component.
  late LoaderModel loaderModel;

  @override
  void initState(BuildContext context) {
    searchBarModel = createModel(context, () => SearchBarModel());
    textInputModel = createModel(context, () => TextInputModel());
    ctaModel1 = createModel(context, () => CtaModel());
    ctaModel2 = createModel(context, () => CtaModel());
    dataTableModel = createModel(context, () => DataTableModel());
    loaderModel = createModel(context, () => LoaderModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    searchBarModel.dispose();
    textInputModel.dispose();
    ctaModel1.dispose();
    ctaModel2.dispose();
    dataTableModel.dispose();
    loaderModel.dispose();
  }
}
