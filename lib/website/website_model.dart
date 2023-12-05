import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'website_widget.dart' show WebsiteWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebsiteModel extends FlutterFlowModel<WebsiteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for igpassword widget.
  FocusNode? igpasswordFocusNode;
  TextEditingController? igpasswordController;
  late bool igpasswordVisibility;
  String? Function(BuildContext, String?)? igpasswordControllerValidator;
  // State field(s) for lgemail widget.
  FocusNode? lgemailFocusNode;
  TextEditingController? lgemailController;
  String? Function(BuildContext, String?)? lgemailControllerValidator;
  // State field(s) for caemail widget.
  FocusNode? caemailFocusNode;
  TextEditingController? caemailController;
  String? Function(BuildContext, String?)? caemailControllerValidator;
  // State field(s) for capassword widget.
  FocusNode? capasswordFocusNode;
  TextEditingController? capasswordController;
  late bool capasswordVisibility;
  String? Function(BuildContext, String?)? capasswordControllerValidator;
  // State field(s) for caconfirmpassword widget.
  FocusNode? caconfirmpasswordFocusNode;
  TextEditingController? caconfirmpasswordController;
  late bool caconfirmpasswordVisibility;
  String? Function(BuildContext, String?)? caconfirmpasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    igpasswordVisibility = false;
    capasswordVisibility = false;
    caconfirmpasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    igpasswordFocusNode?.dispose();
    igpasswordController?.dispose();

    lgemailFocusNode?.dispose();
    lgemailController?.dispose();

    caemailFocusNode?.dispose();
    caemailController?.dispose();

    capasswordFocusNode?.dispose();
    capasswordController?.dispose();

    caconfirmpasswordFocusNode?.dispose();
    caconfirmpasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
