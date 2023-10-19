import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedRecipeRecord extends FirestoreRecord {
  SavedRecipeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "recipe_id" field.
  List<DocumentReference>? _recipeId;
  List<DocumentReference> get recipeId => _recipeId ?? const [];
  bool hasRecipeId() => _recipeId != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _recipeId = getDataList(snapshotData['recipe_id']);
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('saved_recipe');

  static Stream<SavedRecipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SavedRecipeRecord.fromSnapshot(s));

  static Future<SavedRecipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SavedRecipeRecord.fromSnapshot(s));

  static SavedRecipeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SavedRecipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SavedRecipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SavedRecipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SavedRecipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SavedRecipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSavedRecipeRecordData({
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class SavedRecipeRecordDocumentEquality implements Equality<SavedRecipeRecord> {
  const SavedRecipeRecordDocumentEquality();

  @override
  bool equals(SavedRecipeRecord? e1, SavedRecipeRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.recipeId, e2?.recipeId) &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(SavedRecipeRecord? e) =>
      const ListEquality().hash([e?.recipeId, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is SavedRecipeRecord;
}
