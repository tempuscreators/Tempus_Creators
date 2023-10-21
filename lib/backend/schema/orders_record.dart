import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "productRef" field.
  List<DocumentReference>? _productRef;
  List<DocumentReference> get productRef => _productRef ?? const [];
  bool hasProductRef() => _productRef != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "order_value" field.
  OrderValueStruct? _orderValue;
  OrderValueStruct get orderValue => _orderValue ?? OrderValueStruct();
  bool hasOrderValue() => _orderValue != null;

  // "order_item" field.
  List<ProductStruct>? _orderItem;
  List<ProductStruct> get orderItem => _orderItem ?? const [];
  bool hasOrderItem() => _orderItem != null;

  // "delivery_status" field.
  String? _deliveryStatus;
  String get deliveryStatus => _deliveryStatus ?? '';
  bool hasDeliveryStatus() => _deliveryStatus != null;

  void _initializeFields() {
    _orderId = snapshotData['orderId'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _productRef = getDataList(snapshotData['productRef']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _orderValue = OrderValueStruct.maybeFromMap(snapshotData['order_value']);
    _orderItem = getStructList(
      snapshotData['order_item'],
      ProductStruct.fromMap,
    );
    _deliveryStatus = snapshotData['delivery_status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderId,
  DocumentReference? user,
  DateTime? createdAt,
  String? status,
  OrderValueStruct? orderValue,
  String? deliveryStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderId': orderId,
      'user': user,
      'created_at': createdAt,
      'status': status,
      'order_value': OrderValueStruct().toMap(),
      'delivery_status': deliveryStatus,
    }.withoutNulls,
  );

  // Handle nested data for "order_value" field.
  addOrderValueStructData(firestoreData, orderValue, 'order_value');

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderId == e2?.orderId &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.productRef, e2?.productRef) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        e1?.orderValue == e2?.orderValue &&
        listEquality.equals(e1?.orderItem, e2?.orderItem) &&
        e1?.deliveryStatus == e2?.deliveryStatus;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderId,
        e?.user,
        e?.productRef,
        e?.createdAt,
        e?.status,
        e?.orderValue,
        e?.orderItem,
        e?.deliveryStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
