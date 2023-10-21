import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeesRecord extends FirestoreRecord {
  EmployeesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  bool hasEmployeeId() => _employeeId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "joining_date" field.
  DateTime? _joiningDate;
  DateTime? get joiningDate => _joiningDate;
  bool hasJoiningDate() => _joiningDate != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _employeeId = snapshotData['employee_id'] as String?;
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _position = snapshotData['position'] as String?;
    _department = snapshotData['department'] as String?;
    _joiningDate = snapshotData['joining_date'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('employees');

  static Stream<EmployeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeesRecord.fromSnapshot(s));

  static Future<EmployeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeesRecord.fromSnapshot(s));

  static EmployeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeesRecordData({
  String? employeeId,
  String? name,
  String? email,
  String? phoneNumber,
  String? photoUrl,
  String? position,
  String? department,
  DateTime? joiningDate,
  String? role,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'employee_id': employeeId,
      'name': name,
      'email': email,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'position': position,
      'department': department,
      'joining_date': joiningDate,
      'role': role,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeesRecordDocumentEquality implements Equality<EmployeesRecord> {
  const EmployeesRecordDocumentEquality();

  @override
  bool equals(EmployeesRecord? e1, EmployeesRecord? e2) {
    return e1?.employeeId == e2?.employeeId &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.position == e2?.position &&
        e1?.department == e2?.department &&
        e1?.joiningDate == e2?.joiningDate &&
        e1?.role == e2?.role &&
        e1?.status == e2?.status;
  }

  @override
  int hash(EmployeesRecord? e) => const ListEquality().hash([
        e?.employeeId,
        e?.name,
        e?.email,
        e?.phoneNumber,
        e?.photoUrl,
        e?.position,
        e?.department,
        e?.joiningDate,
        e?.role,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeesRecord;
}
