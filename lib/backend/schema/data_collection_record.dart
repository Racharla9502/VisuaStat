import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataCollectionRecord extends FirestoreRecord {
  DataCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "imagesdata_types_image" field.
  String? _imagesdataTypesImage;
  String get imagesdataTypesImage => _imagesdataTypesImage ?? '';
  bool hasImagesdataTypesImage() => _imagesdataTypesImage != null;

  // "imagesfirst_few_rows_image" field.
  String? _imagesfirstFewRowsImage;
  String get imagesfirstFewRowsImage => _imagesfirstFewRowsImage ?? '';
  bool hasImagesfirstFewRowsImage() => _imagesfirstFewRowsImage != null;

  // "imagesmissing_values_image" field.
  String? _imagesmissingValuesImage;
  String get imagesmissingValuesImage => _imagesmissingValuesImage ?? '';
  bool hasImagesmissingValuesImage() => _imagesmissingValuesImage != null;

  // "imagesshape_image" field.
  String? _imagesshapeImage;
  String get imagesshapeImage => _imagesshapeImage ?? '';
  bool hasImagesshapeImage() => _imagesshapeImage != null;

  // "imagessummary_statistics_image" field.
  String? _imagessummaryStatisticsImage;
  String get imagessummaryStatisticsImage =>
      _imagessummaryStatisticsImage ?? '';
  bool hasImagessummaryStatisticsImage() =>
      _imagessummaryStatisticsImage != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _file = snapshotData['file'] as String?;
    _imagesdataTypesImage = snapshotData['imagesdata_types_image'] as String?;
    _imagesfirstFewRowsImage =
        snapshotData['imagesfirst_few_rows_image'] as String?;
    _imagesmissingValuesImage =
        snapshotData['imagesmissing_values_image'] as String?;
    _imagesshapeImage = snapshotData['imagesshape_image'] as String?;
    _imagessummaryStatisticsImage =
        snapshotData['imagessummary_statistics_image'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dataCollection')
          : FirebaseFirestore.instance.collectionGroup('dataCollection');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dataCollection').doc(id);

  static Stream<DataCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataCollectionRecord.fromSnapshot(s));

  static Future<DataCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DataCollectionRecord.fromSnapshot(s));

  static DataCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataCollectionRecordData({
  String? file,
  String? imagesdataTypesImage,
  String? imagesfirstFewRowsImage,
  String? imagesmissingValuesImage,
  String? imagesshapeImage,
  String? imagessummaryStatisticsImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'file': file,
      'imagesdata_types_image': imagesdataTypesImage,
      'imagesfirst_few_rows_image': imagesfirstFewRowsImage,
      'imagesmissing_values_image': imagesmissingValuesImage,
      'imagesshape_image': imagesshapeImage,
      'imagessummary_statistics_image': imagessummaryStatisticsImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataCollectionRecordDocumentEquality
    implements Equality<DataCollectionRecord> {
  const DataCollectionRecordDocumentEquality();

  @override
  bool equals(DataCollectionRecord? e1, DataCollectionRecord? e2) {
    return e1?.file == e2?.file &&
        e1?.imagesdataTypesImage == e2?.imagesdataTypesImage &&
        e1?.imagesfirstFewRowsImage == e2?.imagesfirstFewRowsImage &&
        e1?.imagesmissingValuesImage == e2?.imagesmissingValuesImage &&
        e1?.imagesshapeImage == e2?.imagesshapeImage &&
        e1?.imagessummaryStatisticsImage == e2?.imagessummaryStatisticsImage;
  }

  @override
  int hash(DataCollectionRecord? e) => const ListEquality().hash([
        e?.file,
        e?.imagesdataTypesImage,
        e?.imagesfirstFewRowsImage,
        e?.imagesmissingValuesImage,
        e?.imagesshapeImage,
        e?.imagessummaryStatisticsImage
      ]);

  @override
  bool isValidKey(Object? o) => o is DataCollectionRecord;
}
