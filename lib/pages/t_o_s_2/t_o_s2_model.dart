import '/components/header/header_widget.dart';
import '/components/nav_menu_1/nav_menu1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 't_o_s2_widget.dart' show TOS2Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TOS2Model extends FlutterFlowModel<TOS2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenu_1 component.
  late NavMenu1Model navMenu1Model;
  // Model for Header component.
  late HeaderModel headerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenu1Model = createModel(context, () => NavMenu1Model());
    headerModel = createModel(context, () => HeaderModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navMenu1Model.dispose();
    headerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
