import '/components/menu_options/option_btn/option_btn_widget.dart';
import '/components/menu_options/sub_menu_last_option/sub_menu_last_option_widget.dart';
import '/components/menu_options/sub_menu_option/sub_menu_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_menu1_model.dart';
export 'nav_menu1_model.dart';

class NavMenu1Widget extends StatefulWidget {
  const NavMenu1Widget({Key? key}) : super(key: key);

  @override
  _NavMenu1WidgetState createState() => _NavMenu1WidgetState();
}

class _NavMenu1WidgetState extends State<NavMenu1Widget> {
  late NavMenu1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenu1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 240.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (Navigator.of(context).canPop()) {
                context.pop();
              }
              context.pushNamed('Dashboard');

              FFAppState().update(() {
                FFAppState().activePage = 'dashboard';
              });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/yeye.png',
                height: 36.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'MENU',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans HK',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .tertiaryBackground,
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 12.0))
                          .addToStart(SizedBox(width: 24.0)),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'Products'
                                  ? FlutterFlowTheme.of(context)
                                      .quaternaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Youtube');
                          },
                          text: 'YouTube',
                          icon: FaIcon(
                            FontAwesomeIcons.youtube,
                            color: FlutterFlowTheme.of(context).error,
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF303138),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Twitch');
                          },
                          text: 'Twitch',
                          icon: FaIcon(
                            FontAwesomeIcons.twitch,
                            color: Color(0xFF6441A5),
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsets.all(0.0),
                            color: Color(0xFF303138),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('instagram');
                          },
                          text: 'Instagram',
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color(0xFFDB07BC),
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF303138),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Facebook');
                          },
                          text: 'FaceBook',
                          icon: Icon(
                            FFIcons.kfacebook,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF303138),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('Tempus_AI');
                          },
                          text: 'Tempus AI',
                          icon: Icon(
                            FFIcons.kmeh,
                            color: Color(0xFF6580D9),
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF303138),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('settings');
                          },
                          text: 'Settings',
                          icon: Icon(
                            Icons.settings_outlined,
                            color: Color(0xFF838383),
                            size: 30.0,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF303138),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'Sellers'
                                  ? FlutterFlowTheme.of(context)
                                      .quaternaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if ((FFAppState().activePage == 'Sellers') &&
                                  responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'All Sellers';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuOptionModel1,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            string: 'All Sellers',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'Payouts';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuOptionModel2,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            string: 'Payouts',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'Packages';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuOptionModel3,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            string: 'Packages',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'Commisions';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuLastOptionModel1,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuLastOptionWidget(
                                            string: 'Commisions',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'Staffs'
                                  ? FlutterFlowTheme.of(context)
                                      .quaternaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'Analytics'
                                  ? FlutterFlowTheme.of(context)
                                      .quaternaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                FFAppState().activePage == 'Reports'
                                    ? FlutterFlowTheme.of(context)
                                        .quaternaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.optionBtnModel,
                                  updateCallback: () => setState(() {}),
                                  child: OptionBtnWidget(
                                    option: 'Reports',
                                    iconActive: Icon(
                                      FFIcons.kfileText,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.kfileText,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                if (FFAppState().activePage == 'Reports')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 6.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              FFAppState().activePageSub =
                                                  'Stocks';
                                            });
                                          },
                                          child: wrapWithModel(
                                            model: _model.subMenuOptionModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuOptionWidget(
                                              string: 'Stocks',
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              FFAppState().activePageSub =
                                                  'Searches';
                                            });
                                          },
                                          child: wrapWithModel(
                                            model: _model.subMenuOptionModel5,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuOptionWidget(
                                              string: 'Searches',
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              FFAppState().activePageSub =
                                                  'Wishlist';
                                            });
                                          },
                                          child: wrapWithModel(
                                            model:
                                                _model.subMenuLastOptionModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuLastOptionWidget(
                                              string: 'Wishlist',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'Marketing'
                                  ? FlutterFlowTheme.of(context)
                                      .quaternaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 30.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .tertiaryBackground,
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 12.0))
                          .addToStart(SizedBox(width: 24.0)),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'Marketing'
                                  ? FlutterFlowTheme.of(context)
                                      .quaternaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'Settings'
                                  ? FlutterFlowTheme.of(context)
                                      .quaternaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if ((FFAppState().activePage == 'Settings') &&
                                  responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'General';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuOptionModel6,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            string: 'General',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'Customer Support';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuOptionModel7,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            string: 'Features',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'Seller Support';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuOptionModel8,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            string: 'Tax  & Shipping',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          setState(() {
                                            FFAppState().activePageSub =
                                                'Staff Support';
                                          });
                                        },
                                        child: wrapWithModel(
                                          model: _model.subMenuLastOptionModel3,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuLastOptionWidget(
                                            string: 'Notifications',
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
                ],
              ),
            ),
          ),
        ]
            .divide(SizedBox(height: 24.0))
            .addToStart(SizedBox(height: 36.0))
            .addToEnd(SizedBox(height: 24.0)),
      ),
    );
  }
}
