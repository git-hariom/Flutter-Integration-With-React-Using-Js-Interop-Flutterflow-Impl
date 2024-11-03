import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cta_model.dart';
export 'cta_model.dart';

class CtaWidget extends StatefulWidget {
  const CtaWidget({
    super.key,
    String? title,
    double? width,
    this.background,
    Color? titleColor,
    double? titleSize,
    required this.callback,
    bool? isDisabled,
  })  : this.title = title ?? 'Submit',
        this.width = width ?? 100.0,
        this.titleColor = titleColor ?? Colors.white,
        this.titleSize = titleSize ?? 12.0,
        this.isDisabled = isDisabled ?? false;

  final String title;
  final double width;
  final Color? background;
  final Color titleColor;
  final double titleSize;
  final Future Function(String title)? callback;
  final bool isDisabled;

  @override
  State<CtaWidget> createState() => _CtaWidgetState();
}

class _CtaWidgetState extends State<CtaWidget> {
  late CtaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CtaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: widget!.isDisabled
          ? null
          : () async {
              await widget.callback?.call(
                'hariom',
              );
            },
      text: widget!.title,
      options: FFButtonOptions(
        width: widget!.width,
        height: 48.0,
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: valueOrDefault<Color>(
          widget!.background,
          Color(0xFF9B1E26),
        ),
        textStyle: FlutterFlowTheme.of(context).titleMedium.override(
              fontFamily: 'CustomInter',
              color: widget!.titleColor,
              fontSize: widget!.titleSize,
              letterSpacing: 0.0,
              useGoogleFonts: false,
            ),
        elevation: widget!.background == Colors.transparent ? 0.0 : 5.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(40.0),
        disabledColor: Color(0x4C9B1E26),
        disabledTextColor: Color(0x4DFFFFFF),
      ),
      showLoadingIndicator: false,
    );
  }
}
