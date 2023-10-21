import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponsRecord extends FirestoreRecord {
  CouponsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "discount_type" field.
  String? _discountType;
  String get discountType => _discountType ?? '';
  bool hasDiscountType() => _discountType != null;

  // "discount_value" field.
  double? _discountValue;
  double get discountValue => _discountValue ?? 0.0;
  bool hasDiscountValue() => _discountValue != null;

  // "max_uses" field.
  int? _maxUses;
  int get maxUses => _maxUses ?? 0;
  bool hasMaxUses() => _maxUses != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "coupon_users" field.
  List<DocumentReference>? _couponUsers;
  List<DocumentReference> get couponUsers => _couponUsers ?? const [];
  bool hasCouponUsers() => _couponUsers != null;

  // "coupon_products" field.
  List<DocumentReference>? _couponProducts;
  List<DocumentReference> get couponProducts => _couponProducts ?? const [];
  bool hasCouponProducts() => _couponProducts != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
    _description = snapshotData['description'] as String?;
    _discountType = snapshotData['discount_type'] as String?;
    _discountValue = castToType<double>(snapshotData['discount_value']);
    _maxUses = castToType<int>(snapshotData['max_uses']);
    _startDate = snapshotData['start_date'] as DateTime?;
    _endDate = snapshotData['end_date'] as DateTime?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _couponUsers = getDataList(snapshotData['coupon_users']);
    _couponProducts = getDataList(snapshotData['coupon_products']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coupons');

  static Stream<CouponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CouponsRecord.fromSnapshot(s));

  static Future<CouponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CouponsRecord.fromSnapshot(s));

  static CouponsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CouponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CouponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CouponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CouponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CouponsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCouponsRecordData({
  String? code,
  String? description,
  String? discountType,
  double? discountValue,
  int? maxUses,
  DateTime? startDate,
  DateTime? endDate,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
      'description': description,
      'discount_type': discountType,
      'discount_value': discountValue,
      'max_uses': maxUses,
      'start_date': startDate,
      'end_date': endDate,
      'created_at': createdAt,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class CouponsRecordDocumentEquality implements Equality<CouponsRecord> {
  const CouponsRecordDocumentEquality();

  @override
  bool equals(CouponsRecord? e1, CouponsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.code == e2?.code &&
        e1?.description == e2?.description &&
        e1?.discountType == e2?.discountType &&
        e1?.discountValue == e2?.discountValue &&
        e1?.maxUses == e2?.maxUses &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        listEquality.equals(e1?.couponUsers, e2?.couponUsers) &&
        listEquality.equals(e1?.couponProducts, e2?.couponProducts);
  }

  @override
  int hash(CouponsRecord? e) => const ListEquality().hash([
        e?.code,
        e?.description,
        e?.discountType,
        e?.discountValue,
        e?.maxUses,
        e?.startDate,
        e?.endDate,
        e?.createdAt,
        e?.updatedAt,
        e?.couponUsers,
        e?.couponProducts
      ]);

  @override
  bool isValidKey(Object? o) => o is CouponsRecord;
}
