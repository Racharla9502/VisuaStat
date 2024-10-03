import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExploratoryDataAnalysisRecord extends FirestoreRecord {
  ExploratoryDataAnalysisRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "boxplot" field.
  String? _boxplot;
  String get boxplot => _boxplot ?? '';
  bool hasBoxplot() => _boxplot != null;

  // "correlation_matrix" field.
  String? _correlationMatrix;
  String get correlationMatrix => _correlationMatrix ?? '';
  bool hasCorrelationMatrix() => _correlationMatrix != null;

  // "numerical_distribution" field.
  String? _numericalDistribution;
  String get numericalDistribution => _numericalDistribution ?? '';
  bool hasNumericalDistribution() => _numericalDistribution != null;

  // "pairplot" field.
  String? _pairplot;
  String get pairplot => _pairplot ?? '';
  bool hasPairplot() => _pairplot != null;

  // "processed_data_url" field.
  String? _processedDataUrl;
  String get processedDataUrl => _processedDataUrl ?? '';
  bool hasProcessedDataUrl() => _processedDataUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _boxplot = snapshotData['boxplot'] as String?;
    _correlationMatrix = snapshotData['correlation_matrix'] as String?;
    _numericalDistribution = snapshotData['numerical_distribution'] as String?;
    _pairplot = snapshotData['pairplot'] as String?;
    _processedDataUrl = snapshotData['processed_data_url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('exploratoryDataAnalysis')
          : FirebaseFirestore.instance
              .collectionGroup('exploratoryDataAnalysis');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('exploratoryDataAnalysis').doc(id);

  static Stream<ExploratoryDataAnalysisRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ExploratoryDataAnalysisRecord.fromSnapshot(s));

  static Future<ExploratoryDataAnalysisRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ExploratoryDataAnalysisRecord.fromSnapshot(s));

  static ExploratoryDataAnalysisRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ExploratoryDataAnalysisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExploratoryDataAnalysisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExploratoryDataAnalysisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExploratoryDataAnalysisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExploratoryDataAnalysisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExploratoryDataAnalysisRecordData({
  String? boxplot,
  String? correlationMatrix,
  String? numericalDistribution,
  String? pairplot,
  String? processedDataUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'boxplot': boxplot,
      'correlation_matrix': correlationMatrix,
      'numerical_distribution': numericalDistribution,
      'pairplot': pairplot,
      'processed_data_url': processedDataUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExploratoryDataAnalysisRecordDocumentEquality
    implements Equality<ExploratoryDataAnalysisRecord> {
  const ExploratoryDataAnalysisRecordDocumentEquality();

  @override
  bool equals(
      ExploratoryDataAnalysisRecord? e1, ExploratoryDataAnalysisRecord? e2) {
    return e1?.boxplot == e2?.boxplot &&
        e1?.correlationMatrix == e2?.correlationMatrix &&
        e1?.numericalDistribution == e2?.numericalDistribution &&
        e1?.pairplot == e2?.pairplot &&
        e1?.processedDataUrl == e2?.processedDataUrl;
  }

  @override
  int hash(ExploratoryDataAnalysisRecord? e) => const ListEquality().hash([
        e?.boxplot,
        e?.correlationMatrix,
        e?.numericalDistribution,
        e?.pairplot,
        e?.processedDataUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ExploratoryDataAnalysisRecord;
}
