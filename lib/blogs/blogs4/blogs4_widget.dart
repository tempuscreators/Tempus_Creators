import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blogs4_model.dart';
export 'blogs4_model.dart';

class Blogs4Widget extends StatefulWidget {
  const Blogs4Widget({Key? key}) : super(key: key);

  @override
  _Blogs4WidgetState createState() => _Blogs4WidgetState();
}

class _Blogs4WidgetState extends State<Blogs4Widget> {
  late Blogs4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Blogs4Model());

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
                                                  height: 3600.0,
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
                                                            'In the ever-evolving digital universe, Artificial Intelligence (AI) continues to break new grounds, transforming industries and enhancing human capabilities. Multi-Agent AI, a sophisticated branch of AI, involves the coordination and interaction of multiple intelligent agents, each designed to perform specific tasks and solve complex problems collaboratively. This blog aims to unravel the complexities of Multi-Agent AI, shedding light on its mechanisms, applications, and the plethora of benefits it offers to content creators, enriched by the precision of numerical analytics.\n\nSection 1: Unpacking Multi-Agent AI\n1.1 What is Multi-Agent AI?\nMulti-Agent AI refers to systems where multiple intelligent agents, each with their unique capabilities and knowledge, interact and collaborate to achieve common or individual goals. These agents can be software-based, like chatbots, or hardware-based, such as robots.\n\n1.2 How Does it Work?\nIn Multi-Agent AI systems, agents communicate, negotiate, and coordinate with each other to optimize performance and achieve objectives. Each agent perceives its environment, makes decisions based on its knowledge and the information received from other agents, and takes actions accordingly.\n\n1.3 Key Components and Mechanisms\nCommunication: Agents communicate through predefined protocols, exchanging information and updates.\n\nCoordination: This involves aligning the actions and decisions of multiple agents to ensure harmonious functioning.\n\nNegotiation: Agents negotiate to resolve conflicts, allocate resources, and synchronize activities.\n\nLearning: Agents continuously learn from their interactions and experiences, adapting their strategies for better performance.\n\nSection 2: Multi-Agent AI in Content Creation\n2.1 Automating Workflow\nMulti-Agent AI can automate various aspects of content creation, from research and drafting to editing and publishing. For instance, one agent could gather data, another could generate text, while a third optimizes the content for SEO. This can reduce the time spent on content creation by up to 50%, enhancing efficiency.\n\n2.2 Enhancing Creativity\nBy providing suggestions, generating ideas, and automating mundane tasks, Multi-Agent AI systems empower content creators to focus more on the creative aspects of their work. This can lead to a 30% increase in creative output, as per reports from organizations utilizing such systems.\n\n2.3 Optimizing Content for Different Platforms\nDifferent social platforms require tailored content for maximum impact. Multi-Agent AI can analyze platform-specific engagement data, helping creators adapt their content accordingly. For example, a video that retains 80% of viewers on YouTube might only retain 50% on Facebook, highlighting the need for optimization.\n\n2.4 Personalizing Content\nMulti-Agent AI excels at analyzing user data to personalize content. By understanding user preferences and behaviors, agents can tailor content to individual needs, leading to a potential 20% increase in user engagement and satisfaction.\n\nSection 3: Numerical Analytics and Multi-Agent AI\n3.1 The Role of Data in Multi-Agent Systems\nData is the lifeblood of Multi-Agent AI systems. Through continuous collection and analysis of data, agents refine their models, improve their decision-making capabilities, and enhance their performance.\n\n3.2 Measuring Performance and Impact\nNumerical analytics are vital for assessing the performance and impact of Multi-Agent AI systems. Metrics such as time saved, increase in content output, user engagement rates, and conversion rates provide quantifiable insights into the benefits of deploying such systems.\n\n3.3 Identifying Areas for Improvement\nData analytics also play a crucial role in identifying areas where Multi-Agent AI systems can be optimized. By analyzing performance data, content creators can pinpoint which aspects of the system require refinement, ensuring continuous improvement.\n\nSection 4: Benefits for Content Creators\n4.1 Streamlining Content Production\nMulti-Agent AI significantly streamlines content production, automating various stages of the workflow. This results in faster content creation, allowing creators to produce more content within the same timeframe.\n\n4.2 Enhancing Quality and Relevance\nBy leveraging data and learning from past interactions, Multi-Agent AI systems enhance the quality and relevance of content. This results in higher user satisfaction and engagement, as the content resonates better with the audience.\n\n4.3 Maximizing Reach and Visibility\nThrough platform optimization and SEO enhancements, Multi-Agent AI ensures that content reaches a wider audience and gains greater visibility. This can lead to a 40% increase in organic traffic, significantly boosting content performance.\n\n4.4 Personalization at Scale\nPersonalizing content for a vast audience can be challenging. Multi-Agent AI makes it possible to personalize content at scale, ensuring that each user receives tailored content, which can lead to a 15% increase in user conversion rates.\n\n4.5 Data-Driven Decision Making\nWith numerical analytics at their disposal, content creators can make data-driven decisions, ensuring that their strategies are grounded in reality rather than assumptions. This leads to more effective content strategies and better resource allocation.\n\nSection 5: Challenges and Future Directions\n\n5.1 Embracing Continuous Learning\nThe field of Multi-Agent AI is continuously evolving. For content creators to reap the full benefits, they must stay updated on the latest developments, tools, and best practices.\n\n5.2  Future Prospects\nThe integration of Multi-Agent AI in content creation is poised to grow, with future prospects including more advanced personalization, seamless cross-platform content optimization, and further automation of creative processes.\n\nConclusion\nMulti-Agent AI stands as a revolutionary force in the realm of content creation, offering a spectrum of benefits ranging from enhanced efficiency and creativity to data-driven personalization and optimization. By harnessing the power of multiple intelligent agents, content creators are equipped to navigate the digital landscape with greater prowess, deliver content that resonates, and connect with their audience on a deeper level. As we embrace the era of intelligent automation, Multi-Agent AI emerges as a catalyst for innovation, driving content creation to new heights and unlocking endless possibilities for creators worldwide.',
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
                                  'Navigating the\nMulti-Agent AI Landscape',
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
