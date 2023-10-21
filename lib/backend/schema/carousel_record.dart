import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarouselRecord extends FirestoreRecord {
  CarouselRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  bool hasImage() => _image != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _url = snapshotData['url'] as String?;
    _image = ImageStruct.maybeFromMap(snapshotData['image']);
    _type = snapshotData['type'] as String?;
    _status = snapshotData['status'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carousel');

  static Stream<CarouselRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarouselRecord.fromSnapshot(s));

  static Future<CarouselRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarouselRecord.fromSnapshot(s));

  static CarouselRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarouselRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarouselRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarouselRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarouselRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarouselRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarouselRecordData({
  String? title,
  String? url,
  ImageStruct? image,
  String? type,
  bool? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'url': url,
      'image': ImageStruct().toMap(),
      'type': type,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  // Handle nested data for "image" field.
  addImageStructData(firestoreData, image, 'image');

  return firestoreData;
}

class CarouselRecordDocumentEquality implements Equality<CarouselRecord> {
  const CarouselRecordDocumentEquality();

  @override
  bool equals(CarouselRecord? e1, CarouselRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.url == e2?.url &&
        e1?.image == e2?.image &&
        e1?.type == e2?.type &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(CarouselRecord? e) => const ListEquality()
      .hash([e?.title, e?.url, e?.image, e?.type, e?.status, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is CarouselRecord;
}
