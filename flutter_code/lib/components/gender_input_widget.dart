import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gender_input_model.dart';
export 'gender_input_model.dart';

class GenderInputWidget extends StatefulWidget {
  const GenderInputWidget({
    super.key,
    required this.label,
  });

  final String? label;

  @override
  State<GenderInputWidget> createState() => _GenderInputWidgetState();
}

class _GenderInputWidgetState extends State<GenderInputWidget> {
  late GenderInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenderInputModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: 400.0,
        height: 90.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlutterFlowDropDown<String>(
                controller: _model.genderValueController ??=
                    FormFieldController<String>(null),
                options: ['Male', 'Female'],
                onChanged: (val) =>
                    safeSetState(() => _model.genderValue = val),
                width: 504.0,
                height: 40.0,
                textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'CustomInter',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
                hintText: widget!.label,
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 42.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 0.0,
                borderColor: Colors.transparent,
                borderWidth: 0.0,
                borderRadius: 0.0,
                margin: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                hidesUnderline: true,
                isOverButton: false,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Divider(
                thickness: 1.0,
                color: Color(0x8057636C),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
