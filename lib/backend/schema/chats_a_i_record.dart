import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsAIRecord extends FirestoreRecord {
  ChatsAIRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "timestamps" field.
  DateTime? _timestamps;
  DateTime? get timestamps => _timestamps;
  bool hasTimestamps() => _timestamps != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _timestamps = snapshotData['timestamps'] as DateTime?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatsAI');

  static Stream<ChatsAIRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsAIRecord.fromSnapshot(s));

  static Future<ChatsAIRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsAIRecord.fromSnapshot(s));

  static ChatsAIRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatsAIRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsAIRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsAIRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsAIRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsAIRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsAIRecordData({
  DocumentReference? uid,
  DateTime? timestamps,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'timestamps': timestamps,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsAIRecordDocumentEquality implements Equality<ChatsAIRecord> {
  const ChatsAIRecordDocumentEquality();

  @override
  bool equals(ChatsAIRecord? e1, ChatsAIRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.timestamps == e2?.timestamps &&
        e1?.title == e2?.title;
  }

  @override
  int hash(ChatsAIRecord? e) =>
      const ListEquality().hash([e?.uid, e?.timestamps, e?.title]);

  @override
  bool isValidKey(Object? o) => o is ChatsAIRecord;
}
