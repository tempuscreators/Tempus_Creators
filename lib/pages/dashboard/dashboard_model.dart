import '/backend/backend.dart';
import '/components/anylitics1_widget.dart';
import '/components/anylitics2_widget.dart';
import '/components/anylitics3_widget.dart';
import '/components/anylitics4_widget.dart';
import '/components/header/header_widget.dart';
import '/components/nav_menu_1/nav_menu1_widget.dart';
import '/components/product_card_1/product_card1_widget.dart';
import '/components/rating_bar_item/rating_bar_item_widget.dart';
import '/components/sales_card/sales_card_widget.dart';
import '/components/sales_card_2/sales_card2_widget.dart';
import '/components/stat_card_1/stat_card1_widget.dart';
import '/components/top_category_item_1/top_category_item1_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenu_1 component.
  late NavMenu1Model navMenu1Model;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for anylitics_1 component.
  late Anylitics1Model anylitics1Model;
  // Model for anylitics_2 component.
  late Anylitics2Model anylitics2Model;
  // Model for anylitics_3 component.
  late Anylitics3Model anylitics3Model;
  // Model for anylitics_4 component.
  late Anylitics4Model anylitics4Model;
  // Model for SalesCard component.
  late SalesCardModel salesCardModel1;
  // Model for SalesCard_2 component.
  late SalesCard2Model salesCard2Model1;
  // Model for StatCard_1 component.
  late StatCard1Model statCard1Model1;
  // Model for StatCard_1 component.
  late StatCard1Model statCard1Model2;
  // Model for StatCard_1 component.
  late StatCard1Model statCard1Model3;
  // Model for StatCard_1 component.
  late StatCard1Model statCard1Model4;
  // Model for SalesCard component.
  late SalesCardModel salesCardModel2;
  // Model for SalesCard_2 component.
  late SalesCard2Model salesCard2Model2;
  Completer<List<ReviewsRecord>>? firestoreRequestCompleter;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel1;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel2;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel3;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel4;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel5;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenu1Model = createModel(context, () => NavMenu1Model());
    headerModel = createModel(context, () => HeaderModel());
    anylitics1Model = createModel(context, () => Anylitics1Model());
    anylitics2Model = createModel(context, () => Anylitics2Model());
    anylitics3Model = createModel(context, () => Anylitics3Model());
    anylitics4Model = createModel(context, () => Anylitics4Model());
    salesCardModel1 = createModel(context, () => SalesCardModel());
    salesCard2Model1 = createModel(context, () => SalesCard2Model());
    statCard1Model1 = createModel(context, () => StatCard1Model());
    statCard1Model2 = createModel(context, () => StatCard1Model());
    statCard1Model3 = createModel(context, () => StatCard1Model());
    statCard1Model4 = createModel(context, () => StatCard1Model());
    salesCardModel2 = createModel(context, () => SalesCardModel());
    salesCard2Model2 = createModel(context, () => SalesCard2Model());
    ratingBarItemModel1 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel2 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel3 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel4 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel5 = createModel(context, () => RatingBarItemModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navMenu1Model.dispose();
    headerModel.dispose();
    anylitics1Model.dispose();
    anylitics2Model.dispose();
    anylitics3Model.dispose();
    anylitics4Model.dispose();
    salesCardModel1.dispose();
    salesCard2Model1.dispose();
    statCard1Model1.dispose();
    statCard1Model2.dispose();
    statCard1Model3.dispose();
    statCard1Model4.dispose();
    salesCardModel2.dispose();
    salesCard2Model2.dispose();
    ratingBarItemModel1.dispose();
    ratingBarItemModel2.dispose();
    ratingBarItemModel3.dispose();
    ratingBarItemModel4.dispose();
    ratingBarItemModel5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
