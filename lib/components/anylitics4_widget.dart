import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'anylitics4_model.dart';
export 'anylitics4_model.dart';

class Anylitics4Widget extends StatefulWidget {
  const Anylitics4Widget({Key? key}) : super(key: key);

  @override
  _Anylitics4WidgetState createState() => _Anylitics4WidgetState();
}

class _Anylitics4WidgetState extends State<Anylitics4Widget> {
  late Anylitics4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Anylitics4Model());

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

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 190.0,
        height: 220.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFF4267B2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  FFIcons.kfacebook,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 50.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                'Likes',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 25.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: FutureBuilder<ApiCallResponse>(
                future: YTlikesAPICall.call(),
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
                  final listViewYTlikesAPIResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final viewcount = getJsonField(
                        listViewYTlikesAPIResponse.jsonBody,
                        r'''$.items[:].statistics.viewCount''',
                      ).toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: viewcount.length,
                        itemBuilder: (context, viewcountIndex) {
                          final viewcountItem = viewcount[viewcountIndex];
                          return Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: YTlikesAPICall.call(),
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
                                final textYTlikesAPIResponse = snapshot.data!;
                                return Text(
                                  getJsonField(
                                    listViewYTlikesAPIResponse.jsonBody,
                                    r'''$.items[:].statistics.viewCount''',
                                  ).toString(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
