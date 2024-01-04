// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends FFFirebaseStruct {
  ProductStruct({
    DocumentReference? productRef,
    double? regularPrice,
    double? salePrice,
    int? quantity,
    List<VariantCheckoutStruct>? variant,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productRef = productRef,
        _regularPrice = regularPrice,
        _salePrice = salePrice,
        _quantity = quantity,
        _variant = variant,
        super(firestoreUtilData);

  // "product_ref" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  set productRef(DocumentReference? val) => _productRef = val;
  bool hasProductRef() => _productRef != null;

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

  // "variant" field.
  List<VariantCheckoutStruct>? _variant;
  List<VariantCheckoutStruct> get variant => _variant ?? const [];
  set variant(List<VariantCheckoutStruct>? val) => _variant = val;
  void updateVariant(Function(List<VariantCheckoutStruct>) updateFn) =>
      updateFn(_variant ??= []);
  bool hasVariant() => _variant != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        productRef: data['product_ref'] as DocumentReference?,
        regularPrice: castToType<double>(data['regular_price']),
        salePrice: castToType<double>(data['sale_price']),
        quantity: castToType<int>(data['quantity']),
        variant: getStructList(
          data['variant'],
          VariantCheckoutStruct.fromMap,
        ),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'product_ref': _productRef,
        'regular_price': _regularPrice,
        'sale_price': _salePrice,
        'quantity': _quantity,
        'variant': _variant?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_ref': serializeParam(
          _productRef,
          ParamType.DocumentReference,
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
        'variant': serializeParam(
          _variant,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        productRef: deserializeParam(
          data['product_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products'],
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
        variant: deserializeStructParam<VariantCheckoutStruct>(
          data['variant'],
          ParamType.DataStruct,
          true,
          structBuilder: VariantCheckoutStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        productRef == other.productRef &&
        regularPrice == other.regularPrice &&
        salePrice == other.salePrice &&
        quantity == other.quantity &&
        listEquality.equals(variant, other.variant);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([productRef, regularPrice, salePrice, quantity, variant]);
}

ProductStruct createProductStruct({
  DocumentReference? productRef,
  double? regularPrice,
  double? salePrice,
  int? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductStruct(
      productRef: productRef,
      regularPrice: regularPrice,
      salePrice: salePrice,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductStruct? updateProductStruct(
  ProductStruct? product, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    product
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductStructData(
  Map<String, dynamic> firestoreData,
  ProductStruct? product,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (product == null) {
    return;
  }
  if (product.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && product.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productData = getProductFirestoreData(product, forFieldValue);
  final nestedData = productData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = product.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductFirestoreData(
  ProductStruct? product, [
  bool forFieldValue = false,
]) {
  if (product == null) {
    return {};
  }
  final firestoreData = mapToFirestore(product.toMap());

  // Add any Firestore field values
  product.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductListFirestoreData(
  List<ProductStruct>? products,
) =>
    products?.map((e) => getProductFirestoreData(e, true)).toList() ?? [];
