import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttributeValuesRecord extends FirestoreRecord {
  AttributeValuesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "value_name" field.
  String? _valueName;
  String get valueName => _valueName ?? '';
  bool hasValueName() => _valueName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "regular_price" field.
  double? _regularPrice;
  double get regularPrice => _regularPrice ?? 0.0;
  bool hasRegularPrice() => _regularPrice != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "in_stock" field.
  bool? _inStock;
  bool get inStock => _inStock ?? false;
  bool hasInStock() => _inStock != null;

  // "dimension" field.
  DimensionStruct? _dimension;
  DimensionStruct get dimension => _dimension ?? DimensionStruct();
  bool hasDimension() => _dimension != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _valueName = snapshotData['value_name'] as String?;
    _image = snapshotData['image'] as String?;
    _regularPrice = castToType<double>(snapshotData['regular_price']);
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _sku = snapshotData['sku'] as String?;
    _inStock = snapshotData['in_stock'] as bool?;
    _dimension = DimensionStruct.maybeFromMap(snapshotData['dimension']);
    _weight = castToType<double>(snapshotData['weight']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('attribute_values')
          : FirebaseFirestore.instance.collectionGroup('attribute_values');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('attribute_values').doc();

  static Stream<AttributeValuesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttributeValuesRecord.fromSnapshot(s));

  static Future<AttributeValuesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttributeValuesRecord.fromSnapshot(s));

  static AttributeValuesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttributeValuesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttributeValuesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttributeValuesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttributeValuesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttributeValuesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttributeValuesRecordData({
  String? valueName,
  String? image,
  double? regularPrice,
  double? salePrice,
  int? quantity,
  String? sku,
  bool? inStock,
  DimensionStruct? dimension,
  double? weight,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'value_name': valueName,
      'image': image,
      'regular_price': regularPrice,
      'sale_price': salePrice,
      'quantity': quantity,
      'sku': sku,
      'in_stock': inStock,
      'dimension': DimensionStruct().toMap(),
      'weight': weight,
    }.withoutNulls,
  );

  // Handle nested data for "dimension" field.
  addDimensionStructData(firestoreData, dimension, 'dimension');

  return firestoreData;
}

class AttributeValuesRecordDocumentEquality
    implements Equality<AttributeValuesRecord> {
  const AttributeValuesRecordDocumentEquality();

  @override
  bool equals(AttributeValuesRecord? e1, AttributeValuesRecord? e2) {
    return e1?.valueName == e2?.valueName &&
        e1?.image == e2?.image &&
        e1?.regularPrice == e2?.regularPrice &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.sku == e2?.sku &&
        e1?.inStock == e2?.inStock &&
        e1?.dimension == e2?.dimension &&
        e1?.weight == e2?.weight;
  }

  @override
  int hash(AttributeValuesRecord? e) => const ListEquality().hash([
        e?.valueName,
        e?.image,
        e?.regularPrice,
        e?.salePrice,
        e?.quantity,
        e?.sku,
        e?.inStock,
        e?.dimension,
        e?.weight
      ]);

  @override
  bool isValidKey(Object? o) => o is AttributeValuesRecord;
}
