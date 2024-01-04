// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VariantValueStruct extends FFFirebaseStruct {
  VariantValueStruct({
    String? variantValue,
    String? image,
    double? regularPrice,
    double? salePrice,
    int? quantity,
    String? sku,
    String? stockStatus,
    DimensionStruct? dimension,
    double? weight,
    List<AttributeStruct>? attribute,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _variantValue = variantValue,
        _image = image,
        _regularPrice = regularPrice,
        _salePrice = salePrice,
        _quantity = quantity,
        _sku = sku,
        _stockStatus = stockStatus,
        _dimension = dimension,
        _weight = weight,
        _attribute = attribute,
        super(firestoreUtilData);

  // "variant_value" field.
  String? _variantValue;
  String get variantValue => _variantValue ?? '';
  set variantValue(String? val) => _variantValue = val;
  bool hasVariantValue() => _variantValue != null;

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

  // "attribute" field.
  List<AttributeStruct>? _attribute;
  List<AttributeStruct> get attribute => _attribute ?? const [];
  set attribute(List<AttributeStruct>? val) => _attribute = val;
  void updateAttribute(Function(List<AttributeStruct>) updateFn) =>
      updateFn(_attribute ??= []);
  bool hasAttribute() => _attribute != null;

  static VariantValueStruct fromMap(Map<String, dynamic> data) =>
      VariantValueStruct(
        variantValue: data['variant_value'] as String?,
        image: data['image'] as String?,
        regularPrice: castToType<double>(data['regular_price']),
        salePrice: castToType<double>(data['sale_price']),
        quantity: castToType<int>(data['quantity']),
        sku: data['sku'] as String?,
        stockStatus: data['stock_status'] as String?,
        dimension: DimensionStruct.maybeFromMap(data['dimension']),
        weight: castToType<double>(data['weight']),
        attribute: getStructList(
          data['attribute'],
          AttributeStruct.fromMap,
        ),
      );

  static VariantValueStruct? maybeFromMap(dynamic data) => data is Map
      ? VariantValueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'variant_value': _variantValue,
        'image': _image,
        'regular_price': _regularPrice,
        'sale_price': _salePrice,
        'quantity': _quantity,
        'sku': _sku,
        'stock_status': _stockStatus,
        'dimension': _dimension?.toMap(),
        'weight': _weight,
        'attribute': _attribute?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'variant_value': serializeParam(
          _variantValue,
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
        'attribute': serializeParam(
          _attribute,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static VariantValueStruct fromSerializableMap(Map<String, dynamic> data) =>
      VariantValueStruct(
        variantValue: deserializeParam(
          data['variant_value'],
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
        attribute: deserializeStructParam<AttributeStruct>(
          data['attribute'],
          ParamType.DataStruct,
          true,
          structBuilder: AttributeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VariantValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VariantValueStruct &&
        variantValue == other.variantValue &&
        image == other.image &&
        regularPrice == other.regularPrice &&
        salePrice == other.salePrice &&
        quantity == other.quantity &&
        sku == other.sku &&
        stockStatus == other.stockStatus &&
        dimension == other.dimension &&
        weight == other.weight &&
        listEquality.equals(attribute, other.attribute);
  }

  @override
  int get hashCode => const ListEquality().hash([
        variantValue,
        image,
        regularPrice,
        salePrice,
        quantity,
        sku,
        stockStatus,
        dimension,
        weight,
        attribute
      ]);
}

VariantValueStruct createVariantValueStruct({
  String? variantValue,
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
    VariantValueStruct(
      variantValue: variantValue,
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

VariantValueStruct? updateVariantValueStruct(
  VariantValueStruct? variantValueStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    variantValueStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVariantValueStructData(
  Map<String, dynamic> firestoreData,
  VariantValueStruct? variantValueStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (variantValueStruct == null) {
    return;
  }
  if (variantValueStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && variantValueStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final variantValueStructData =
      getVariantValueFirestoreData(variantValueStruct, forFieldValue);
  final nestedData =
      variantValueStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      variantValueStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVariantValueFirestoreData(
  VariantValueStruct? variantValueStruct, [
  bool forFieldValue = false,
]) {
  if (variantValueStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(variantValueStruct.toMap());

  // Handle nested data for "dimension" field.
  addDimensionStructData(
    firestoreData,
    variantValueStruct.hasDimension() ? variantValueStruct.dimension : null,
    'dimension',
    forFieldValue,
  );

  // Add any Firestore field values
  variantValueStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVariantValueListFirestoreData(
  List<VariantValueStruct>? variantValueStructs,
) =>
    variantValueStructs
        ?.map((e) => getVariantValueFirestoreData(e, true))
        .toList() ??
    [];
