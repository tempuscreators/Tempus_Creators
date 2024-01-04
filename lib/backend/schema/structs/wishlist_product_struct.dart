// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WishlistProductStruct extends FFFirebaseStruct {
  WishlistProductStruct({
    DocumentReference? productRef,
    DocumentReference? wishlistRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productRef = productRef,
        _wishlistRef = wishlistRef,
        super(firestoreUtilData);

  // "product_ref" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  set productRef(DocumentReference? val) => _productRef = val;
  bool hasProductRef() => _productRef != null;

  // "wishlist_ref" field.
  DocumentReference? _wishlistRef;
  DocumentReference? get wishlistRef => _wishlistRef;
  set wishlistRef(DocumentReference? val) => _wishlistRef = val;
  bool hasWishlistRef() => _wishlistRef != null;

  static WishlistProductStruct fromMap(Map<String, dynamic> data) =>
      WishlistProductStruct(
        productRef: data['product_ref'] as DocumentReference?,
        wishlistRef: data['wishlist_ref'] as DocumentReference?,
      );

  static WishlistProductStruct? maybeFromMap(dynamic data) => data is Map
      ? WishlistProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_ref': _productRef,
        'wishlist_ref': _wishlistRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_ref': serializeParam(
          _productRef,
          ParamType.DocumentReference,
        ),
        'wishlist_ref': serializeParam(
          _wishlistRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static WishlistProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      WishlistProductStruct(
        productRef: deserializeParam(
          data['product_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products'],
        ),
        wishlistRef: deserializeParam(
          data['wishlist_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users', 'wishlist'],
        ),
      );

  @override
  String toString() => 'WishlistProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WishlistProductStruct &&
        productRef == other.productRef &&
        wishlistRef == other.wishlistRef;
  }

  @override
  int get hashCode => const ListEquality().hash([productRef, wishlistRef]);
}

WishlistProductStruct createWishlistProductStruct({
  DocumentReference? productRef,
  DocumentReference? wishlistRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WishlistProductStruct(
      productRef: productRef,
      wishlistRef: wishlistRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WishlistProductStruct? updateWishlistProductStruct(
  WishlistProductStruct? wishlistProduct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    wishlistProduct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWishlistProductStructData(
  Map<String, dynamic> firestoreData,
  WishlistProductStruct? wishlistProduct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (wishlistProduct == null) {
    return;
  }
  if (wishlistProduct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && wishlistProduct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wishlistProductData =
      getWishlistProductFirestoreData(wishlistProduct, forFieldValue);
  final nestedData =
      wishlistProductData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = wishlistProduct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWishlistProductFirestoreData(
  WishlistProductStruct? wishlistProduct, [
  bool forFieldValue = false,
]) {
  if (wishlistProduct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(wishlistProduct.toMap());

  // Add any Firestore field values
  wishlistProduct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWishlistProductListFirestoreData(
  List<WishlistProductStruct>? wishlistProducts,
) =>
    wishlistProducts
        ?.map((e) => getWishlistProductFirestoreData(e, true))
        .toList() ??
    [];
