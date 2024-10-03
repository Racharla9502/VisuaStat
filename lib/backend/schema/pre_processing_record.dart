import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreProcessingRecord extends FirestoreRecord {
  PreProcessingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "classification" field.
  String? _classification;
  String get classification => _classification ?? '';
  bool hasClassification() => _classification != null;

  // "confusion_matrix" field.
  String? _confusionMatrix;
  String get confusionMatrix => _confusionMatrix ?? '';
  bool hasConfusionMatrix() => _confusionMatrix != null;

  // "data_view" field.
  String? _dataView;
  String get dataView => _dataView ?? '';
  bool hasDataView() => _dataView != null;

  // "processed_data_url" field.
  String? _processedDataUrl;
  String get processedDataUrl => _processedDataUrl ?? '';
  bool hasProcessedDataUrl() => _processedDataUrl != null;

  // "accuracy" field.
  double? _accuracy;
  double get accuracy => _accuracy ?? 0.0;
  bool hasAccuracy() => _accuracy != null;

  // "regression_report" field.
  String? _regressionReport;
  String get regressionReport => _regressionReport ?? '';
  bool hasRegressionReport() => _regressionReport != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _classification = snapshotData['classification'] as String?;
    _confusionMatrix = snapshotData['confusion_matrix'] as String?;
    _dataView = snapshotData['data_view'] as String?;
    _processedDataUrl = snapshotData['processed_data_url'] as String?;
    _accuracy = castToType<double>(snapshotData['accuracy']);
    _regressionReport = snapshotData['regression_report'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('preProcessing')
          : FirebaseFirestore.instance.collectionGroup('preProcessing');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('preProcessing').doc(id);

  static Stream<PreProcessingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreProcessingRecord.fromSnapshot(s));

  static Future<PreProcessingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PreProcessingRecord.fromSnapshot(s));

  static PreProcessingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreProcessingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreProcessingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreProcessingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreProcessingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreProcessingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreProcessingRecordData({
  String? classification,
  String? confusionMatrix,
  String? dataView,
  String? processedDataUrl,
  double? accuracy,
  String? regressionReport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'classification': classification,
      'confusion_matrix': confusionMatrix,
      'data_view': dataView,
      'processed_data_url': processedDataUrl,
      'accuracy': accuracy,
      'regression_report': regressionReport,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreProcessingRecordDocumentEquality
    implements Equality<PreProcessingRecord> {
  const PreProcessingRecordDocumentEquality();

  @override
  bool equals(PreProcessingRecord? e1, PreProcessingRecord? e2) {
    return e1?.classification == e2?.classification &&
        e1?.confusionMatrix == e2?.confusionMatrix &&
        e1?.dataView == e2?.dataView &&
        e1?.processedDataUrl == e2?.processedDataUrl &&
        e1?.accuracy == e2?.accuracy &&
        e1?.regressionReport == e2?.regressionReport;
  }

  @override
  int hash(PreProcessingRecord? e) => const ListEquality().hash([
        e?.classification,
        e?.confusionMatrix,
        e?.dataView,
        e?.processedDataUrl,
        e?.accuracy,
        e?.regressionReport
      ]);

  @override
  bool isValidKey(Object? o) => o is PreProcessingRecord;
}
