import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_card1_model.dart';
export 'product_card1_model.dart';

class ProductCard1Widget extends StatefulWidget {
  const ProductCard1Widget({
    Key? key,
    required this.productTitle,
    required this.price,
    required this.sold,
    required this.sales,
    required this.productPhoto,
  }) : super(key: key);

  final String? productTitle;
  final double? price;
  final int? sold;
  final double? sales;
  final String? productPhoto;

  @override
  _ProductCard1WidgetState createState() => _ProductCard1WidgetState();
}

class _ProductCard1WidgetState extends State<ProductCard1Widget> {
  late ProductCard1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCard1Model());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 36.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                          widget.productPhoto,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-admin-tfp67j/assets/f053ahnqau0n/thumbnail-2.png',
                        ),
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    widget.productTitle!.maybeHandleOverflow(
                      maxChars: 40,
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
                ].divide(SizedBox(width: 24.0)),
              ),
            ),
          ),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: RichText(
              textScaleFactor: MediaQuery.of(context).textScaleFactor,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Sans HK',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      formatNumber(
                        widget.price,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.periodDecimal,
                      ),
                      '0',
                    ),
                    style: TextStyle(
                      fontFamily: 'Noto Sans HK',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ),
          Container(
            width: 120.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Text(
              valueOrDefault<String>(
                widget.sold?.toString(),
                '0',
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
            width: 120.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: RichText(
              textScaleFactor: MediaQuery.of(context).textScaleFactor,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Sans HK',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      formatNumber(
                        widget.sales,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.periodDecimal,
                      ),
                      '0',
                    ),
                    style: TextStyle(
                      fontFamily: 'Noto Sans HK',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ].divide(SizedBox(width: 12.0)),
      ),
    );
  }
}
