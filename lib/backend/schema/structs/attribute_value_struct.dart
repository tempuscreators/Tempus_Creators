// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttributeValueStruct extends FFFirebaseStruct {
  AttributeValueStruct({
    String? attributeValue,
    String? image,
    double? regularPrice,
    double? salePrice,
    int? quantity,
    String? sku,
    String? stockStatus,
    DimensionStruct? dimension,
    double? weight,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _attributeValue = attributeValue,
        _image = image,
        _regularPrice = regularPrice,
        _salePrice = salePrice,
        _quantity = quantity,
        _sku = sku,
        _stockStatus = stockStatus,
        _dimension = dimension,
        _weight = weight,
        super(firestoreUtilData);

  // "attribute_value" field.
  String? _attributeValue;
  String get attributeValue => _attributeValue ?? '';
  set attributeValue(String? val) => _attributeValue = val;
  bool hasAttributeValue() => _attributeValue != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "regular_price" field.
  double? _regularPrice;
  double get regularPrice => _regularPrice ?? 0.0;
  set regularPrice(double? val) => _regularPrice = val;
  void incrementRegularPrice(double amount) =>
      _regularPrice = regularPrice + amount;
  bool hasRegularPrice() => _regularPrice != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  set salePrice(double? val) => _salePrice = val;
  void incrementSalePrice(double amount) => _salePrice = salePrice + amount;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;
  bool hasSku() => _sku != null;

  // "stock_status" field.
  String? _stockStatus;
  String get stockStatus => _stockStatus ?? '';
  set stockStatus(String? val) => _stockStatus = val;
  bool hasStockStatus() => _stockStatus != null;

  // "dimension" field.
  DimensionStruct? _dimension;
  DimensionStruct get dimension => _dimension ?? DimensionStruct();
  set dimension(DimensionStruct? val) => _dimension = val;
  void updateDimension(Function(DimensionStruct) updateFn) =>
      updateFn(_dimension ??= DimensionStruct());
  bool hasDimension() => _dimension != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  set weight(double? val) => _weight = val;
  void incrementWeight(double amount) => _weight = weight + amount;
  bool hasWeight() => _weight != null;

  static AttributeValueStruct fromMap(Map<String, dynamic> data) =>
      AttributeValueStruct(
        attributeValue: data['attribute_value'] as String?,
        image: data['image'] as String?,
        regularPrice: castToType<double>(data['regular_price']),
        salePrice: castToType<double>(data['sale_price']),
        quantity: castToType<int>(data['quantity']),
        sku: data['sku'] as String?,
        stockStatus: data['stock_status'] as String?,
        dimension: DimensionStruct.maybeFromMap(data['dimension']),
        weight: castToType<double>(data['weight']),
      );

  static AttributeValueStruct? maybeFromMap(dynamic data) => data is Map
      ? AttributeValueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'attribute_value': _attributeValue,
        'image': _image,
        'regular_price': _regularPrice,
        'sale_price': _salePrice,
        'quantity': _quantity,
        'sku': _sku,
        'stock_status': _stockStatus,
        'dimension': _dimension?.toMap(),
        'weight': _weight,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'attribute_value': serializeParam(
          _attributeValue,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'regular_price': serializeParam(
          _regularPrice,
          ParamType.double,
        ),
        'sale_price': serializeParam(
          _salePrice,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'stock_status': serializeParam(
          _stockStatus,
          ParamType.String,
        ),
        'dimension': serializeParam(
          _dimension,
          ParamType.DataStruct,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
        ),
      }.withoutNulls;

  static AttributeValueStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttributeValueStruct(
        attributeValue: deserializeParam(
          data['attribute_value'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        regularPrice: deserializeParam(
          data['regular_price'],
          ParamType.double,
          false,
        ),
        salePrice: deserializeParam(
          data['sale_price'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        stockStatus: deserializeParam(
          data['stock_status'],
          ParamType.String,
          false,
        ),
        dimension: deserializeStructParam(
          data['dimension'],
          ParamType.DataStruct,
          false,
          structBuilder: DimensionStruct.fromSerializableMap,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'AttributeValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttributeValueStruct &&
        attributeValue == other.attributeValue &&
        image == other.image &&
        regularPrice == other.regularPrice &&
        salePrice == other.salePrice &&
        quantity == other.quantity &&
        sku == other.sku &&
        stockStatus == other.stockStatus &&
        dimension == other.dimension &&
        weight == other.weight;
  }

  @override
  int get hashCode => const ListEquality().hash([
        attributeValue,
        image,
        regularPrice,
        salePrice,
        quantity,
        sku,
        stockStatus,
        dimension,
        weight
      ]);
}

AttributeValueStruct createAttributeValueStruct({
  String? attributeValue,
  String? image,
  double? regularPrice,
  double? salePrice,
  int? quantity,
  String? sku,
  String? stockStatus,
  DimensionStruct? dimension,
  double? weight,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AttributeValueStruct(
      attributeValue: attributeValue,
      image: image,
      regularPrice: regularPrice,
      salePrice: salePrice,
      quantity: quantity,
      sku: sku,
      stockStatus: stockStatus,
      dimension: dimension ?? (clearUnsetFields ? DimensionStruct() : null),
      weight: weight,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AttributeValueStruct? updateAttributeValueStruct(
  AttributeValueStruct? attributeValueStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    attributeValueStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAttributeValueStructData(
  Map<String, dynamic> firestoreData,
  AttributeValueStruct? attributeValueStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (attributeValueStruct == null) {
    return;
  }
  if (attributeValueStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && attributeValueStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final attributeValueStructData =
      getAttributeValueFirestoreData(attributeValueStruct, forFieldValue);
  final nestedData =
      attributeValueStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      attributeValueStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAttributeValueFirestoreData(
  AttributeValueStruct? attributeValueStruct, [
  bool forFieldValue = false,
]) {
  if (attributeValueStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(attributeValueStruct.toMap());

  // Handle nested data for "dimension" field.
  addDimensionStructData(
    firestoreData,
    attributeValueStruct.hasDimension() ? attributeValueStruct.dimension : null,
    'dimension',
    forFieldValue,
  );

  // Add any Firestore field values
  attributeValueStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAttributeValueListFirestoreData(
  List<AttributeValueStruct>? attributeValueStructs,
) =>
    attributeValueStructs
        ?.map((e) => getAttributeValueFirestoreData(e, true))
        .toList() ??
    [];
