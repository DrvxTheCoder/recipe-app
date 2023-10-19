import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dynamic_form_field_widget.dart' show DynamicFormFieldWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DynamicFormFieldModel extends FlutterFlowModel<DynamicFormFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ingredientField widget.
  TextEditingController? ingredientFieldController;
  String? Function(BuildContext, String?)? ingredientFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    ingredientFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
