import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blogs8_model.dart';
export 'blogs8_model.dart';

class Blogs8Widget extends StatefulWidget {
  const Blogs8Widget({Key? key}) : super(key: key);

  @override
  _Blogs8WidgetState createState() => _Blogs8WidgetState();
}

class _Blogs8WidgetState extends State<Blogs8Widget> {
  late Blogs8Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Blogs8Model());

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
        title: 'TOSS',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 1512.0,
                      height: 116.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                                context.pushNamed('priceings_2');
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
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 1512.0,
                          height: 1000.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional(-1.0, 1.0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Text(
                                        'Copyright © 2023 Tempus Creators. All rights reserved.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF6F6E6E),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 65.0, 0.0),
                                        child: Icon(
                                          FFIcons.ktwitch,
                                          color: Color(0xFF838383),
                                          size: 50.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 25.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.facebookF,
                                          color: Color(0xFF838383),
                                          size: 50.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 185.0, 0.0),
                                        child: Icon(
                                          FFIcons.kinstagram,
                                          color: Color(0xFF838383),
                                          size: 50.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 120.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.youtube,
                                          color: Color(0xFF838383),
                                          size: 50.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 1.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('TOSS');
                                        },
                                        child: Container(
                                          width: 100.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            border: Border.all(
                                              color: Color(0xFF838383),
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed('TOSS');
                                              },
                                              child: Text(
                                                'T.O.S',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF838383),
                                                          fontSize: 30.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            125.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed('privicy');
                                          },
                                          child: Container(
                                            width: 203.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                              border: Border.all(
                                                color: Color(0xFF838383),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('privicy');
                                                },
                                                child: Text(
                                                  'Privacy Policy',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF838383),
                                                        fontSize: 30.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            40.0, 40.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed('blogs');
                                          },
                                          child: Icon(
                                            Icons.arrow_back_ios_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 75.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 50.0, 0.0, 0.0),
                                        child: Container(
                                          width: 1300.0,
                                          height: 750.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 4000.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Text(
                                                          'Published 10/25/2023 by Brodie Wendt',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF838383),
                                                                fontSize: 30.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      150.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'In today’s digital landscape, a well-thought-out content strategy is pivotal for engaging audiences, building brand presence, and driving business success. With the advent of Artificial Intelligence (AI), there are now smarter and more efficient ways to curate and implement effective content strategies. In this extensive guide, we delve into the intricacies of content strategy and explore how AI is revolutionizing this domain.\n\nSection 1: Understanding Content Strategy\n1.1 Defining Content Strategy\nContent strategy involves planning, developing, and managing content to meet specific goals. It encompasses understanding the target audience, determining the type of content to produce, planning distribution channels, and setting performance metrics.\n\n1.2 Key Components of a Content Strategy\nAudience Analysis: Identifying and understanding the target audience.\nContent Audit: Evaluating existing content to identify gaps and opportunities.\nContent Types and Channels: Deciding on the types of content to produce and the channels to distribute it.\nContent Calendar: Scheduling content production and publication.\nPerformance Metrics: Setting key performance indicators (KPIs) to measure success.\n1.3 The Importance of a Robust Content Strategy\nA strong content strategy ensures consistency, improves engagement, and drives conversions. It aligns content production with business objectives, providing a clear roadmap for success.\n\nSection 2: The Rise of AI in Content Strategy\n2.1 Overview of AI in Content Strategy\nAI brings automation, data analysis, and personalization to content strategy, helping brands create more relevant and impactful content.\n\n2.2 AI-Driven Audience Analysis\nAI tools analyze customer data to create detailed audience personas, ensuring content resonates with the target demographic.\n\n2.3 Content Optimization and Personalization\nAI algorithms analyze user behavior and preferences to deliver personalized content recommendations, improving engagement and conversion rates.\n\n2.4 Predictive Analytics for Content Performance\nAI provides predictive insights on potential content performance, helping strategists make informed decisions on content creation and distribution.\n\nSection 3: Crafting an AI-Enhanced Content Strategy\n3.1 Integrating AI into Audience Analysis\nLeverage AI tools to gather and analyze audience data, creating nuanced audience segments for targeted content.\n\n3.2 Automating Content Audits\nUse AI-powered tools to conduct content audits, identifying high-performing content and areas for improvement.\n\n3.3 Enhancing Content Creation\nAI can assist in content creation, from generating ideas to optimizing language for search engines and readability.\n\n3.4 Optimizing Content Distribution\nAI algorithms analyze user activity to determine the best times and channels for content distribution, ensuring maximum reach and engagement.\n\n3.5 Setting and Measuring KPIs with AI\nUtilize AI tools to set realistic and data-driven KPIs, and continuously measure content performance against these benchmarks.\n\nSection 4: Benefits of AI in Content Strategy\n4.1 Increased Efficiency\nAI automates routine tasks in content strategy, freeing up time for strategists to focus on creative and strategic tasks.\n\n4.2 Enhanced Personalization\nAI’s capability to analyze user data leads to highly personalized content, resulting in better user experiences and improved engagement.\n\n4.3 Data-Driven Decisions\nAI provides actionable insights from data, ensuring content strategies are aligned with audience needs and preferences.\n\n4.4 Continuous Learning and Optimization\nAI systems learn from past performance, enabling continuous optimization of content strategies for better results.\n\nSection 5: Best Practices for Implementing AI in Content Strategy\n5.1 Starting Small and Scaling Up\nBegin by integrating AI into specific areas of your content strategy and scale up as you become more comfortable with the technology.\n\n5.2 Ensuring Data Privacy\nWhen using AI in content strategy, it’s crucial to prioritize user privacy and adhere to data protection regulations.\n\n5.3 Providing Human Oversight\nWhile AI can automate and enhance many aspects of content strategy, human oversight is essential to ensure relevance, accuracy, and ethical use of AI.\n\n5.4 Continuous Learning and Adaptation\nStay updated on the latest AI advancements and be ready to adapt your strategies as new technologies emerge.\n\nSection 6: The Future of AI in Content Strategy\n6.1 Evolving AI Technologies\nAs AI technologies continue to evolve, their capabilities in content strategy will expand, providing even more opportunities for personalization, efficiency, and innovation.\n\n6.2 Building Ethical AI Systems\nThe future of AI in content strategy will require a strong focus on building ethical AI systems that prioritize user privacy and fairness.\n\n6.3 Enhancing Creative Processes\nAI will play a larger role in enhancing the creative processes of content strategy, aiding in idea generation, content creation, and storytelling.\n\n6.4 Preparing for AI-Driven Content Strategy\nContent strategists should prepare for an AI-driven future by acquiring relevant skills, staying informed on AI trends, and embracing a data-driven approach to content strategy.\n\nConclusion\nIn conclusion, integrating AI into content strategy is no longer an option but a necessity for brands looking to stay competitive and connect with their audiences in meaningful ways. By automating routine tasks, providing data-driven insights, and enabling personalized content experiences, AI empowers content strategists to craft strategies that are not only effective but also aligned with audience needs and preferences.\n\nThe future of content strategy is intrinsically tied to the evolution of AI, and embracing this technology is pivotal for success. With the right approach, tools, and mindset, content strategists can leverage AI to elevate their strategies, drive engagement, and achieve their business objectives.\n\nAs we step into a new era of content strategy, the possibilities are endless, and the potential for impact is immense. So, embrace AI, harness its power, and let it transform your content strategy into a powerhouse of success and innovation.',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFFC1C1C1),
                                                                  fontSize:
                                                                      25.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
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
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  'Elevating Content Strategy: \nThe Role of AI in Crafting Success',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF6580D9),
                                        fontSize: 50.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
