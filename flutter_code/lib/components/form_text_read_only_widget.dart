import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_text_read_only_model.dart';
export 'form_text_read_only_model.dart';

class FormTextReadOnlyWidget extends StatefulWidget {
  const FormTextReadOnlyWidget({
    super.key,
    String? address,
    String? addresslabel,
  })  : this.address = address ?? 'label',
        this.addresslabel = addresslabel ?? 'label';

  final String address;
  final String addresslabel;

  @override
  State<FormTextReadOnlyWidget> createState() => _FormTextReadOnlyWidgetState();
}

class _FormTextReadOnlyWidgetState extends State<FormTextReadOnlyWidget> {
  late FormTextReadOnlyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormTextReadOnlyModel());

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
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Text(
                  widget!.address,
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'CustomInter',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    widget!.addresslabel,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'CustomInter',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
