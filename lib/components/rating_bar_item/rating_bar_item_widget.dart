import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'rating_bar_item_model.dart';
export 'rating_bar_item_model.dart';

class RatingBarItemWidget extends StatefulWidget {
  const RatingBarItemWidget({
    Key? key,
    required this.title,
    required this.totalRatings,
    Color? color,
    Color? bgColor,
    double? rating,
  })  : this.color = color ?? const Color(0xFF00AA07),
        this.bgColor = bgColor ?? const Color(0x3300AA07),
        this.rating = rating ?? 0.0,
        super(key: key);

  final String? title;
  final int? totalRatings;
  final Color color;
  final Color bgColor;
  final double rating;

  @override
  _RatingBarItemWidgetState createState() => _RatingBarItemWidgetState();
}

class _RatingBarItemWidgetState extends State<RatingBarItemWidget> {
  late RatingBarItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingBarItemModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 70.0,
          decoration: BoxDecoration(),
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Text(
            widget.title!,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Noto Sans HK',
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
        ),
        LinearPercentIndicator(
          percent: widget.rating,
          width: 200.0,
          lineHeight: 12.0,
          animation: true,
          animateFromLastPercent: true,
          progressColor: widget.color,
          backgroundColor: widget.bgColor,
          barRadius: Radius.circular(12.0),
          padding: EdgeInsets.zero,
        ),
        Container(
          width: 24.0,
          decoration: BoxDecoration(),
          alignment: AlignmentDirectional(1.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.totalRatings?.toString(),
              '0',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Noto Sans HK',
                  fontWeight: FontWeight.w500,
                  useGoogleFonts: false,
                ),
          ),
        ),
      ].divide(SizedBox(width: 24.0)),
    );
  }
}
