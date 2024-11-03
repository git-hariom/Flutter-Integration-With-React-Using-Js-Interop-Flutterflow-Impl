import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'email_input_model.dart';
export 'email_input_model.dart';

class EmailInputWidget extends StatefulWidget {
  const EmailInputWidget({
    super.key,
    String? placeholder,
    this.validationCallback,
  }) : this.placeholder = placeholder ?? 'Email ID';

  final String placeholder;
  final Future Function(bool? isValid)? validationCallback;

  @override
  State<EmailInputWidget> createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
  late EmailInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailInputModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.textController',
                  Duration(milliseconds: 2000),
                  () async {
                    _model.isValid = await actions.validateInput(
                      'EMAIL',
                      _model.textController.text,
                    );
                    await widget.validationCallback?.call(
                      _model.isValid,
                    );

                    safeSetState(() {});
                  },
                ),
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: widget!.placeholder,
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'CustomInter',
                        color: valueOrDefault<Color>(
                          _model.isValid == false
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).secondaryText,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'CustomInter',
                      color: valueOrDefault<Color>(
                        _model.isValid == false
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).primaryText,
                        FlutterFlowTheme.of(context).primaryText,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
                textAlign: TextAlign.start,
                keyboardType: TextInputType.emailAddress,
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.textControllerValidator.asValidator(context),
              ),
              if (valueOrDefault<bool>(
                _model.isValid == false,
                true,
              ))
                Text(
                  'Please enter a valid email',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'CustomInter',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              Divider(
                thickness: 1.0,
                color: valueOrDefault<Color>(
                  _model.isValid == false
                      ? FlutterFlowTheme.of(context).primary
                      : Color(0x8057636C),
                  Color(0x8057636C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
