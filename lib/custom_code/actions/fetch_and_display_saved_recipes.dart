// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<RecipesRecord>> fetchAndDisplaySavedRecipes(
    List<DocumentReference> recipeReferences) async {
  List<RecipesRecord> savedRecipeDetails = [];

  for (var reference in recipeReferences) {
    final DocumentSnapshot recipe = await reference.get();
    if (recipe.exists) {
      savedRecipeDetails.add(RecipesRecord(
        recipeName: recipe['recipe_name'],
        recipeDescription: recipe['recipe_description'],
        recipeIngredients: List<String>.from(recipe['recipe_ingredients']),
        recipeDuration: recipe['recipe_duration'],
        recipePreparation: recipe['recipe_preparation'],
        uid: recipe['uid'],
      ));
    }
  }

  return savedRecipeDetails; // Return the list of saved recipe details as RecipesRecords
}

class RecipesRecord {
  final String recipeName;
  final String recipeDescription;
  final List<String> recipeIngredients;
  final String recipeDuration;
  final String recipePreparation;
  final String uid;

  RecipesRecord({
    required this.recipeName,
    required this.recipeDescription,
    required this.recipeIngredients,
    required this.recipeDuration,
    required this.recipePreparation,
    required this.uid,
  });
}
