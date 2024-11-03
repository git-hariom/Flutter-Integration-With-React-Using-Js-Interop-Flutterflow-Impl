import '/components/button_widget.dart';
import '/components/upload_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'activate_tag_chassis_widget.dart' show ActivateTagChassisWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActivateTagChassisModel
    extends FlutterFlowModel<ActivateTagChassisWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UploadImage component.
  late UploadImageModel uploadImageModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel2;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel3;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel4;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel5;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel6;
  // Model for Button component.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    uploadImageModel1 = createModel(context, () => UploadImageModel());
    uploadImageModel2 = createModel(context, () => UploadImageModel());
    uploadImageModel3 = createModel(context, () => UploadImageModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    uploadImageModel4 = createModel(context, () => UploadImageModel());
    uploadImageModel5 = createModel(context, () => UploadImageModel());
    uploadImageModel6 = createModel(context, () => UploadImageModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    uploadImageModel1.dispose();
    uploadImageModel2.dispose();
    uploadImageModel3.dispose();
    buttonModel1.dispose();
    uploadImageModel4.dispose();
    uploadImageModel5.dispose();
    uploadImageModel6.dispose();
    buttonModel2.dispose();
  }
}
