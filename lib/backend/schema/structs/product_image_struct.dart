// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductImageStruct extends FFFirebaseStruct {
  ProductImageStruct({
    List<String>? galley,
    String? thumbnail,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _galley = galley,
        _thumbnail = thumbnail,
        super(firestoreUtilData);

  // "galley" field.
  List<String>? _galley;
  List<String> get galley => _galley ?? const [];
  set galley(List<String>? val) => _galley = val;
  void updateGalley(Function(List<String>) updateFn) =>
      updateFn(_galley ??= []);
  bool hasGalley() => _galley != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;
  bool hasThumbnail() => _thumbnail != null;

  static ProductImageStruct fromMap(Map<String, dynamic> data) =>
      ProductImageStruct(
        galley: getDataList(data['galley']),
        thumbnail: data['thumbnail'] as String?,
      );

  static ProductImageStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductImageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'galley': _galley,
        'thumbnail': _thumbnail,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'galley': serializeParam(
          _galley,
          ParamType.String,
          true,
        ),
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductImageStruct(
        galley: deserializeParam<String>(
          data['galley'],
          ParamType.String,
          true,
        ),
        thumbnail: deserializeParam(
          data['thumbnail'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductImageStruct &&
        listEquality.equals(galley, other.galley) &&
        thumbnail == other.thumbnail;
  }

  @override
  int get hashCode => const ListEquality().hash([galley, thumbnail]);
}

ProductImageStruct createProductImageStruct({
  String? thumbnail,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductImageStruct(
      thumbnail: thumbnail,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductImageStruct? updateProductImageStruct(
  ProductImageStruct? productImage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productImage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductImageStructData(
  Map<String, dynamic> firestoreData,
  ProductImageStruct? productImage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productImage == null) {
    return;
  }
  if (productImage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productImage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productImageData =
      getProductImageFirestoreData(productImage, forFieldValue);
  final nestedData =
      productImageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productImage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductImageFirestoreData(
  ProductImageStruct? productImage, [
  bool forFieldValue = false,
]) {
  if (productImage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productImage.toMap());

  // Add any Firestore field values
  productImage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductImageListFirestoreData(
  List<ProductImageStruct>? productImages,
) =>
    productImages?.map((e) => getProductImageFirestoreData(e, true)).toList() ??
    [];
