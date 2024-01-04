// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderValueStruct extends FFFirebaseStruct {
  OrderValueStruct({
    double? subTotal,
    double? discount,
    double? deliiveryCharge,
    double? tax,
    double? totalAmount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _subTotal = subTotal,
        _discount = discount,
        _deliiveryCharge = deliiveryCharge,
        _tax = tax,
        _totalAmount = totalAmount,
        super(firestoreUtilData);

  // "sub_total" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  set subTotal(double? val) => _subTotal = val;
  void incrementSubTotal(double amount) => _subTotal = subTotal + amount;
  bool hasSubTotal() => _subTotal != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;
  void incrementDiscount(double amount) => _discount = discount + amount;
  bool hasDiscount() => _discount != null;

  // "deliivery_charge" field.
  double? _deliiveryCharge;
  double get deliiveryCharge => _deliiveryCharge ?? 0.0;
  set deliiveryCharge(double? val) => _deliiveryCharge = val;
  void incrementDeliiveryCharge(double amount) =>
      _deliiveryCharge = deliiveryCharge + amount;
  bool hasDeliiveryCharge() => _deliiveryCharge != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  set tax(double? val) => _tax = val;
  void incrementTax(double amount) => _tax = tax + amount;
  bool hasTax() => _tax != null;

  // "total_amount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;
  void incrementTotalAmount(double amount) =>
      _totalAmount = totalAmount + amount;
  bool hasTotalAmount() => _totalAmount != null;

  static OrderValueStruct fromMap(Map<String, dynamic> data) =>
      OrderValueStruct(
        subTotal: castToType<double>(data['sub_total']),
        discount: castToType<double>(data['discount']),
        deliiveryCharge: castToType<double>(data['deliivery_charge']),
        tax: castToType<double>(data['tax']),
        totalAmount: castToType<double>(data['total_amount']),
      );

  static OrderValueStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderValueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sub_total': _subTotal,
        'discount': _discount,
        'deliivery_charge': _deliiveryCharge,
        'tax': _tax,
        'total_amount': _totalAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sub_total': serializeParam(
          _subTotal,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'deliivery_charge': serializeParam(
          _deliiveryCharge,
          ParamType.double,
        ),
        'tax': serializeParam(
          _tax,
          ParamType.double,
        ),
        'total_amount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
      }.withoutNulls;

  static OrderValueStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderValueStruct(
        subTotal: deserializeParam(
          data['sub_total'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        deliiveryCharge: deserializeParam(
          data['deliivery_charge'],
          ParamType.double,
          false,
        ),
        tax: deserializeParam(
          data['tax'],
          ParamType.double,
          false,
        ),
        totalAmount: deserializeParam(
          data['total_amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OrderValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderValueStruct &&
        subTotal == other.subTotal &&
        discount == other.discount &&
        deliiveryCharge == other.deliiveryCharge &&
        tax == other.tax &&
        totalAmount == other.totalAmount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([subTotal, discount, deliiveryCharge, tax, totalAmount]);
}

OrderValueStruct createOrderValueStruct({
  double? subTotal,
  double? discount,
  double? deliiveryCharge,
  double? tax,
  double? totalAmount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderValueStruct(
      subTotal: subTotal,
      discount: discount,
      deliiveryCharge: deliiveryCharge,
      tax: tax,
      totalAmount: totalAmount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderValueStruct? updateOrderValueStruct(
  OrderValueStruct? orderValue, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderValue
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderValueStructData(
  Map<String, dynamic> firestoreData,
  OrderValueStruct? orderValue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderValue == null) {
    return;
  }
  if (orderValue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderValue.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderValueData = getOrderValueFirestoreData(orderValue, forFieldValue);
  final nestedData = orderValueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderValue.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderValueFirestoreData(
  OrderValueStruct? orderValue, [
  bool forFieldValue = false,
]) {
  if (orderValue == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderValue.toMap());

  // Add any Firestore field values
  orderValue.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderValueListFirestoreData(
  List<OrderValueStruct>? orderValues,
) =>
    orderValues?.map((e) => getOrderValueFirestoreData(e, true)).toList() ?? [];
