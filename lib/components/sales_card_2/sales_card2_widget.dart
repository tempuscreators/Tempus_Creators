import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sales_card2_model.dart';
export 'sales_card2_model.dart';

class SalesCard2Widget extends StatefulWidget {
  const SalesCard2Widget({
    Key? key,
    int? successfulOrders,
    int? pendingOrders,
    int? failedOrders,
    required this.totalOrders,
  })  : this.successfulOrders = successfulOrders ?? 0,
        this.pendingOrders = pendingOrders ?? 0,
        this.failedOrders = failedOrders ?? 0,
        super(key: key);

  final int successfulOrders;
  final int pendingOrders;
  final int failedOrders;
  final int? totalOrders;

  @override
  _SalesCard2WidgetState createState() => _SalesCard2WidgetState();
}

class _SalesCard2WidgetState extends State<SalesCard2Widget> {
  late SalesCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SalesCard2Model());

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
      width: 360.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Sales',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Noto Sans HK',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                      Text(
                        'Sales states of this week',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Noto Sans HK',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ),
                Icon(
                  FFIcons.ktrendingUp,
                  color: Color(0xFF00AA07),
                  size: 16.0,
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        child: FlutterFlowPieChart(
                          data: FFPieChartData(
                            values: [
                              widget.successfulOrders,
                              widget.pendingOrders,
                              widget.failedOrders
                            ],
                            colors: [
                              Color(0xFF00AA07),
                              Color(0xFFFFC632),
                              Color(0xFFED3333)
                            ],
                            radius: [28.0, 28.0, 28.0],
                          ),
                          donutHoleRadius: 48.0,
                          donutHoleColor: Color(0xFF272D36),
                          sectionLabelStyle:
                              FlutterFlowTheme.of(context).headlineSmall,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '100%',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            'Ratio',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Success',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: Color(0xFF00AA07),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            '${valueOrDefault<String>(
                              formatNumber(
                                functions.calculatePercentage(
                                    widget.totalOrders,
                                    widget.successfulOrders),
                                formatType: FormatType.custom,
                                format: '#.##',
                                locale: 'en_US',
                              ),
                              '0',
                            )} %',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Pending',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: Color(0xFFFFC632),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            '${valueOrDefault<String>(
                              formatNumber(
                                functions.calculatePercentage(
                                    widget.totalOrders, widget.pendingOrders),
                                formatType: FormatType.custom,
                                format: '#.##',
                                locale: 'en_US',
                              ),
                              '0',
                            )} %',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Failed',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: Color(0xFFED3333),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            '${valueOrDefault<String>(
                              formatNumber(
                                functions.calculatePercentage(
                                    widget.totalOrders, widget.failedOrders),
                                formatType: FormatType.custom,
                                format: '#.##',
                                locale: 'en_US',
                              ),
                              '0',
                            )} %',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ),
                ].divide(SizedBox(width: 48.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
