// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future ordersBatchDelete(List<DocumentReference>? ref) async {
  // bactch delete this firebase references
  if (ref != null && ref.isNotEmpty) {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    ref.forEach((docRef) {
      batch.delete(docRef);
    });
    await batch.commit();
  }
}
