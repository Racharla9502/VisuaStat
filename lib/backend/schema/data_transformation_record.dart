import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTransformationRecord extends FirestoreRecord {
  DataTransformationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "log_transformation" field.
  String? _logTransformation;
  String get logTransformation => _logTransformation ?? '';
  bool hasLogTransformation() => _logTransformation != null;

  // "normalization" field.
  String? _normalization;
  String get normalization => _normalization ?? '';
  bool hasNormalization() => _normalization != null;

  // "pca" field.
  String? _pca;
  String get pca => _pca ?? '';
  bool hasPca() => _pca != null;

  // "sqrt_transformation" field.
  String? _sqrtTransformation;
  String get sqrtTransformation => _sqrtTransformation ?? '';
  bool hasSqrtTransformation() => _sqrtTransformation != null;

  // "standardization" field.
  String? _standardization;
  String get standardization => _standardization ?? '';
  bool hasStandardization() => _standardization != null;

  // "processed_data_url" field.
  String? _processedDataUrl;
  String get processedDataUrl => _processedDataUrl ?? '';
  bool hasProcessedDataUrl() => _processedDataUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _logTransformation = snapshotData['log_transformation'] as String?;
    _normalization = snapshotData['normalization'] as String?;
    _pca = snapshotData['pca'] as String?;
    _sqrtTransformation = snapshotData['sqrt_transformation'] as String?;
    _standardization = snapshotData['standardization'] as String?;
    _processedDataUrl = snapshotData['processed_data_url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dataTransformation')
          : FirebaseFirestore.instance.collectionGroup('dataTransformation');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dataTransformation').doc(id);

  static Stream<DataTransformationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataTransformationRecord.fromSnapshot(s));

  static Future<DataTransformationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DataTransformationRecord.fromSnapshot(s));

  static DataTransformationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataTransformationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataTransformationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataTransformationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataTransformationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataTransformationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataTransformationRecordData({
  String? logTransformation,
  String? normalization,
  String? pca,
  String? sqrtTransformation,
  String? standardization,
  String? processedDataUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'log_transformation': logTransformation,
      'normalization': normalization,
      'pca': pca,
      'sqrt_transformation': sqrtTransformation,
      'standardization': standardization,
      'processed_data_url': processedDataUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataTransformationRecordDocumentEquality
    implements Equality<DataTransformationRecord> {
  const DataTransformationRecordDocumentEquality();

  @override
  bool equals(DataTransformationRecord? e1, DataTransformationRecord? e2) {
    return e1?.logTransformation == e2?.logTransformation &&
        e1?.normalization == e2?.normalization &&
        e1?.pca == e2?.pca &&
        e1?.sqrtTransformation == e2?.sqrtTransformation &&
        e1?.standardization == e2?.standardization &&
        e1?.processedDataUrl == e2?.processedDataUrl;
  }

  @override
  int hash(DataTransformationRecord? e) => const ListEquality().hash([
        e?.logTransformation,
        e?.normalization,
        e?.pca,
        e?.sqrtTransformation,
        e?.standardization,
        e?.processedDataUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is DataTransformationRecord;
}
