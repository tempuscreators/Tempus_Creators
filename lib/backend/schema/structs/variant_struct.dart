// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VariantStruct extends FFFirebaseStruct {
  VariantStruct({
    String? id,
    String? variantName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _variantName = variantName,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "variant_name" field.
  String? _variantName;
  String get variantName => _variantName ?? '';
  set variantName(String? val) => _variantName = val;
  bool hasVariantName() => _variantName != null;

  static VariantStruct fromMap(Map<String, dynamic> data) => VariantStruct(
        id: data['id'] as String?,
        variantName: data['variant_name'] as String?,
      );

  static VariantStruct? maybeFromMap(dynamic data) =>
      data is Map ? VariantStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'variant_name': _variantName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'variant_name': serializeParam(
          _variantName,
          ParamType.String,
        ),
      }.withoutNulls;

  static VariantStruct fromSerializableMap(Map<String, dynamic> data) =>
      VariantStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        variantName: deserializeParam(
          data['variant_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VariantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VariantStruct &&
        id == other.id &&
        variantName == other.variantName;
  }

  @override
  int get hashCode => const ListEquality().hash([id, variantName]);
}

VariantStruct createVariantStruct({
  String? id,
  String? variantName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VariantStruct(
      id: id,
      variantName: variantName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VariantStruct? updateVariantStruct(
  VariantStruct? variant, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    variant
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVariantStructData(
  Map<String, dynamic> firestoreData,
  VariantStruct? variant,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (variant == null) {
    return;
  }
  if (variant.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && variant.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final variantData = getVariantFirestoreData(variant, forFieldValue);
  final nestedData = variantData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = variant.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVariantFirestoreData(
  VariantStruct? variant, [
  bool forFieldValue = false,
]) {
  if (variant == null) {
    return {};
  }
  final firestoreData = mapToFirestore(variant.toMap());

  // Add any Firestore field values
  variant.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVariantListFirestoreData(
  List<VariantStruct>? variants,
) =>
    variants?.map((e) => getVariantFirestoreData(e, true)).toList() ?? [];
