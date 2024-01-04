import '/components/menu_options/option_btn/option_btn_widget.dart';
import '/components/menu_options/sub_menu_last_option/sub_menu_last_option_widget.dart';
import '/components/menu_options/sub_menu_option/sub_menu_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'nav_menu1_widget.dart' show NavMenu1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavMenu1Model extends FlutterFlowModel<NavMenu1Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel1;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel2;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel3;
  // Model for SubMenuLastOption component.
  late SubMenuLastOptionModel subMenuLastOptionModel1;
  // Model for Option_Btn component.
  late OptionBtnModel optionBtnModel;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel4;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel5;
  // Model for SubMenuLastOption component.
  late SubMenuLastOptionModel subMenuLastOptionModel2;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel6;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel7;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel8;
  // Model for SubMenuLastOption component.
  late SubMenuLastOptionModel subMenuLastOptionModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    subMenuOptionModel1 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel2 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel3 = createModel(context, () => SubMenuOptionModel());
    subMenuLastOptionModel1 =
        createModel(context, () => SubMenuLastOptionModel());
    optionBtnModel = createModel(context, () => OptionBtnModel());
    subMenuOptionModel4 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel5 = createModel(context, () => SubMenuOptionModel());
    subMenuLastOptionModel2 =
        createModel(context, () => SubMenuLastOptionModel());
    subMenuOptionModel6 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel7 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel8 = createModel(context, () => SubMenuOptionModel());
    subMenuLastOptionModel3 =
        createModel(context, () => SubMenuLastOptionModel());
  }

  void dispose() {
    subMenuOptionModel1.dispose();
    subMenuOptionModel2.dispose();
    subMenuOptionModel3.dispose();
    subMenuLastOptionModel1.dispose();
    optionBtnModel.dispose();
    subMenuOptionModel4.dispose();
    subMenuOptionModel5.dispose();
    subMenuLastOptionModel2.dispose();
    subMenuOptionModel6.dispose();
    subMenuOptionModel7.dispose();
    subMenuOptionModel8.dispose();
    subMenuLastOptionModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
