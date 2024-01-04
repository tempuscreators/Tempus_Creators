import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adaptive_switch_model.dart';
export 'adaptive_switch_model.dart';

class AdaptiveSwitchWidget extends StatefulWidget {
  const AdaptiveSwitchWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  final bool? value;

  @override
  _AdaptiveSwitchWidgetState createState() => _AdaptiveSwitchWidgetState();
}

class _AdaptiveSwitchWidgetState extends State<AdaptiveSwitchWidget> {
  late AdaptiveSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdaptiveSwitchModel());

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
      width: 54.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.value! ? Color(0xFF2874F0) : Color(0xFFB2B2B2),
          Color(0xFFB2B2B2),
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(
            valueOrDefault<double>(
              widget.value! ? 1.0 : (-1),
              0.0,
            ),
            valueOrDefault<double>(
              widget.value! ? 0.0 : 0.0,
              0.0,
            )),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(1.0, 2.0, 0.0, 2.0),
              child: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
