import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dynamic_form_field_model.dart';
export 'dynamic_form_field_model.dart';

class DynamicFormFieldWidget extends StatefulWidget {
  const DynamicFormFieldWidget({Key? key}) : super(key: key);

  @override
  _DynamicFormFieldWidgetState createState() => _DynamicFormFieldWidgetState();
}

class _DynamicFormFieldWidgetState extends State<DynamicFormFieldWidget> {
  late DynamicFormFieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DynamicFormFieldModel());

    _model.ingredientFieldController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return TextFormField(
      controller: _model.ingredientFieldController,
      autofocus: true,
      obscureText: false,
      decoration: InputDecoration(
        labelText: 'Nom de l\'ingredient',
        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Poppins',
            ),
        hintStyle: FlutterFlowTheme.of(context).labelMedium,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFDBDEE3),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF6C9E4F),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFF3B46),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFFF3B46),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Poppins',
            color: Colors.black,
          ),
      cursorColor: FlutterFlowTheme.of(context).primary,
      validator: _model.ingredientFieldControllerValidator.asValidator(context),
    );
  }
}
