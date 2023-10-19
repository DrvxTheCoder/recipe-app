import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/dynamic_form_field_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_recipe_widget.dart' show AddRecipeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRecipeModel extends FlutterFlowModel<AddRecipeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for recipe_name widget.
  TextEditingController? recipeNameController;
  String? Function(BuildContext, String?)? recipeNameControllerValidator;
  String? _recipeNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for recipe_duration widget.
  TextEditingController? recipeDurationController;
  String? Function(BuildContext, String?)? recipeDurationControllerValidator;
  String? _recipeDurationControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Models for dynamicFormField dynamic component.
  late FlutterFlowDynamicModels<DynamicFormFieldModel> dynamicFormFieldModels;
  // State field(s) for recipeDescription widget.
  TextEditingController? recipeDescriptionController;
  String? Function(BuildContext, String?)? recipeDescriptionControllerValidator;
  String? _recipeDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for preparation widget.
  TextEditingController? preparationController;
  String? Function(BuildContext, String?)? preparationControllerValidator;
  String? _preparationControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    recipeNameControllerValidator = _recipeNameControllerValidator;
    recipeDurationControllerValidator = _recipeDurationControllerValidator;
    dynamicFormFieldModels =
        FlutterFlowDynamicModels(() => DynamicFormFieldModel());
    recipeDescriptionControllerValidator =
        _recipeDescriptionControllerValidator;
    preparationControllerValidator = _preparationControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    recipeNameController?.dispose();
    recipeDurationController?.dispose();
    dynamicFormFieldModels.dispose();
    recipeDescriptionController?.dispose();
    preparationController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
