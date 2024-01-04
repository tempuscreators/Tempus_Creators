import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/stripe/payment_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'priceings2_widget.dart' show Priceings2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Priceings2Model extends FlutterFlowModel<Priceings2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for WL_email widget.
  FocusNode? wLEmailFocusNode;
  TextEditingController? wLEmailController;
  String? Function(BuildContext, String?)? wLEmailControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Stripe Payment] action in Button widget.
  String? paymentId;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    wLEmailFocusNode?.dispose();
    wLEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
