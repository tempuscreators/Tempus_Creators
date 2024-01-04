// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttributeStruct extends FFFirebaseStruct {
  AttributeStruct({
    String? id,
    String? varientValue,
    String? attributeName,
    List<AttributeValueStruct>? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _varientValue = varientValue,
        _attributeName = attributeName,
        _value = value,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "varient_value" field.
  String? _varientValue;
  String get varientValue => _varientValue ?? '';
  set varientValue(String? val) => _varientValue = val;
  bool hasVarientValue() => _varientValue != null;

  // "attribute_name" field.
  String? _attributeName;
  String get attributeName => _attributeName ?? '';
  set attributeName(String? val) => _attributeName = val;
  bool hasAttributeName() => _attributeName != null;

  // "value" field.
  List<AttributeValueStruct>? _value;
  List<AttributeValueStruct> get value => _value ?? const [];
  set value(List<AttributeValueStruct>? val) => _value = val;
  void updateValue(Function(List<AttributeValueStruct>) updateFn) =>
      updateFn(_value ??= []);
  bool hasValue() => _value != null;

  static AttributeStruct fromMap(Map<String, dynamic> data) => AttributeStruct(
        id: data['id'] as String?,
        varientValue: data['varient_value'] as String?,
        attributeName: data['attribute_name'] as String?,
        value: getStructList(
          data['value'],
          AttributeValueStruct.fromMap,
        ),
      );

  static AttributeStruct? maybeFromMap(dynamic data) => data is Map
      ? AttributeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'varient_value': _varientValue,
        'attribute_name': _attributeName,
        'value': _value?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'varient_value': serializeParam(
          _varientValue,
          ParamType.String,
        ),
        'attribute_name': serializeParam(
          _attributeName,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static AttributeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttributeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        varientValue: deserializeParam(
          data['varient_value'],
          ParamType.String,
          false,
        ),
        attributeName: deserializeParam(
          data['attribute_name'],
          ParamType.String,
          false,
        ),
        value: deserializeStructParam<AttributeValueStruct>(
          data['value'],
          ParamType.DataStruct,
          true,
          structBuilder: AttributeValueStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AttributeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AttributeStruct &&
        id == other.id &&
        varientValue == other.varientValue &&
        attributeName == other.attributeName &&
        listEquality.equals(value, other.value);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, varientValue, attributeName, value]);
}

AttributeStruct createAttributeStruct({
  String? id,
  String? varientValue,
  String? attributeName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AttributeStruct(
      id: id,
      varientValue: varientValue,
      attributeName: attributeName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AttributeStruct? updateAttributeStruct(
  AttributeStruct? attribute, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    attribute
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAttributeStructData(
  Map<String, dynamic> firestoreData,
  AttributeStruct? attribute,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (attribute == null) {
    return;
  }
  if (attribute.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && attribute.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final attributeData = getAttributeFirestoreData(attribute, forFieldValue);
  final nestedData = attributeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = attribute.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAttributeFirestoreData(
  AttributeStruct? attribute, [
  bool forFieldValue = false,
]) {
  if (attribute == null) {
    return {};
  }
  final firestoreData = mapToFirestore(attribute.toMap());

  // Add any Firestore field values
  attribute.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAttributeListFirestoreData(
  List<AttributeStruct>? attributes,
) =>
    attributes?.map((e) => getAttributeFirestoreData(e, true)).toList() ?? [];
