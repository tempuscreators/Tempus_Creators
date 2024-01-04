// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? id,
    String? name,
    String? mobile,
    String? addressLine1,
    String? addressLine2,
    String? landMark,
    String? city,
    String? state,
    String? pinCode,
    String? addressType,
    String? country,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _mobile = mobile,
        _addressLine1 = addressLine1,
        _addressLine2 = addressLine2,
        _landMark = landMark,
        _city = city,
        _state = state,
        _pinCode = pinCode,
        _addressType = addressType,
        _country = country,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;
  bool hasMobile() => _mobile != null;

  // "addressLine1" field.
  String? _addressLine1;
  String get addressLine1 => _addressLine1 ?? '';
  set addressLine1(String? val) => _addressLine1 = val;
  bool hasAddressLine1() => _addressLine1 != null;

  // "addressLine2" field.
  String? _addressLine2;
  String get addressLine2 => _addressLine2 ?? '';
  set addressLine2(String? val) => _addressLine2 = val;
  bool hasAddressLine2() => _addressLine2 != null;

  // "landMark" field.
  String? _landMark;
  String get landMark => _landMark ?? '';
  set landMark(String? val) => _landMark = val;
  bool hasLandMark() => _landMark != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;
  bool hasState() => _state != null;

  // "pinCode" field.
  String? _pinCode;
  String get pinCode => _pinCode ?? '';
  set pinCode(String? val) => _pinCode = val;
  bool hasPinCode() => _pinCode != null;

  // "addressType" field.
  String? _addressType;
  String get addressType => _addressType ?? '';
  set addressType(String? val) => _addressType = val;
  bool hasAddressType() => _addressType != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;
  bool hasCountry() => _country != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        mobile: data['mobile'] as String?,
        addressLine1: data['addressLine1'] as String?,
        addressLine2: data['addressLine2'] as String?,
        landMark: data['landMark'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        pinCode: data['pinCode'] as String?,
        addressType: data['addressType'] as String?,
        country: data['country'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'mobile': _mobile,
        'addressLine1': _addressLine1,
        'addressLine2': _addressLine2,
        'landMark': _landMark,
        'city': _city,
        'state': _state,
        'pinCode': _pinCode,
        'addressType': _addressType,
        'country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
        'addressLine1': serializeParam(
          _addressLine1,
          ParamType.String,
        ),
        'addressLine2': serializeParam(
          _addressLine2,
          ParamType.String,
        ),
        'landMark': serializeParam(
          _landMark,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'pinCode': serializeParam(
          _pinCode,
          ParamType.String,
        ),
        'addressType': serializeParam(
          _addressType,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        mobile: deserializeParam(
          data['mobile'],
          ParamType.String,
          false,
        ),
        addressLine1: deserializeParam(
          data['addressLine1'],
          ParamType.String,
          false,
        ),
        addressLine2: deserializeParam(
          data['addressLine2'],
          ParamType.String,
          false,
        ),
        landMark: deserializeParam(
          data['landMark'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        pinCode: deserializeParam(
          data['pinCode'],
          ParamType.String,
          false,
        ),
        addressType: deserializeParam(
          data['addressType'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        id == other.id &&
        name == other.name &&
        mobile == other.mobile &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        landMark == other.landMark &&
        city == other.city &&
        state == other.state &&
        pinCode == other.pinCode &&
        addressType == other.addressType &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        mobile,
        addressLine1,
        addressLine2,
        landMark,
        city,
        state,
        pinCode,
        addressType,
        country
      ]);
}

AddressStruct createAddressStruct({
  String? id,
  String? name,
  String? mobile,
  String? addressLine1,
  String? addressLine2,
  String? landMark,
  String? city,
  String? state,
  String? pinCode,
  String? addressType,
  String? country,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      id: id,
      name: name,
      mobile: mobile,
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      landMark: landMark,
      city: city,
      state: state,
      pinCode: pinCode,
      addressType: addressType,
      country: country,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
