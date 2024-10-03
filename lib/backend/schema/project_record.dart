import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectRecord extends FirestoreRecord {
  ProjectRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "docRefID" field.
  DocumentReference? _docRefID;
  DocumentReference? get docRefID => _docRefID;
  bool hasDocRefID() => _docRefID != null;

  // "updatedFile" field.
  String? _updatedFile;
  String get updatedFile => _updatedFile ?? '';
  bool hasUpdatedFile() => _updatedFile != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "preProcessed_file" field.
  String? _preProcessedFile;
  String get preProcessedFile => _preProcessedFile ?? '';
  bool hasPreProcessedFile() => _preProcessedFile != null;

  // "edaProcessed_file" field.
  String? _edaProcessedFile;
  String get edaProcessedFile => _edaProcessedFile ?? '';
  bool hasEdaProcessedFile() => _edaProcessedFile != null;

  // "dataTransposeUpdatedfile" field.
  String? _dataTransposeUpdatedfile;
  String get dataTransposeUpdatedfile => _dataTransposeUpdatedfile ?? '';
  bool hasDataTransposeUpdatedfile() => _dataTransposeUpdatedfile != null;

  // "imagescluster_sizes_pie" field.
  String? _imagesclusterSizesPie;
  String get imagesclusterSizesPie => _imagesclusterSizesPie ?? '';
  bool hasImagesclusterSizesPie() => _imagesclusterSizesPie != null;

  // "imagesclustering" field.
  String? _imagesclustering;
  String get imagesclustering => _imagesclustering ?? '';
  bool hasImagesclustering() => _imagesclustering != null;

  // "imagesmse" field.
  String? _imagesmse;
  String get imagesmse => _imagesmse ?? '';
  bool hasImagesmse() => _imagesmse != null;

  // "imagesr2" field.
  String? _imagesr2;
  String get imagesr2 => _imagesr2 ?? '';
  bool hasImagesr2() => _imagesr2 != null;

  // "imagesregression_metrics_pie" field.
  String? _imagesregressionMetricsPie;
  String get imagesregressionMetricsPie => _imagesregressionMetricsPie ?? '';
  bool hasImagesregressionMetricsPie() => _imagesregressionMetricsPie != null;

  // "imagesconfusion_matrix" field.
  String? _imagesconfusionMatrix;
  String get imagesconfusionMatrix => _imagesconfusionMatrix ?? '';
  bool hasImagesconfusionMatrix() => _imagesconfusionMatrix != null;

  // "imagesmetrics_barplot" field.
  String? _imagesmetricsBarplot;
  String get imagesmetricsBarplot => _imagesmetricsBarplot ?? '';
  bool hasImagesmetricsBarplot() => _imagesmetricsBarplot != null;

  // "imagesperformance_metrics" field.
  String? _imagesperformanceMetrics;
  String get imagesperformanceMetrics => _imagesperformanceMetrics ?? '';
  bool hasImagesperformanceMetrics() => _imagesperformanceMetrics != null;

  // "insights_imagescorrelation_heatmap" field.
  String? _insightsImagescorrelationHeatmap;
  String get insightsImagescorrelationHeatmap =>
      _insightsImagescorrelationHeatmap ?? '';
  bool hasInsightsImagescorrelationHeatmap() =>
      _insightsImagescorrelationHeatmap != null;

  // "insights_imagessummary_stats" field.
  String? _insightsImagessummaryStats;
  String get insightsImagessummaryStats => _insightsImagessummaryStats ?? '';
  bool hasInsightsImagessummaryStats() => _insightsImagessummaryStats != null;

  void _initializeFields() {
    _projectName = snapshotData['projectName'] as String?;
    _docRefID = snapshotData['docRefID'] as DocumentReference?;
    _updatedFile = snapshotData['updatedFile'] as String?;
    _file = snapshotData['file'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _preProcessedFile = snapshotData['preProcessed_file'] as String?;
    _edaProcessedFile = snapshotData['edaProcessed_file'] as String?;
    _dataTransposeUpdatedfile =
        snapshotData['dataTransposeUpdatedfile'] as String?;
    _imagesclusterSizesPie = snapshotData['imagescluster_sizes_pie'] as String?;
    _imagesclustering = snapshotData['imagesclustering'] as String?;
    _imagesmse = snapshotData['imagesmse'] as String?;
    _imagesr2 = snapshotData['imagesr2'] as String?;
    _imagesregressionMetricsPie =
        snapshotData['imagesregression_metrics_pie'] as String?;
    _imagesconfusionMatrix = snapshotData['imagesconfusion_matrix'] as String?;
    _imagesmetricsBarplot = snapshotData['imagesmetrics_barplot'] as String?;
    _imagesperformanceMetrics =
        snapshotData['imagesperformance_metrics'] as String?;
    _insightsImagescorrelationHeatmap =
        snapshotData['insights_imagescorrelation_heatmap'] as String?;
    _insightsImagessummaryStats =
        snapshotData['insights_imagessummary_stats'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Project');

  static Stream<ProjectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectRecord.fromSnapshot(s));

  static Future<ProjectRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectRecord.fromSnapshot(s));

  static ProjectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectRecordData({
  String? projectName,
  DocumentReference? docRefID,
  String? updatedFile,
  String? file,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? preProcessedFile,
  String? edaProcessedFile,
  String? dataTransposeUpdatedfile,
  String? imagesclusterSizesPie,
  String? imagesclustering,
  String? imagesmse,
  String? imagesr2,
  String? imagesregressionMetricsPie,
  String? imagesconfusionMatrix,
  String? imagesmetricsBarplot,
  String? imagesperformanceMetrics,
  String? insightsImagescorrelationHeatmap,
  String? insightsImagessummaryStats,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectName': projectName,
      'docRefID': docRefID,
      'updatedFile': updatedFile,
      'file': file,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'preProcessed_file': preProcessedFile,
      'edaProcessed_file': edaProcessedFile,
      'dataTransposeUpdatedfile': dataTransposeUpdatedfile,
      'imagescluster_sizes_pie': imagesclusterSizesPie,
      'imagesclustering': imagesclustering,
      'imagesmse': imagesmse,
      'imagesr2': imagesr2,
      'imagesregression_metrics_pie': imagesregressionMetricsPie,
      'imagesconfusion_matrix': imagesconfusionMatrix,
      'imagesmetrics_barplot': imagesmetricsBarplot,
      'imagesperformance_metrics': imagesperformanceMetrics,
      'insights_imagescorrelation_heatmap': insightsImagescorrelationHeatmap,
      'insights_imagessummary_stats': insightsImagessummaryStats,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectRecordDocumentEquality implements Equality<ProjectRecord> {
  const ProjectRecordDocumentEquality();

  @override
  bool equals(ProjectRecord? e1, ProjectRecord? e2) {
    return e1?.projectName == e2?.projectName &&
        e1?.docRefID == e2?.docRefID &&
        e1?.updatedFile == e2?.updatedFile &&
        e1?.file == e2?.file &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.preProcessedFile == e2?.preProcessedFile &&
        e1?.edaProcessedFile == e2?.edaProcessedFile &&
        e1?.dataTransposeUpdatedfile == e2?.dataTransposeUpdatedfile &&
        e1?.imagesclusterSizesPie == e2?.imagesclusterSizesPie &&
        e1?.imagesclustering == e2?.imagesclustering &&
        e1?.imagesmse == e2?.imagesmse &&
        e1?.imagesr2 == e2?.imagesr2 &&
        e1?.imagesregressionMetricsPie == e2?.imagesregressionMetricsPie &&
        e1?.imagesconfusionMatrix == e2?.imagesconfusionMatrix &&
        e1?.imagesmetricsBarplot == e2?.imagesmetricsBarplot &&
        e1?.imagesperformanceMetrics == e2?.imagesperformanceMetrics &&
        e1?.insightsImagescorrelationHeatmap ==
            e2?.insightsImagescorrelationHeatmap &&
        e1?.insightsImagessummaryStats == e2?.insightsImagessummaryStats;
  }

  @override
  int hash(ProjectRecord? e) => const ListEquality().hash([
        e?.projectName,
        e?.docRefID,
        e?.updatedFile,
        e?.file,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.preProcessedFile,
        e?.edaProcessedFile,
        e?.dataTransposeUpdatedfile,
        e?.imagesclusterSizesPie,
        e?.imagesclustering,
        e?.imagesmse,
        e?.imagesr2,
        e?.imagesregressionMetricsPie,
        e?.imagesconfusionMatrix,
        e?.imagesmetricsBarplot,
        e?.imagesperformanceMetrics,
        e?.insightsImagescorrelationHeatmap,
        e?.insightsImagessummaryStats
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectRecord;
}
