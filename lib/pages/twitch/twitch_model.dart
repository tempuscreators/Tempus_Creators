import '/components/header/header_widget.dart';
import '/components/nav_menu_1/nav_menu1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flip_card/flip_card.dart';
import 'twitch_widget.dart' show TwitchWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TwitchModel extends FlutterFlowModel<TwitchWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> selectedOrders = [];
  void addToSelectedOrders(DocumentReference item) => selectedOrders.add(item);
  void removeFromSelectedOrders(DocumentReference item) =>
      selectedOrders.remove(item);
  void removeAtIndexFromSelectedOrders(int index) =>
      selectedOrders.removeAt(index);
  void insertAtIndexInSelectedOrders(int index, DocumentReference item) =>
      selectedOrders.insert(index, item);
  void updateSelectedOrdersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedOrders[index] = updateFn(selectedOrders[index]);

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
