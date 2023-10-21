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

import 'dart:math';

Future<String?> skuCode() async {
  // random 6 digit sku code
  var rng = Random();
  String skuCode = '';
  for (int i = 0; i < 6; i++) {
    skuCode += rng.nextInt(10).toString();
  }
  return skuCode;
}
