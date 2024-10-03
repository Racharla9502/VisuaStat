import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModellingRecord extends FirestoreRecord {
  ModellingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _imagesclusterSizesPie = snapshotData['imagescluster_sizes_pie'] as String?;
    _imagesclustering = snapshotData['imagesclustering'] as String?;
    _imagesmse = snapshotData['imagesmse'] as String?;
    _imagesr2 = snapshotData['imagesr2'] as String?;
    _imagesregressionMetricsPie =
        snapshotData['imagesregression_metrics_pie'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Modelling')
          : FirebaseFirestore.instance.collectionGroup('Modelling');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Modelling').doc(id);

  static Stream<ModellingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModellingRecord.fromSnapshot(s));

  static Future<ModellingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModellingRecord.fromSnapshot(s));

  static ModellingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModellingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModellingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModellingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModellingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModellingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModellingRecordData({
  String? imagesclusterSizesPie,
  String? imagesclustering,
  String? imagesmse,
  String? imagesr2,
  String? imagesregressionMetricsPie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imagescluster_sizes_pie': imagesclusterSizesPie,
      'imagesclustering': imagesclustering,
      'imagesmse': imagesmse,
      'imagesr2': imagesr2,
      'imagesregression_metrics_pie': imagesregressionMetricsPie,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModellingRecordDocumentEquality implements Equality<ModellingRecord> {
  const ModellingRecordDocumentEquality();

  @override
  bool equals(ModellingRecord? e1, ModellingRecord? e2) {
    return e1?.imagesclusterSizesPie == e2?.imagesclusterSizesPie &&
        e1?.imagesclustering == e2?.imagesclustering &&
        e1?.imagesmse == e2?.imagesmse &&
        e1?.imagesr2 == e2?.imagesr2 &&
        e1?.imagesregressionMetricsPie == e2?.imagesregressionMetricsPie;
  }

  @override
  int hash(ModellingRecord? e) => const ListEquality().hash([
        e?.imagesclusterSizesPie,
        e?.imagesclustering,
        e?.imagesmse,
        e?.imagesr2,
        e?.imagesregressionMetricsPie
      ]);

  @override
  bool isValidKey(Object? o) => o is ModellingRecord;
}
