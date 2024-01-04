import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'anylitics3_model.dart';
export 'anylitics3_model.dart';

class Anylitics3Widget extends StatefulWidget {
  const Anylitics3Widget({Key? key}) : super(key: key);

  @override
  _Anylitics3WidgetState createState() => _Anylitics3WidgetState();
}

class _Anylitics3WidgetState extends State<Anylitics3Widget> {
  late Anylitics3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Anylitics3Model());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xFFD62976),
              shape: BoxShape.circle,
            ),
            child: Icon(
              FFIcons.kinstagram,
              color: Colors.white,
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
                  final comment = (YTlikesAPICall.comment(
                        listViewYTlikesAPIResponse.jsonBody,
                      ) as List)
                          .map<String>((s) => s.toString())
                          .toList()
                          ?.toList() ??
                      [];
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: comment.length,
                    itemBuilder: (context, commentIndex) {
                      final commentItem = comment[commentIndex];
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
                                textYTlikesAPIResponse.jsonBody,
                                r'''$.items[:].statistics.commentCount''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
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
    );
  }
}
