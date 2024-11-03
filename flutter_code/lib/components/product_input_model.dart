import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'product_input_widget.dart' show ProductInputWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductInputModel extends FlutterFlowModel<ProductInputWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for product widget.
  String? productValue;
  FormFieldController<String>? productValueController;
  // Stores action output result for [Custom Action - validateInput] action in product widget.
  bool? isValid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
