import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttributesRecord extends FirestoreRecord {
  AttributesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "attribute_name" field.
  String? _attributeName;
  String get attributeName => _attributeName ?? '';
  bool hasAttributeName() => _attributeName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _attributeName = snapshotData['attribute_name'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('attributes');

  static Stream<AttributesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttributesRecord.fromSnapshot(s));

  static Future<AttributesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttributesRecord.fromSnapshot(s));

  static AttributesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttributesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttributesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttributesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttributesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttributesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttributesRecordData({
  String? attributeName,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'attribute_name': attributeName,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttributesRecordDocumentEquality implements Equality<AttributesRecord> {
  const AttributesRecordDocumentEquality();

  @override
  bool equals(AttributesRecord? e1, AttributesRecord? e2) {
    return e1?.attributeName == e2?.attributeName &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(AttributesRecord? e) =>
      const ListEquality().hash([e?.attributeName, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is AttributesRecord;
}
