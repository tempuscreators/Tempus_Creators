import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'option_btn_model.dart';
export 'option_btn_model.dart';

class OptionBtnWidget extends StatefulWidget {
  const OptionBtnWidget({
    Key? key,
    required this.option,
    this.iconActive,
    this.iconInactive,
  }) : super(key: key);

  final String? option;
  final Widget? iconActive;
  final Widget? iconInactive;

  @override
  _OptionBtnWidgetState createState() => _OptionBtnWidgetState();
}

class _OptionBtnWidgetState extends State<OptionBtnWidget> {
  late OptionBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionBtnModel());

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
      height: 60.0,
      decoration: BoxDecoration(
        color: Color(0xFF303138),
        borderRadius: BorderRadius.circular(100.0),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          FaIcon(
            FontAwesomeIcons.youtube,
            color: FlutterFlowTheme.of(context).error,
            size: 35.0,
          ),
          Text(
            'YouTube',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Noto Sans HK',
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: false,
                ),
          ),
        ]
            .divide(SizedBox(width: 12.0))
            .addToStart(SizedBox(width: 24.0))
            .addToEnd(SizedBox(width: 24.0)),
      ),
    );
  }
}
