// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceStruct extends FFFirebaseStruct {
  PriceStruct({
    double? price,
    double? discount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _price = price,
        _discount = discount,
        super(firestoreUtilData);

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;
  void incrementDiscount(double amount) => _discount = discount + amount;
  bool hasDiscount() => _discount != null;

  static PriceStruct fromMap(Map<String, dynamic> data) => PriceStruct(
        price: castToType<double>(data['price']),
        discount: castToType<double>(data['discount']),
      );

  static PriceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PriceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'price': _price,
        'discount': _discount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
      }.withoutNulls;

  static PriceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PriceStruct(
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PriceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PriceStruct &&
        price == other.price &&
        discount == other.discount;
  }

  @override
  int get hashCode => const ListEquality().hash([price, discount]);
}

PriceStruct createPriceStruct({
  double? price,
  double? discount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PriceStruct(
      price: price,
      discount: discount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PriceStruct? updatePriceStruct(
  PriceStruct? priceStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    priceStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPriceStructData(
  Map<String, dynamic> firestoreData,
  PriceStruct? priceStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (priceStruct == null) {
    return;
  }
  if (priceStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && priceStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final priceStructData = getPriceFirestoreData(priceStruct, forFieldValue);
  final nestedData =
      priceStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = priceStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPriceFirestoreData(
  PriceStruct? priceStruct, [
  bool forFieldValue = false,
]) {
  if (priceStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(priceStruct.toMap());

  // Add any Firestore field values
  priceStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPriceListFirestoreData(
  List<PriceStruct>? priceStructs,
) =>
    priceStructs?.map((e) => getPriceFirestoreData(e, true)).toList() ?? [];
