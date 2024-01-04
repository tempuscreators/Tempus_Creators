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
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget>
    with TickerProviderStateMixin {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasIconTriggered = false;
  final animationsMap = {
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2400.ms,
          begin: 0.0,
          end: 2.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'Dashboard',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          wrapWithModel(
                            model: _model.navMenu1Model,
                            updateCallback: () => setState(() {}),
                            child: NavMenu1Widget(),
                          ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.headerModel,
                                updateCallback: () => setState(() {}),
                                child: HeaderWidget(
                                  title: 'Dashboard',
                                  description: 'view and manage dashboard',
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        50.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context.pushNamed(
                                                                    'Youtube');
                                                              },
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .anylitics1Model,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    Anylitics1Widget(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      100.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {});

                                                              context.pushNamed(
                                                                  'Twitch');
                                                            },
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .anylitics2Model,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  Anylitics2Widget(),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      100.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Container(
                                                              width: 190.0,
                                                              height: 220.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .anylitics3Model,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    Anylitics3Widget(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        100.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {});

                                                                context.pushNamed(
                                                                    'Facebook');
                                                              },
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .anylitics4Model,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    Anylitics4Widget(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      75.0,
                                                                      0.0,
                                                                      125.0,
                                                                      0.0),
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .salesCardModel1,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                SalesCardWidget(),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      75.0,
                                                                      0.0),
                                                          child: StreamBuilder<
                                                              List<
                                                                  OrdersRecord>>(
                                                            stream:
                                                                queryOrdersRecord(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
                                                                    child:
                                                                        SpinKitFoldingCube(
                                                                      color: Color(
                                                                          0xFF6580D9),
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<OrdersRecord>
                                                                  salesCard2OrdersRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return wrapWithModel(
                                                                model: _model
                                                                    .salesCard2Model1,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    SalesCard2Widget(
                                                                  successfulOrders:
                                                                      valueOrDefault<
                                                                          int>(
                                                                    salesCard2OrdersRecordList
                                                                        .where((e) =>
                                                                            e.status ==
                                                                            'delivered')
                                                                        .toList()
                                                                        .length,
                                                                    0,
                                                                  ),
                                                                  pendingOrders:
                                                                      valueOrDefault<
                                                                          int>(
                                                                    salesCard2OrdersRecordList
                                                                        .where((e) =>
                                                                            (e.status ==
                                                                                'pending') ||
                                                                            (e.status ==
                                                                                'processing'))
                                                                        .toList()
                                                                        .length,
                                                                    0,
                                                                  ),
                                                                  failedOrders:
                                                                      valueOrDefault<
                                                                          int>(
                                                                    salesCard2OrdersRecordList
                                                                        .where((e) =>
                                                                            (e.status ==
                                                                                'failed') ||
                                                                            (e.status ==
                                                                                'cancelled'))
                                                                        .toList()
                                                                        .length,
                                                                    0,
                                                                  ),
                                                                  totalOrders:
                                                                      valueOrDefault<
                                                                          int>(
                                                                    salesCard2OrdersRecordList
                                                                        .length,
                                                                    0,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 24.0)),
                                                  ),
                                                  StreamBuilder<
                                                      List<ProductsRecord>>(
                                                    stream: queryProductsRecord(
                                                      queryBuilder:
                                                          (productsRecord) =>
                                                              productsRecord
                                                                  .orderBy(
                                                                      'total_sold',
                                                                      descending:
                                                                          true),
                                                      limit: 10,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 24.0,
                                                            height: 24.0,
                                                            child:
                                                                SpinKitFoldingCube(
                                                              color: Color(
                                                                  0xFF6580D9),
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ProductsRecord>
                                                          containerProductsRecordList =
                                                          snapshot.data!;
                                                      return Container(
                                                        width: double.infinity,
                                                        height: 360.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  24.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Top Selling Products',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans HK',
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            4.0)),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            36.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            Text(
                                                                          'Product',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans HK',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: false,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          120.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        'Price',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans HK',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          120.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        'Sold',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans HK',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          120.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Sales',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans HK',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              fontSize: 12.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          12.0)),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final products =
                                                                        containerProductsRecordList
                                                                            .toList();
                                                                    return ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          products
                                                                              .length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          SizedBox(
                                                                              height: 12.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              productsIndex) {
                                                                        final productsItem =
                                                                            products[productsIndex];
                                                                        return ProductCard1Widget(
                                                                          key: Key(
                                                                              'Keyjan_${productsIndex}_of_${products.length}'),
                                                                          productTitle:
                                                                              productsItem.name,
                                                                          price:
                                                                              productsItem.salePrice,
                                                                          sold:
                                                                              productsItem.totalSold,
                                                                          sales:
                                                                              valueOrDefault<double>(
                                                                            productsItem.totalSold *
                                                                                productsItem.salePrice,
                                                                            0.0,
                                                                          ),
                                                                          productPhoto:
                                                                              valueOrDefault<String>(
                                                                            productsItem.thumbnail.path,
                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-admin-tfp67j/assets/f053ahnqau0n/thumbnail-2.png',
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 12.0)),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 24.0)),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(width: 24.0))
                                              .addToStart(SizedBox(width: 24.0))
                                              .addToEnd(SizedBox(width: 24.0)),
                                        ),
                                      ]
                                          .addToStart(SizedBox(height: 24.0))
                                          .addToEnd(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: GridView(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 10.0,
                                              mainAxisSpacing: 10.0,
                                              childAspectRatio: 1.0,
                                            ),
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              StreamBuilder<
                                                  List<ProductsRecord>>(
                                                stream: queryProductsRecord(),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 24.0,
                                                        height: 24.0,
                                                        child:
                                                            SpinKitFoldingCube(
                                                          color:
                                                              Color(0xFF6580D9),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<ProductsRecord>
                                                      statCard1ProductsRecordList =
                                                      snapshot.data!;
                                                  return wrapWithModel(
                                                    model:
                                                        _model.statCard1Model1,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: StatCard1Widget(
                                                      icon: Icon(
                                                        FFIcons.kshoppingBag,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      color: Color(0xFFFFC632),
                                                      title: valueOrDefault<
                                                          String>(
                                                        statCard1ProductsRecordList
                                                            .length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      description:
                                                          'Total Products',
                                                    ),
                                                  );
                                                },
                                              ),
                                              StreamBuilder<List<OrdersRecord>>(
                                                stream: queryOrdersRecord(),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 24.0,
                                                        height: 24.0,
                                                        child:
                                                            SpinKitFoldingCube(
                                                          color:
                                                              Color(0xFF6580D9),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<OrdersRecord>
                                                      statCard1OrdersRecordList =
                                                      snapshot.data!;
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (Navigator.of(context)
                                                          .canPop()) {
                                                        context.pop();
                                                      }
                                                      context
                                                          .pushNamed('Twitch');
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .statCard1Model2,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child: StatCard1Widget(
                                                        icon: Icon(
                                                          FFIcons.kshoppingCart,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                        color:
                                                            Color(0xFF2E9863),
                                                        title: valueOrDefault<
                                                            String>(
                                                          statCard1OrdersRecordList
                                                              .length
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        description:
                                                            'Total Orders',
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              StreamBuilder<
                                                  List<SellersRecord>>(
                                                stream: querySellersRecord(),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 24.0,
                                                        height: 24.0,
                                                        child:
                                                            SpinKitFoldingCube(
                                                          color:
                                                              Color(0xFF6580D9),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<SellersRecord>
                                                      statCard1SellersRecordList =
                                                      snapshot.data!;
                                                  return wrapWithModel(
                                                    model:
                                                        _model.statCard1Model3,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: StatCard1Widget(
                                                      icon: Icon(
                                                        FFIcons.kuserCheck,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      color: Color(0xFFFF6869),
                                                      title: valueOrDefault<
                                                          String>(
                                                        statCard1SellersRecordList
                                                            .length
                                                            .toString(),
                                                        '0',
                                                      ),
                                                      description: 'Sellers',
                                                    ),
                                                  );
                                                },
                                              ),
                                              StreamBuilder<List<UsersRecord>>(
                                                stream: queryUsersRecord(),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 24.0,
                                                        height: 24.0,
                                                        child:
                                                            SpinKitFoldingCube(
                                                          color:
                                                              Color(0xFF6580D9),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<UsersRecord>
                                                      statCard1UsersRecordList =
                                                      snapshot.data!;
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (Navigator.of(context)
                                                          .canPop()) {
                                                        context.pop();
                                                      }
                                                      context.pushNamed(
                                                          'Facebook');
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .statCard1Model4,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child: StatCard1Widget(
                                                        icon: Icon(
                                                          FFIcons.kusers,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                        color:
                                                            Color(0xFF00AA07),
                                                        title: valueOrDefault<
                                                            String>(
                                                          statCard1UsersRecordList
                                                              .length
                                                              .toString(),
                                                          '0',
                                                        ),
                                                        description:
                                                            'Total Customers',
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.salesCardModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SalesCardWidget(),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child:
                                              StreamBuilder<List<OrdersRecord>>(
                                            stream: queryOrdersRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    child: SpinKitFoldingCube(
                                                      color: Color(0xFF6580D9),
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<OrdersRecord>
                                                  salesCard2OrdersRecordList =
                                                  snapshot.data!;
                                              return wrapWithModel(
                                                model: _model.salesCard2Model2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: SalesCard2Widget(
                                                  successfulOrders:
                                                      valueOrDefault<int>(
                                                    salesCard2OrdersRecordList
                                                        .where((e) =>
                                                            e.status ==
                                                            'delivered')
                                                        .toList()
                                                        .length,
                                                    0,
                                                  ),
                                                  pendingOrders:
                                                      valueOrDefault<int>(
                                                    salesCard2OrdersRecordList
                                                        .where((e) =>
                                                            (e.status ==
                                                                'pending') ||
                                                            (e.status ==
                                                                'processing'))
                                                        .toList()
                                                        .length,
                                                    0,
                                                  ),
                                                  failedOrders:
                                                      valueOrDefault<int>(
                                                    salesCard2OrdersRecordList
                                                        .where((e) =>
                                                            (e.status ==
                                                                'failed') ||
                                                            (e.status ==
                                                                'cancelled'))
                                                        .toList()
                                                        .length,
                                                    0,
                                                  ),
                                                  totalOrders:
                                                      valueOrDefault<int>(
                                                    salesCard2OrdersRecordList
                                                        .length,
                                                    0,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: StreamBuilder<
                                              List<ProductsRecord>>(
                                            stream: queryProductsRecord(
                                              queryBuilder: (productsRecord) =>
                                                  productsRecord.orderBy(
                                                      'total_sold',
                                                      descending: true),
                                              limit: 10,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    child: SpinKitFoldingCube(
                                                      color: Color(0xFF6580D9),
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProductsRecord>
                                                  containerProductsRecordList =
                                                  snapshot.data!;
                                              return Container(
                                                width: double.infinity,
                                                height: 360.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Top Selling Products',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: Builder(
                                                          builder: (context) {
                                                            final topProducts =
                                                                containerProductsRecordList
                                                                    .toList();
                                                            return ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  topProducts
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          8.0),
                                                              itemBuilder: (context,
                                                                  topProductsIndex) {
                                                                final topProductsItem =
                                                                    topProducts[
                                                                        topProductsIndex];
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            36.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: 36.0,
                                                                              height: 36.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                              ),
                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(6.0),
                                                                                child: Image.network(
                                                                                  valueOrDefault<String>(
                                                                                    topProductsItem.thumbnail.path,
                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-admin-tfp67j/assets/f053ahnqau0n/thumbnail-2.png',
                                                                                  ),
                                                                                  width: 300.0,
                                                                                  height: 200.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Text(
                                                                                topProductsItem.name.maybeHandleOverflow(
                                                                                  maxChars: 16,
                                                                                  replacement: '…',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans HK',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 84.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Text(
                                                                                topProductsItem.category.maybeHandleOverflow(
                                                                                  maxChars: 12,
                                                                                  replacement: '…',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans HK',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 24.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          12.0)),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: FutureBuilder<
                                              List<ReviewsRecord>>(
                                            future: (_model
                                                        .firestoreRequestCompleter ??=
                                                    Completer<
                                                        List<ReviewsRecord>>()
                                                      ..complete(
                                                          queryReviewsRecordOnce(
                                                        queryBuilder:
                                                            (reviewsRecord) =>
                                                                reviewsRecord.orderBy(
                                                                    'created_at',
                                                                    descending:
                                                                        true),
                                                        limit: 100,
                                                      )))
                                                .future,
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    child: SpinKitFoldingCube(
                                                      color: Color(0xFF6580D9),
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ReviewsRecord>
                                                  containerReviewsRecordList =
                                                  snapshot.data!;
                                              return Container(
                                                width: 396.0,
                                                height: 506.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Customer Reviews',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Sans HK',
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              if (animationsMap[
                                                                      'iconOnActionTriggerAnimation'] !=
                                                                  null) {
                                                                setState(() =>
                                                                    hasIconTriggered =
                                                                        true);
                                                                SchedulerBinding
                                                                    .instance
                                                                    .addPostFrameCallback((_) async => animationsMap[
                                                                            'iconOnActionTriggerAnimation']!
                                                                        .controller
                                                                        .forward(
                                                                            from:
                                                                                0.0));
                                                              }
                                                              setState(() =>
                                                                  _model.firestoreRequestCompleter =
                                                                      null);
                                                            },
                                                            child: Icon(
                                                              FFIcons
                                                                  .krefreshCw,
                                                              color: Color(
                                                                  0xFF00AA07),
                                                              size: 18.0,
                                                            ),
                                                          ).animateOnActionTrigger(
                                                              animationsMap[
                                                                  'iconOnActionTriggerAnimation']!,
                                                              hasBeenTriggered:
                                                                  hasIconTriggered),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    RatingBarIndicator(
                                                                      itemBuilder:
                                                                          (context, index) =>
                                                                              Icon(
                                                                        Icons
                                                                            .star_rounded,
                                                                        color: Color(
                                                                            0xFFFFC632),
                                                                      ),
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      rating: valueOrDefault<
                                                                          double>(
                                                                        functions.averageRating(
                                                                            containerReviewsRecordList.map((e) => e.rating).toList(),
                                                                            containerReviewsRecordList.length),
                                                                        0.0,
                                                                      ),
                                                                      unratedColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .accent3,
                                                                      itemCount:
                                                                          5,
                                                                      itemSize:
                                                                          28.0,
                                                                    ),
                                                                    Text(
                                                                      'Overral rating of ${valueOrDefault<String>(
                                                                        containerReviewsRecordList
                                                                            .length
                                                                            .toString(),
                                                                        '0',
                                                                      )} customer\'s reviews',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans HK',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                                RichText(
                                                                  textScaleFactor:
                                                                      MediaQuery.of(
                                                                              context)
                                                                          .textScaleFactor,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text: valueOrDefault<
                                                                            String>(
                                                                          formatNumber(
                                                                            functions.averageRating(containerReviewsRecordList.map((e) => e.rating).toList(),
                                                                                containerReviewsRecordList.length),
                                                                            formatType:
                                                                                FormatType.custom,
                                                                            format:
                                                                                '#.#',
                                                                            locale:
                                                                                'en_US',
                                                                          ),
                                                                          '0',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans HK',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '  Out of 5 stars',
                                                                        style:
                                                                            TextStyle(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 16.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Icon(
                                                              FFIcons.kfilter,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 18.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'View filters',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Icon(
                                                                FFIcons
                                                                    .kchevronDown,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 18.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            wrapWithModel(
                                                              model: _model
                                                                  .ratingBarItemModel1,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  RatingBarItemWidget(
                                                                title:
                                                                    'Excellent',
                                                                totalRatings:
                                                                    containerReviewsRecordList
                                                                        .where((e) =>
                                                                            e.rating ==
                                                                            5.0)
                                                                        .toList()
                                                                        .length,
                                                                color: Color(
                                                                    0xFF00AA07),
                                                                bgColor: Color(
                                                                    0x3200AA07),
                                                                rating:
                                                                    valueOrDefault<
                                                                        double>(
                                                                  valueOrDefault<
                                                                          double>(
                                                                        functions.averageRating(
                                                                            containerReviewsRecordList.where((e) => e.rating == 5.0).toList().map((e) => e.rating).toList(),
                                                                            containerReviewsRecordList.length),
                                                                        0.0,
                                                                      ) /
                                                                      5,
                                                                  0.0,
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .ratingBarItemModel2,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  RatingBarItemWidget(
                                                                title: 'Good',
                                                                totalRatings:
                                                                    containerReviewsRecordList
                                                                        .where((e) =>
                                                                            e.rating ==
                                                                            4.0)
                                                                        .toList()
                                                                        .length,
                                                                color: Color(
                                                                    0xFF17BF6B),
                                                                bgColor: Color(
                                                                    0x3217BF6B),
                                                                rating:
                                                                    valueOrDefault<
                                                                        double>(
                                                                  valueOrDefault<
                                                                          double>(
                                                                        functions.averageRating(
                                                                            containerReviewsRecordList.where((e) => e.rating == 4.0).toList().map((e) => e.rating).toList(),
                                                                            containerReviewsRecordList.length),
                                                                        0.0,
                                                                      ) /
                                                                      5,
                                                                  0.0,
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .ratingBarItemModel3,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  RatingBarItemWidget(
                                                                title:
                                                                    'Average',
                                                                totalRatings:
                                                                    containerReviewsRecordList
                                                                        .where((e) =>
                                                                            e.rating ==
                                                                            3.0)
                                                                        .toList()
                                                                        .length,
                                                                color: Color(
                                                                    0xFFFFC632),
                                                                bgColor: Color(
                                                                    0x34FFC632),
                                                                rating:
                                                                    valueOrDefault<
                                                                        double>(
                                                                  valueOrDefault<
                                                                          double>(
                                                                        functions.averageRating(
                                                                            containerReviewsRecordList.where((e) => e.rating == 3.0).toList().map((e) => e.rating).toList(),
                                                                            containerReviewsRecordList.length),
                                                                        0.0,
                                                                      ) /
                                                                      5,
                                                                  0.0,
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .ratingBarItemModel4,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  RatingBarItemWidget(
                                                                title:
                                                                    'Avg Below',
                                                                totalRatings:
                                                                    containerReviewsRecordList
                                                                        .where((e) =>
                                                                            e.rating ==
                                                                            2.0)
                                                                        .toList()
                                                                        .length,
                                                                color: Color(
                                                                    0xFFFF9F00),
                                                                bgColor: Color(
                                                                    0x34FF9F00),
                                                                rating:
                                                                    valueOrDefault<
                                                                        double>(
                                                                  valueOrDefault<
                                                                          double>(
                                                                        functions.averageRating(
                                                                            containerReviewsRecordList.where((e) => e.rating == 2.0).toList().map((e) => e.rating).toList(),
                                                                            containerReviewsRecordList.length),
                                                                        0.0,
                                                                      ) /
                                                                      5,
                                                                  0.0,
                                                                ),
                                                              ),
                                                            ),
                                                            wrapWithModel(
                                                              model: _model
                                                                  .ratingBarItemModel5,
                                                              updateCallback:
                                                                  () => setState(
                                                                      () {}),
                                                              child:
                                                                  RatingBarItemWidget(
                                                                title: 'Poor',
                                                                totalRatings:
                                                                    containerReviewsRecordList
                                                                        .where((e) =>
                                                                            e.rating ==
                                                                            1.0)
                                                                        .toList()
                                                                        .length,
                                                                color: Color(
                                                                    0xFFED3333),
                                                                bgColor: Color(
                                                                    0x33ED3333),
                                                                rating:
                                                                    valueOrDefault<
                                                                        double>(
                                                                  valueOrDefault<
                                                                          double>(
                                                                        functions.averageRating(
                                                                            containerReviewsRecordList.where((e) => e.rating == 1.0).toList().map((e) => e.rating).toList(),
                                                                            containerReviewsRecordList.length),
                                                                        0.0,
                                                                      ) /
                                                                      5,
                                                                  0.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      48.0,
                                                                      48.0,
                                                                      48.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Icon(
                                                                FFIcons.kinfo,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 16.0,
                                                              ),
                                                              Expanded(
                                                                child: Text(
                                                                  'This data is from latest 100  customers rating or reviews.',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 12.0)),
                                                          ),
                                                        ),
                                                      ),
                                                      FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'Button pressed ...');
                                                        },
                                                        text:
                                                            'See all Customer\'s Reviews',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color:
                                                              Color(0x1A2F80ED),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Sans HK',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        14.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: StreamBuilder<
                                              List<ProductsRecord>>(
                                            stream: queryProductsRecord(
                                              queryBuilder: (productsRecord) =>
                                                  productsRecord.orderBy(
                                                      'total_sold',
                                                      descending: true),
                                              limit: 10,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 24.0,
                                                    height: 24.0,
                                                    child: SpinKitFoldingCube(
                                                      color: Color(0xFF6580D9),
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProductsRecord>
                                                  containerProductsRecordList =
                                                  snapshot.data!;
                                              return Container(
                                                width: 396.0,
                                                height: 360.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Sales by Category',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Sans HK',
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            FFIcons
                                                                .kmoreHorizontal,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    6.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 36.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Text(
                                                                'Rank',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                width: 36.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                child: Text(
                                                                  'Category',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 36.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Text(
                                                                'Sales',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          final topCategories = functions
                                                                  .topCategory(
                                                                      containerProductsRecordList
                                                                          .map((e) => e
                                                                              .totalSold)
                                                                          .toList(),
                                                                      containerProductsRecordList
                                                                          .map((e) =>
                                                                              e.category)
                                                                          .toList())
                                                                  ?.toList() ??
                                                              [];
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: List.generate(
                                                                topCategories
                                                                    .length,
                                                                (topCategoriesIndex) {
                                                              final topCategoriesItem =
                                                                  topCategories[
                                                                      topCategoriesIndex];
                                                              return TopCategoryItem1Widget(
                                                                key: Key(
                                                                    'Keyk8r_${topCategoriesIndex}_of_${topCategories.length}'),
                                                                rank: functions
                                                                    .slNum(
                                                                        topCategoriesIndex)!,
                                                                category:
                                                                    getJsonField(
                                                                  topCategoriesItem,
                                                                  r'''$.category''',
                                                                ).toString(),
                                                                sales:
                                                                    valueOrDefault<
                                                                        int>(
                                                                  getJsonField(
                                                                    topCategoriesItem,
                                                                    r'''$.sales''',
                                                                  ),
                                                                  0,
                                                                ),
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  () {
                                                                    if (topCategoriesIndex ==
                                                                        0) {
                                                                      return Color(
                                                                          0xFF00AA07);
                                                                    } else if (topCategoriesIndex ==
                                                                        1) {
                                                                      return Color(
                                                                          0xFFFFC632);
                                                                    } else if (topCategoriesIndex ==
                                                                        2) {
                                                                      return Color(
                                                                          0xFFFF9F00);
                                                                    } else if (topCategoriesIndex ==
                                                                        3) {
                                                                      return Color(
                                                                          0xFF2874F0);
                                                                    } else if (topCategoriesIndex ==
                                                                        4) {
                                                                      return Color(
                                                                          0xFFFF6868);
                                                                    } else {
                                                                      return Color(
                                                                          0xFFED3333);
                                                                    }
                                                                  }(),
                                                                  Color(
                                                                      0xFFED3333),
                                                                ),
                                                              );
                                                            }).divide(SizedBox(
                                                                height: 24.0)),
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ]
                                          .divide(SizedBox(height: 24.0))
                                          .addToStart(SizedBox(height: 16.0))
                                          .addToEnd(SizedBox(height: 24.0)),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
