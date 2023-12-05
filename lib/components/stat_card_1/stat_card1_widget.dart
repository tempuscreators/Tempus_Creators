import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stat_card1_model.dart';
export 'stat_card1_model.dart';

class StatCard1Widget extends StatefulWidget {
  const StatCard1Widget({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
    required this.description,
  }) : super(key: key);

  final Widget? icon;
  final Color? color;
  final String? title;
  final String? description;

  @override
  _StatCard1WidgetState createState() => _StatCard1WidgetState();
}

class _StatCard1WidgetState extends State<StatCard1Widget> {
  late StatCard1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatCard1Model());

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

    return Container();
  }
}
