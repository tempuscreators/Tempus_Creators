// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VariantCheckoutStruct extends FFFirebaseStruct {
  VariantCheckoutStruct({
    String? variantValue,
    String? attributeName,
    String? attributeValue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _variantValue = variantValue,
        _attributeName = attributeName,
        _attributeValue = attributeValue,
        super(firestoreUtilData);

  // "variant_value" field.
  String? _variantValue;
  String get variantValue => _variantValue ?? '';
  set variantValue(String? val) => _variantValue = val;
  bool hasVariantValue() => _variantValue != null;

  // "attribute_name" field.
  String? _attributeName;
  String get attributeName => _attributeName ?? '';
  set attributeName(String? val) => _attributeName = val;
  bool hasAttributeName() => _attributeName != null;

  // "attribute_value" field.
  String? _attributeValue;
  String get attributeValue => _attributeValue ?? '';
  set attributeValue(String? val) => _attributeValue = val;
  bool hasAttributeValue() => _attributeValue != null;

  static VariantCheckoutStruct fromMap(Map<String, dynamic> data) =>
      VariantCheckoutStruct(
        variantValue: data['variant_value'] as String?,
        attributeName: data['attribute_name'] as String?,
        attributeValue: data['attribute_value'] as String?,
      );

  static VariantCheckoutStruct? maybeFromMap(dynamic data) => data is Map
      ? VariantCheckoutStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'variant_value': _variantValue,
        'attribute_name': _attributeName,
        'attribute_value': _attributeValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'variant_value': serializeParam(
          _variantValue,
          ParamType.String,
        ),
        'attribute_name': serializeParam(
          _attributeName,
          ParamType.String,
        ),
        'attribute_value': serializeParam(
          _attributeValue,
          ParamType.String,
        ),
      }.withoutNulls;

  static VariantCheckoutStruct fromSerializableMap(Map<String, dynamic> data) =>
      VariantCheckoutStruct(
        variantValue: deserializeParam(
          data['variant_value'],
          ParamType.String,
          false,
        ),
        attributeName: deserializeParam(
          data['attribute_name'],
          ParamType.String,
          false,
        ),
        attributeValue: deserializeParam(
          data['attribute_value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VariantCheckoutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VariantCheckoutStruct &&
        variantValue == other.variantValue &&
        attributeName == other.attributeName &&
        attributeValue == other.attributeValue;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([variantValue, attributeName, attributeValue]);
}

VariantCheckoutStruct createVariantCheckoutStruct({
  String? variantValue,
  String? attributeName,
  String? attributeValue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VariantCheckoutStruct(
      variantValue: variantValue,
      attributeName: attributeName,
      attributeValue: attributeValue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VariantCheckoutStruct? updateVariantCheckoutStruct(
  VariantCheckoutStruct? variantCheckout, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    variantCheckout
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVariantCheckoutStructData(
  Map<String, dynamic> firestoreData,
  VariantCheckoutStruct? variantCheckout,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (variantCheckout == null) {
    return;
  }
  if (variantCheckout.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && variantCheckout.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final variantCheckoutData =
      getVariantCheckoutFirestoreData(variantCheckout, forFieldValue);
  final nestedData =
      variantCheckoutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = variantCheckout.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVariantCheckoutFirestoreData(
  VariantCheckoutStruct? variantCheckout, [
  bool forFieldValue = false,
]) {
  if (variantCheckout == null) {
    return {};
  }
  final firestoreData = mapToFirestore(variantCheckout.toMap());

  // Add any Firestore field values
  variantCheckout.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVariantCheckoutListFirestoreData(
  List<VariantCheckoutStruct>? variantCheckouts,
) =>
    variantCheckouts
        ?.map((e) => getVariantCheckoutFirestoreData(e, true))
        .toList() ??
    [];
