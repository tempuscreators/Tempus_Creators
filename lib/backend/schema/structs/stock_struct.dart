// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StockStruct extends FFFirebaseStruct {
  StockStruct({
    int? quantity,
    bool? inStock,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantity = quantity,
        _inStock = inStock,
        super(firestoreUtilData);

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "in_stock" field.
  bool? _inStock;
  bool get inStock => _inStock ?? false;
  set inStock(bool? val) => _inStock = val;
  bool hasInStock() => _inStock != null;

  static StockStruct fromMap(Map<String, dynamic> data) => StockStruct(
        quantity: castToType<int>(data['quantity']),
        inStock: data['in_stock'] as bool?,
      );

  static StockStruct? maybeFromMap(dynamic data) =>
      data is Map ? StockStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'quantity': _quantity,
        'in_stock': _inStock,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'in_stock': serializeParam(
          _inStock,
          ParamType.bool,
        ),
      }.withoutNulls;

  static StockStruct fromSerializableMap(Map<String, dynamic> data) =>
      StockStruct(
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        inStock: deserializeParam(
          data['in_stock'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'StockStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StockStruct &&
        quantity == other.quantity &&
        inStock == other.inStock;
  }

  @override
  int get hashCode => const ListEquality().hash([quantity, inStock]);
}

StockStruct createStockStruct({
  int? quantity,
  bool? inStock,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StockStruct(
      quantity: quantity,
      inStock: inStock,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StockStruct? updateStockStruct(
  StockStruct? stock, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    stock
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStockStructData(
  Map<String, dynamic> firestoreData,
  StockStruct? stock,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (stock == null) {
    return;
  }
  if (stock.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && stock.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stockData = getStockFirestoreData(stock, forFieldValue);
  final nestedData = stockData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = stock.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStockFirestoreData(
  StockStruct? stock, [
  bool forFieldValue = false,
]) {
  if (stock == null) {
    return {};
  }
  final firestoreData = mapToFirestore(stock.toMap());

  // Add any Firestore field values
  stock.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStockListFirestoreData(
  List<StockStruct>? stocks,
) =>
    stocks?.map((e) => getStockFirestoreData(e, true)).toList() ?? [];
