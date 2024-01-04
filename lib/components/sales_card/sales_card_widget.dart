import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sales_card_model.dart';
export 'sales_card_model.dart';

class SalesCardWidget extends StatefulWidget {
  const SalesCardWidget({Key? key}) : super(key: key);

  @override
  _SalesCardWidgetState createState() => _SalesCardWidgetState();
}

class _SalesCardWidgetState extends State<SalesCardWidget> {
  late SalesCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SalesCardModel());

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

    return StreamBuilder<List<OrdersRecord>>(
      stream: queryOrdersRecord(
        queryBuilder: (ordersRecord) => ordersRecord
            .where(
              'created_at',
              isGreaterThan: functions.timeStampRange(7),
            )
            .orderBy('created_at'),
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
        List<OrdersRecord> containerOrdersRecordList = snapshot.data!;
        return Container(
          width: 503.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Average view time\n',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans HK',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          'last 5 day view time',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Noto Sans HK',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ],
                ),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                22.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 230.0,
                        child: FlutterFlowBarChart(
                          barData: [
                            FFBarChartData(
                              yData: functions
                                  .totalSalesValue(
                                      containerOrdersRecordList
                                          .map((e) => e.createdAt)
                                          .withoutNulls
                                          .toList(),
                                      containerOrdersRecordList
                                          .map((e) => e.orderValue.totalAmount)
                                          .toList())!
                                  .map((e) => getJsonField(
                                        e,
                                        r'''$.totalInThousands''',
                                      ))
                                  .toList(),
                              color: FlutterFlowTheme.of(context).primary,
                            )
                          ],
                          xLabels: functions
                              .totalSalesValue(
                                  containerOrdersRecordList
                                      .map((e) => e.createdAt)
                                      .withoutNulls
                                      .toList(),
                                  containerOrdersRecordList
                                      .map((e) => e.orderValue.totalAmount)
                                      .toList())!
                              .map((e) => getJsonField(
                                    e,
                                    r'''$.date''',
                                  ))
                              .toList()
                              .map((e) => e.toString())
                              .toList(),
                          barWidth: 16.0,
                          barBorderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(2.0),
                            topRight: Radius.circular(2.0),
                          ),
                          groupSpace: 8.0,
                          alignment: BarChartAlignment.spaceBetween,
                          chartStylingInfo: ChartStylingInfo(
                            backgroundColor: Colors.transparent,
                            showBorder: false,
                          ),
                          axisBounds: AxisBounds(
                            minY: 0.0,
                            maxY: 50.0,
                          ),
                          xAxisLabelInfo: AxisLabelInfo(
                            showLabels: true,
                            labelTextStyle: TextStyle(
                              fontFamily: 'Noto Sans HK',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0,
                            ),
                            labelInterval: 10.0,
                          ),
                          yAxisLabelInfo: AxisLabelInfo(
                            showLabels: true,
                            labelTextStyle: TextStyle(
                              fontFamily: 'Noto Sans HK',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0,
                            ),
                            labelInterval: 10.0,
                            labelFormatter: LabelFormatter(
                              numberFormat: (val) => val.toString(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        );
      },
    );
  }
}
