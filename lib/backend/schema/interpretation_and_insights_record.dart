import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterpretationAndInsightsRecord extends FirestoreRecord {
  InterpretationAndInsightsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "correlation_heatmap" field.
  String? _correlationHeatmap;
  String get correlationHeatmap => _correlationHeatmap ?? '';
  bool hasCorrelationHeatmap() => _correlationHeatmap != null;

  // "summary_stats" field.
  String? _summaryStats;
  String get summaryStats => _summaryStats ?? '';
  bool hasSummaryStats() => _summaryStats != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _correlationHeatmap = snapshotData['correlation_heatmap'] as String?;
    _summaryStats = snapshotData['summary_stats'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Interpretation_and_Insights')
          : FirebaseFirestore.instance
              .collectionGroup('Interpretation_and_Insights');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Interpretation_and_Insights').doc(id);

  static Stream<InterpretationAndInsightsRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => InterpretationAndInsightsRecord.fromSnapshot(s));

  static Future<InterpretationAndInsightsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InterpretationAndInsightsRecord.fromSnapshot(s));

  static InterpretationAndInsightsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      InterpretationAndInsightsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterpretationAndInsightsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterpretationAndInsightsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterpretationAndInsightsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterpretationAndInsightsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterpretationAndInsightsRecordData({
  String? correlationHeatmap,
  String? summaryStats,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correlation_heatmap': correlationHeatmap,
      'summary_stats': summaryStats,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterpretationAndInsightsRecordDocumentEquality
    implements Equality<InterpretationAndInsightsRecord> {
  const InterpretationAndInsightsRecordDocumentEquality();

  @override
  bool equals(InterpretationAndInsightsRecord? e1,
      InterpretationAndInsightsRecord? e2) {
    return e1?.correlationHeatmap == e2?.correlationHeatmap &&
        e1?.summaryStats == e2?.summaryStats;
  }

  @override
  int hash(InterpretationAndInsightsRecord? e) =>
      const ListEquality().hash([e?.correlationHeatmap, e?.summaryStats]);

  @override
  bool isValidKey(Object? o) => o is InterpretationAndInsightsRecord;
}
