import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModelEvaluationRecord extends FirestoreRecord {
  ModelEvaluationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "confusion_matrix" field.
  String? _confusionMatrix;
  String get confusionMatrix => _confusionMatrix ?? '';
  bool hasConfusionMatrix() => _confusionMatrix != null;

  // "metrics_barplot" field.
  String? _metricsBarplot;
  String get metricsBarplot => _metricsBarplot ?? '';
  bool hasMetricsBarplot() => _metricsBarplot != null;

  // "performance_metrics" field.
  String? _performanceMetrics;
  String get performanceMetrics => _performanceMetrics ?? '';
  bool hasPerformanceMetrics() => _performanceMetrics != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _confusionMatrix = snapshotData['confusion_matrix'] as String?;
    _metricsBarplot = snapshotData['metrics_barplot'] as String?;
    _performanceMetrics = snapshotData['performance_metrics'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('model_evaluation')
          : FirebaseFirestore.instance.collectionGroup('model_evaluation');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('model_evaluation').doc(id);

  static Stream<ModelEvaluationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModelEvaluationRecord.fromSnapshot(s));

  static Future<ModelEvaluationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModelEvaluationRecord.fromSnapshot(s));

  static ModelEvaluationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModelEvaluationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModelEvaluationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModelEvaluationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModelEvaluationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModelEvaluationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModelEvaluationRecordData({
  String? confusionMatrix,
  String? metricsBarplot,
  String? performanceMetrics,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'confusion_matrix': confusionMatrix,
      'metrics_barplot': metricsBarplot,
      'performance_metrics': performanceMetrics,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModelEvaluationRecordDocumentEquality
    implements Equality<ModelEvaluationRecord> {
  const ModelEvaluationRecordDocumentEquality();

  @override
  bool equals(ModelEvaluationRecord? e1, ModelEvaluationRecord? e2) {
    return e1?.confusionMatrix == e2?.confusionMatrix &&
        e1?.metricsBarplot == e2?.metricsBarplot &&
        e1?.performanceMetrics == e2?.performanceMetrics;
  }

  @override
  int hash(ModelEvaluationRecord? e) => const ListEquality()
      .hash([e?.confusionMatrix, e?.metricsBarplot, e?.performanceMetrics]);

  @override
  bool isValidKey(Object? o) => o is ModelEvaluationRecord;
}
