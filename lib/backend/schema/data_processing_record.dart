import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataProcessingRecord extends FirestoreRecord {
  DataProcessingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "imagescategorical_variables_converted" field.
  String? _imagescategoricalVariablesConverted;
  String get imagescategoricalVariablesConverted =>
      _imagescategoricalVariablesConverted ?? '';
  bool hasImagescategoricalVariablesConverted() =>
      _imagescategoricalVariablesConverted != null;

  // "imagesduplicates_removed" field.
  String? _imagesduplicatesRemoved;
  String get imagesduplicatesRemoved => _imagesduplicatesRemoved ?? '';
  bool hasImagesduplicatesRemoved() => _imagesduplicatesRemoved != null;

  // "imagesfeature_scaling_applied" field.
  String? _imagesfeatureScalingApplied;
  String get imagesfeatureScalingApplied => _imagesfeatureScalingApplied ?? '';
  bool hasImagesfeatureScalingApplied() => _imagesfeatureScalingApplied != null;

  // "imagesmissing_values_handled" field.
  String? _imagesmissingValuesHandled;
  String get imagesmissingValuesHandled => _imagesmissingValuesHandled ?? '';
  bool hasImagesmissingValuesHandled() => _imagesmissingValuesHandled != null;

  // "imagesnumerical_features_normalized" field.
  String? _imagesnumericalFeaturesNormalized;
  String get imagesnumericalFeaturesNormalized =>
      _imagesnumericalFeaturesNormalized ?? '';
  bool hasImagesnumericalFeaturesNormalized() =>
      _imagesnumericalFeaturesNormalized != null;

  // "collectionDocRef" field.
  DocumentReference? _collectionDocRef;
  DocumentReference? get collectionDocRef => _collectionDocRef;
  bool hasCollectionDocRef() => _collectionDocRef != null;

  // "process_data" field.
  String? _processData;
  String get processData => _processData ?? '';
  bool hasProcessData() => _processData != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _imagescategoricalVariablesConverted =
        snapshotData['imagescategorical_variables_converted'] as String?;
    _imagesduplicatesRemoved =
        snapshotData['imagesduplicates_removed'] as String?;
    _imagesfeatureScalingApplied =
        snapshotData['imagesfeature_scaling_applied'] as String?;
    _imagesmissingValuesHandled =
        snapshotData['imagesmissing_values_handled'] as String?;
    _imagesnumericalFeaturesNormalized =
        snapshotData['imagesnumerical_features_normalized'] as String?;
    _collectionDocRef = snapshotData['collectionDocRef'] as DocumentReference?;
    _processData = snapshotData['process_data'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dataProcessing')
          : FirebaseFirestore.instance.collectionGroup('dataProcessing');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dataProcessing').doc(id);

  static Stream<DataProcessingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataProcessingRecord.fromSnapshot(s));

  static Future<DataProcessingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DataProcessingRecord.fromSnapshot(s));

  static DataProcessingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataProcessingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataProcessingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataProcessingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataProcessingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataProcessingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataProcessingRecordData({
  String? imagescategoricalVariablesConverted,
  String? imagesduplicatesRemoved,
  String? imagesfeatureScalingApplied,
  String? imagesmissingValuesHandled,
  String? imagesnumericalFeaturesNormalized,
  DocumentReference? collectionDocRef,
  String? processData,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagescategorical_variables_converted':
          imagescategoricalVariablesConverted,
      'imagesduplicates_removed': imagesduplicatesRemoved,
      'imagesfeature_scaling_applied': imagesfeatureScalingApplied,
      'imagesmissing_values_handled': imagesmissingValuesHandled,
      'imagesnumerical_features_normalized': imagesnumericalFeaturesNormalized,
      'collectionDocRef': collectionDocRef,
      'process_data': processData,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataProcessingRecordDocumentEquality
    implements Equality<DataProcessingRecord> {
  const DataProcessingRecordDocumentEquality();

  @override
  bool equals(DataProcessingRecord? e1, DataProcessingRecord? e2) {
    return e1?.imagescategoricalVariablesConverted ==
            e2?.imagescategoricalVariablesConverted &&
        e1?.imagesduplicatesRemoved == e2?.imagesduplicatesRemoved &&
        e1?.imagesfeatureScalingApplied == e2?.imagesfeatureScalingApplied &&
        e1?.imagesmissingValuesHandled == e2?.imagesmissingValuesHandled &&
        e1?.imagesnumericalFeaturesNormalized ==
            e2?.imagesnumericalFeaturesNormalized &&
        e1?.collectionDocRef == e2?.collectionDocRef &&
        e1?.processData == e2?.processData;
  }

  @override
  int hash(DataProcessingRecord? e) => const ListEquality().hash([
        e?.imagescategoricalVariablesConverted,
        e?.imagesduplicatesRemoved,
        e?.imagesfeatureScalingApplied,
        e?.imagesmissingValuesHandled,
        e?.imagesnumericalFeaturesNormalized,
        e?.collectionDocRef,
        e?.processData
      ]);

  @override
  bool isValidKey(Object? o) => o is DataProcessingRecord;
}
