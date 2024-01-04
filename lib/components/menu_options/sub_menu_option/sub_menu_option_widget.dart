import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sub_menu_option_model.dart';
export 'sub_menu_option_model.dart';

class SubMenuOptionWidget extends StatefulWidget {
  const SubMenuOptionWidget({
    Key? key,
    required this.string,
  }) : super(key: key);

  final String? string;

  @override
  _SubMenuOptionWidgetState createState() => _SubMenuOptionWidgetState();
}

class _SubMenuOptionWidgetState extends State<SubMenuOptionWidget> {
  late SubMenuOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubMenuOptionModel());

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
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          FFAppState().activePageSub == widget.string
              ? FlutterFlowTheme.of(context).secondary
              : Colors.transparent,
          Colors.transparent,
        ),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 48.0,
            child: StyledVerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).secondaryText,
              lineStyle: DividerLineStyle.dashed,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 24.0,
                    child: StyledDivider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      lineStyle: DividerLineStyle.dashed,
                    ),
                  ),
                ],
              ),
              Text(
                widget.string!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      color: valueOrDefault<Color>(
                        FFAppState().activePageSub == widget.string
                            ? FlutterFlowTheme.of(context).primaryText
                            : FlutterFlowTheme.of(context).secondaryText,
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                      fontWeight: FontWeight.w300,
                      useGoogleFonts: false,
                    ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ].addToStart(SizedBox(width: 36.0)).addToEnd(SizedBox(width: 24.0)),
      ),
    );
  }
}
