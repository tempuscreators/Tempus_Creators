import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blogs_model.dart';
export 'blogs_model.dart';

class BlogsWidget extends StatefulWidget {
  const BlogsWidget({Key? key}) : super(key: key);

  @override
  _BlogsWidgetState createState() => _BlogsWidgetState();
}

class _BlogsWidgetState extends State<BlogsWidget> {
  late BlogsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogsModel());

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
        title: 'blogs',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 1512.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 515.0,
                                height: 125.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('website');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/yeye.png',
                                      width: 349.0,
                                      height: 200.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50.0, 15.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context.pushNamed('priceings_2');
                                  },
                                  child: Text(
                                    'Fetures ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF6580D9),
                                          fontSize: 22.0,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50.0, 15.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('blogs');
                                  },
                                  child: Text(
                                    'Blogs',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF6580D9),
                                          fontSize: 22.0,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50.0, 15.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('website');
                                  },
                                  child: Text(
                                    'Pricing',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF6580D9),
                                          fontSize: 22.0,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    230.0, 15.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Contact',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF838383),
                                          fontSize: 20.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 15.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('website');
                                  },
                                  text: 'Login',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF838383),
                                          fontSize: 20.0,
                                        ),
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 15.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed('priceings_2');
                                    },
                                    text: 'Get Started',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF6580D9),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 1512.0,
                            height: 2500.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 100.0, 0.0, 0.0),
                                      child: Text(
                                        'Blog\'s',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF6580D9),
                                              fontSize: 50.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 250.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/511/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 250.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/803/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 595.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6580D9),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed('blogs5');
                                                  },
                                                  text: '',
                                                  icon: Icon(
                                                    Icons.arrow_forward,
                                                    color: Colors.white,
                                                    size: 75.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 500.0,
                                                    height: 100.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(370.0,
                                                                0.0, 20.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsets.all(0.0),
                                                    color: Color(0xFF6580D9),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                    hoverColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    hoverTextColor:
                                                        Color(0xFF6580D9),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          35.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'AI Querying: A \nComprehensive Guide',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                          fontSize: 30.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 595.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6580D9),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'blogs2');
                                                      },
                                                      text: '',
                                                      icon: Icon(
                                                        Icons.arrow_forward,
                                                        size: 75.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 500.0,
                                                        height: 100.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    370.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0xFF6580D9),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        hoverTextColor:
                                                            Color(0xFF6580D9),
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
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Sentiment Analysis: A game Changer for  Creators',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 30.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 800.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/205/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 1145.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6580D9),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed('blogs8');
                                                },
                                                text: '',
                                                icon: Icon(
                                                  Icons.arrow_forward,
                                                  size: 75.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 500.0,
                                                  height: 100.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(370.0, 0.0,
                                                          20.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF6580D9),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  hoverTextColor:
                                                      Color(0xFF6580D9),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Elevating Content Strategy: \nWith the power of AI',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 30.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 800.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/985/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1145.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6580D9),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed('blogs1');
                                                },
                                                text: '',
                                                icon: Icon(
                                                  Icons.arrow_forward,
                                                  size: 75.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 500.0,
                                                  height: 100.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(370.0, 0.0,
                                                          20.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFF6580D9),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.0),
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  hoverTextColor:
                                                      Color(0xFF6580D9),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Unlocking the Power of\nSocial Listening ',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 30.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 1350.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/111/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1350.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/241/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 1695.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6580D9),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed('blogs3');
                                              },
                                              text: '',
                                              icon: Icon(
                                                Icons.arrow_forward,
                                                size: 75.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 500.0,
                                                height: 100.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        370.0, 0.0, 20.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF6580D9),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                hoverTextColor:
                                                    Color(0xFF6580D9),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  ' Navigating the \nAnalytics Landscape',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 30.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1695.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6580D9),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed('blogs4');
                                              },
                                              text: '',
                                              icon: Icon(
                                                Icons.arrow_forward,
                                                size: 75.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 500.0,
                                                height: 1000.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        370.0, 0.0, 20.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF6580D9),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                hoverTextColor:
                                                    Color(0xFF6580D9),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Navigating \nMulti-Agent AI',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 30.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.01),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 1512.0,
                                          height: 65.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'Copyright © 2023 Tempus Creators. All rights reserved.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFFC1C1C1),
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 65.0, 0.0),
                                                  child: Icon(
                                                    FFIcons.ktwitch,
                                                    color: Color(0xFF838383),
                                                    size: 50.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.facebookF,
                                                    color: Color(0xFF838383),
                                                    size: 50.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 185.0, 0.0),
                                                  child: Icon(
                                                    FFIcons.kinstagram,
                                                    color: Color(0xFF838383),
                                                    size: 50.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 120.0, 0.0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.youtube,
                                                    color: Color(0xFF838383),
                                                    size: 50.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('TOSS');
                                                  },
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF838383),
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                              'TOSS');
                                                        },
                                                        child: Text(
                                                          'T.O.S',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF838383),
                                                                fontSize: 30.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          125.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context
                                                          .pushNamed('privicy');
                                                    },
                                                    child: Container(
                                                      width: 203.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFF838383),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                'privicy');
                                                          },
                                                          child: Text(
                                                            'Privacy Policy',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF838383),
                                                                  fontSize:
                                                                      30.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 1900.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/452/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1900.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 300.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0xFF303138),
                                              offset: Offset(0.0, -10.0),
                                              spreadRadius: 10.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://picsum.photos/seed/16/600',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          150.0, 2245.0, 0.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed('blogs7');
                                              },
                                              text: '',
                                              icon: Icon(
                                                Icons.arrow_forward,
                                                size: 75.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: double.infinity,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        370.0, 0.0, 20.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF6580D9),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                hoverTextColor:
                                                    Color(0xFF6580D9),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'The AI Revolution: \nTransforming the World',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 30.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2245.0, 150.0, 0.0),
                                      child: Container(
                                        width: 500.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x33000000),
                                              offset: Offset(0.0, 8.0),
                                              spreadRadius: 8.0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed('blogs6');
                                              },
                                              text: '',
                                              icon: Icon(
                                                Icons.arrow_forward,
                                                size: 75.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: double.infinity,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        370.0, 0.0, 20.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF6580D9),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                hoverTextColor:
                                                    Color(0xFF6580D9),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Decoding the Algorithms',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 30.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
