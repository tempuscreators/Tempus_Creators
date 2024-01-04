import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blogs6_model.dart';
export 'blogs6_model.dart';

class Blogs6Widget extends StatefulWidget {
  const Blogs6Widget({Key? key}) : super(key: key);

  @override
  _Blogs6WidgetState createState() => _Blogs6WidgetState();
}

class _Blogs6WidgetState extends State<Blogs6Widget> {
  late Blogs6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Blogs6Model());

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
                                                  height: 3000.0,
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
                                                            'Understanding the algorithms of major social media platforms is crucial for content creators, marketers, and users aiming to maximize their online presence. These algorithms play a pivotal role in determining what content gets seen, by whom, and when. In this comprehensive guide, we delve into the basics of the algorithms for Instagram, YouTube, Twitch, and Facebook, providing insights and strategies to navigate these platforms effectively.\n\nSection 1: Instagram\'s Algorithm\n1.1 How it Works:\nInstagram\'s algorithm is designed to show users the content they are most likely to engage with. It considers factors like:\n\nInterest: The algorithm predicts how much a user will engage with a post based on their past interactions.\nTimeliness: Newer posts are prioritized over older ones.\nRelationship: Content from users a person interacts with regularly is prioritized.\n1.2 Strategies for Content Creators:\nConsistent Posting: Maintain a regular posting schedule to increase visibility.\nEngaging Content: Create content that encourages interactions, such as likes, comments, and shares.\nLeverage Stories and Reels: Utilize Instagram’s features to boost engagement.\nUse Relevant Hashtags: This helps in reaching a broader audience.\n1.3 Numerical Analytics:\nMonitor metrics like engagement rate, reach, and follower growth to understand how well your content performs and to identify areas for improvement.\n\nSection 2: YouTube\'s Algorithm\n2.1 How it Works:\nYouTube\'s algorithm focuses on user engagement and satisfaction. Key factors include:\n\nWatch Time: The total amount of time spent watching a video.\nClick-Through Rate (CTR): The percentage of people who click on a video after seeing the thumbnail.\nUser Interaction: Likes, shares, comments, and subscriptions.\n2.2 Strategies for Content Creators:\nOptimize Video Titles and Descriptions: Use clear, engaging, and keyword-rich titles and descriptions.\nCreate High-Quality Thumbnails: Thumbnails play a crucial role in CTR.\nEncourage Viewer Interaction: Ask viewers to like, comment, and subscribe.\nFocus on Retention: Create content that keeps viewers watching till the end.\n2.3 Numerical Analytics:\nAnalyze watch time, CTR, and engagement rates to measure performance and optimize content.\n\nSection 3: Twitch\'s Algorithm\n3.1 How it Works:\nTwitch\'s algorithm is designed to promote live content and is influenced by:\n\nViewer Engagement: The number of active viewers, chat interactions, and follows during a stream.\nStream Consistency: Regular streaming schedules are rewarded.\nContent Relevance: Matching stream content with viewer preferences.\n3.2 Strategies for Content Creators:\nMaintain a Consistent Schedule: Stream regularly to build an audience.\nEngage with Your Audience: Interact with viewers through chat and acknowledge follows and subscriptions.\nNetwork with Other Streamers: Host and raid other channels to increase visibility.\nOptimize Your Stream\'s Title and Description: Use clear, enticing, and relevant titles and descriptions.\n3.3 Numerical Analytics:\nFocus on metrics such as average viewership, follower growth, and engagement rate to gauge performance.\n\nSection 4: Facebook\'s Algorithm\n4.1 How it Works:\nFacebook\'s algorithm aims to show users content that is relevant and engaging, considering factors like:\n\nContent Type: Different types of content (status updates, photos, links, etc.) have different weights.\nEngagement: Posts with higher engagement (likes, comments, shares) are prioritized.\nRecency: Newer content is given preference.\n4.2 Strategies for Content Creators:\nCreate Engaging Content: Content that sparks interactions is favored.\nUtilize Facebook Live: Live videos tend to receive higher engagement.\nInteract with Your Audience: Respond to comments and messages.\nPost Regularly: Maintain a consistent posting schedule.\n4.3 Numerical Analytics:\nTrack engagement rates, reach, and follower growth to assess your content\'s performance and identify areas for improvement.\n\nSection 5: Cross-Platform Strategies\n5.1 Understanding Platform Differences:\nEach platform has its unique algorithm, but there are cross-cutting principles such as prioritizing engagement and consistency.\n\n5.2 Adapting Content for Each Platform:\nCustomize your content to suit the preferences of each platform’s algorithm and user base.\n\n5.3 Leveraging Analytics:\nUtilize the analytics tools provided by each platform to track performance and make data-driven decisions.\n\nConclusion:\nNavigating the algorithms of major social media platforms may seem daunting, but a deep understanding coupled with strategic action can lead to significant growth and engagement. By focusing on creating high-quality, engaging content, maintaining consistency, and leveraging the unique features of each platform, content creators can optimize their online presence and connect with their audience like never before.\n\nArmed with knowledge and the right strategies, the ever-evolving algorithms of Instagram, YouTube, Twitch, and Facebook become powerful allies in the digital landscape, driving visibility, engagement, and success. So, embrace the algorithms, harness their potential, and watch your online presence thrive.',
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
                                  'Decoding the Algorithms',
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
