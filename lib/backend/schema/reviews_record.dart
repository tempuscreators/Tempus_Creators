import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "review" field.
  String? _review;
  String get review => _review ?? '';
  bool hasReview() => _review != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "dislikes" field.
  List<DocumentReference>? _dislikes;
  List<DocumentReference> get dislikes => _dislikes ?? const [];
  bool hasDislikes() => _dislikes != null;

  // "review_title" field.
  String? _reviewTitle;
  String get reviewTitle => _reviewTitle ?? '';
  bool hasReviewTitle() => _reviewTitle != null;

  // "review_images" field.
  List<String>? _reviewImages;
  List<String> get reviewImages => _reviewImages ?? const [];
  bool hasReviewImages() => _reviewImages != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _review = snapshotData['review'] as String?;
    _likes = getDataList(snapshotData['likes']);
    _dislikes = getDataList(snapshotData['dislikes']);
    _reviewTitle = snapshotData['review_title'] as String?;
    _reviewImages = getDataList(snapshotData['review_images']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  DocumentReference? productRef,
  DocumentReference? userRef,
  String? review,
  String? reviewTitle,
  DateTime? createdAt,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productRef': productRef,
      'userRef': userRef,
      'review': review,
      'review_title': reviewTitle,
      'created_at': createdAt,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.productRef == e2?.productRef &&
        e1?.userRef == e2?.userRef &&
        e1?.review == e2?.review &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        listEquality.equals(e1?.dislikes, e2?.dislikes) &&
        e1?.reviewTitle == e2?.reviewTitle &&
        listEquality.equals(e1?.reviewImages, e2?.reviewImages) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.productRef,
        e?.userRef,
        e?.review,
        e?.likes,
        e?.dislikes,
        e?.reviewTitle,
        e?.reviewImages,
        e?.createdAt,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
