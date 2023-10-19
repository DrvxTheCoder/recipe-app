import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipesRecord extends FirestoreRecord {
  RecipesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recipe_name" field.
  String? _recipeName;
  String get recipeName => _recipeName ?? '';
  bool hasRecipeName() => _recipeName != null;

  // "recipe_duration" field.
  String? _recipeDuration;
  String get recipeDuration => _recipeDuration ?? '';
  bool hasRecipeDuration() => _recipeDuration != null;

  // "recipe_ingredients" field.
  List<String>? _recipeIngredients;
  List<String> get recipeIngredients => _recipeIngredients ?? const [];
  bool hasRecipeIngredients() => _recipeIngredients != null;

  // "recipe_preparation" field.
  String? _recipePreparation;
  String get recipePreparation => _recipePreparation ?? '';
  bool hasRecipePreparation() => _recipePreparation != null;

  // "recipe_image" field.
  String? _recipeImage;
  String get recipeImage => _recipeImage ?? '';
  bool hasRecipeImage() => _recipeImage != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "recipe_description" field.
  String? _recipeDescription;
  String get recipeDescription => _recipeDescription ?? '';
  bool hasRecipeDescription() => _recipeDescription != null;

  void _initializeFields() {
    _recipeName = snapshotData['recipe_name'] as String?;
    _recipeDuration = snapshotData['recipe_duration'] as String?;
    _recipeIngredients = getDataList(snapshotData['recipe_ingredients']);
    _recipePreparation = snapshotData['recipe_preparation'] as String?;
    _recipeImage = snapshotData['recipe_image'] as String?;
    _uid = snapshotData['uid'] as String?;
    _recipeDescription = snapshotData['recipe_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recipes');

  static Stream<RecipesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipesRecord.fromSnapshot(s));

  static Future<RecipesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipesRecord.fromSnapshot(s));

  static RecipesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecipesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecipesRecordData({
  String? recipeName,
  String? recipeDuration,
  String? recipePreparation,
  String? recipeImage,
  String? uid,
  String? recipeDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recipe_name': recipeName,
      'recipe_duration': recipeDuration,
      'recipe_preparation': recipePreparation,
      'recipe_image': recipeImage,
      'uid': uid,
      'recipe_description': recipeDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipesRecordDocumentEquality implements Equality<RecipesRecord> {
  const RecipesRecordDocumentEquality();

  @override
  bool equals(RecipesRecord? e1, RecipesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.recipeName == e2?.recipeName &&
        e1?.recipeDuration == e2?.recipeDuration &&
        listEquality.equals(e1?.recipeIngredients, e2?.recipeIngredients) &&
        e1?.recipePreparation == e2?.recipePreparation &&
        e1?.recipeImage == e2?.recipeImage &&
        e1?.uid == e2?.uid &&
        e1?.recipeDescription == e2?.recipeDescription;
  }

  @override
  int hash(RecipesRecord? e) => const ListEquality().hash([
        e?.recipeName,
        e?.recipeDuration,
        e?.recipeIngredients,
        e?.recipePreparation,
        e?.recipeImage,
        e?.uid,
        e?.recipeDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is RecipesRecord;
}
