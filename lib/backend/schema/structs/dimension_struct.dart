// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DimensionStruct extends FFFirebaseStruct {
  DimensionStruct({
    double? length,
    double? width,
    double? height,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _length = length,
        _width = width,
        _height = height,
        super(firestoreUtilData);

  // "length" field.
  double? _length;
  double get length => _length ?? 0.0;
  set length(double? val) => _length = val;
  void incrementLength(double amount) => _length = length + amount;
  bool hasLength() => _length != null;

  // "width" field.
  double? _width;
  double get width => _width ?? 0.0;
  set width(double? val) => _width = val;
  void incrementWidth(double amount) => _width = width + amount;
  bool hasWidth() => _width != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  set height(double? val) => _height = val;
  void incrementHeight(double amount) => _height = height + amount;
  bool hasHeight() => _height != null;

  static DimensionStruct fromMap(Map<String, dynamic> data) => DimensionStruct(
        length: castToType<double>(data['length']),
        width: castToType<double>(data['width']),
        height: castToType<double>(data['height']),
      );

  static DimensionStruct? maybeFromMap(dynamic data) => data is Map
      ? DimensionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'length': _length,
        'width': _width,
        'height': _height,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'length': serializeParam(
          _length,
          ParamType.double,
        ),
        'width': serializeParam(
          _width,
          ParamType.double,
        ),
        'height': serializeParam(
          _height,
          ParamType.double,
        ),
      }.withoutNulls;

  static DimensionStruct fromSerializableMap(Map<String, dynamic> data) =>
      DimensionStruct(
        length: deserializeParam(
          data['length'],
          ParamType.double,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.double,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DimensionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DimensionStruct &&
        length == other.length &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode => const ListEquality().hash([length, width, height]);
}

DimensionStruct createDimensionStruct({
  double? length,
  double? width,
  double? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DimensionStruct(
      length: length,
      width: width,
      height: height,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DimensionStruct? updateDimensionStruct(
  DimensionStruct? dimension, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dimension
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDimensionStructData(
  Map<String, dynamic> firestoreData,
  DimensionStruct? dimension,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dimension == null) {
    return;
  }
  if (dimension.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dimension.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dimensionData = getDimensionFirestoreData(dimension, forFieldValue);
  final nestedData = dimensionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dimension.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDimensionFirestoreData(
  DimensionStruct? dimension, [
  bool forFieldValue = false,
]) {
  if (dimension == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dimension.toMap());

  // Add any Firestore field values
  dimension.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDimensionListFirestoreData(
  List<DimensionStruct>? dimensions,
) =>
    dimensions?.map((e) => getDimensionFirestoreData(e, true)).toList() ?? [];
