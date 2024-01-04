// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessDetailsStruct extends FFFirebaseStruct {
  BusinessDetailsStruct({
    String? legalName,
    String? businessName,
    int? pincode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _legalName = legalName,
        _businessName = businessName,
        _pincode = pincode,
        super(firestoreUtilData);

  // "legalName" field.
  String? _legalName;
  String get legalName => _legalName ?? '';
  set legalName(String? val) => _legalName = val;
  bool hasLegalName() => _legalName != null;

  // "businessName" field.
  String? _businessName;
  String get businessName => _businessName ?? '';
  set businessName(String? val) => _businessName = val;
  bool hasBusinessName() => _businessName != null;

  // "pincode" field.
  int? _pincode;
  int get pincode => _pincode ?? 0;
  set pincode(int? val) => _pincode = val;
  void incrementPincode(int amount) => _pincode = pincode + amount;
  bool hasPincode() => _pincode != null;

  static BusinessDetailsStruct fromMap(Map<String, dynamic> data) =>
      BusinessDetailsStruct(
        legalName: data['legalName'] as String?,
        businessName: data['businessName'] as String?,
        pincode: castToType<int>(data['pincode']),
      );

  static BusinessDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? BusinessDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'legalName': _legalName,
        'businessName': _businessName,
        'pincode': _pincode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'legalName': serializeParam(
          _legalName,
          ParamType.String,
        ),
        'businessName': serializeParam(
          _businessName,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.int,
        ),
      }.withoutNulls;

  static BusinessDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BusinessDetailsStruct(
        legalName: deserializeParam(
          data['legalName'],
          ParamType.String,
          false,
        ),
        businessName: deserializeParam(
          data['businessName'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BusinessDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BusinessDetailsStruct &&
        legalName == other.legalName &&
        businessName == other.businessName &&
        pincode == other.pincode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([legalName, businessName, pincode]);
}

BusinessDetailsStruct createBusinessDetailsStruct({
  String? legalName,
  String? businessName,
  int? pincode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BusinessDetailsStruct(
      legalName: legalName,
      businessName: businessName,
      pincode: pincode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BusinessDetailsStruct? updateBusinessDetailsStruct(
  BusinessDetailsStruct? businessDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    businessDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBusinessDetailsStructData(
  Map<String, dynamic> firestoreData,
  BusinessDetailsStruct? businessDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (businessDetails == null) {
    return;
  }
  if (businessDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && businessDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final businessDetailsData =
      getBusinessDetailsFirestoreData(businessDetails, forFieldValue);
  final nestedData =
      businessDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = businessDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBusinessDetailsFirestoreData(
  BusinessDetailsStruct? businessDetails, [
  bool forFieldValue = false,
]) {
  if (businessDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(businessDetails.toMap());

  // Add any Firestore field values
  businessDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBusinessDetailsListFirestoreData(
  List<BusinessDetailsStruct>? businessDetailss,
) =>
    businessDetailss
        ?.map((e) => getBusinessDetailsFirestoreData(e, true))
        .toList() ??
    [];
