import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SellersRecord extends FirestoreRecord {
  SellersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "businessDetails" field.
  BusinessDetailsStruct? _businessDetails;
  BusinessDetailsStruct get businessDetails =>
      _businessDetails ?? BusinessDetailsStruct();
  bool hasBusinessDetails() => _businessDetails != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _businessDetails =
        BusinessDetailsStruct.maybeFromMap(snapshotData['businessDetails']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sellers');

  static Stream<SellersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SellersRecord.fromSnapshot(s));

  static Future<SellersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SellersRecord.fromSnapshot(s));

  static SellersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SellersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SellersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SellersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SellersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SellersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSellersRecordData({
  DocumentReference? userRef,
  BusinessDetailsStruct? businessDetails,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'businessDetails': BusinessDetailsStruct().toMap(),
      'created_at': createdAt,
    }.withoutNulls,
  );

  // Handle nested data for "businessDetails" field.
  addBusinessDetailsStructData(
      firestoreData, businessDetails, 'businessDetails');

  return firestoreData;
}

class SellersRecordDocumentEquality implements Equality<SellersRecord> {
  const SellersRecordDocumentEquality();

  @override
  bool equals(SellersRecord? e1, SellersRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.businessDetails == e2?.businessDetails &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SellersRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.businessDetails, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is SellersRecord;
}
