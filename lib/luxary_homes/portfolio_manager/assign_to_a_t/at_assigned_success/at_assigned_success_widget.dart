import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/assign_to_a_t/at_success_form/at_success_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'at_assigned_success_model.dart';
export 'at_assigned_success_model.dart';

class AtAssignedSuccessWidget extends StatefulWidget {
  const AtAssignedSuccessWidget({super.key});

  @override
  State<AtAssignedSuccessWidget> createState() =>
      _AtAssignedSuccessWidgetState();
}

class _AtAssignedSuccessWidgetState extends State<AtAssignedSuccessWidget> {
  late AtAssignedSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtAssignedSuccessModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: MediaQuery.sizeOf(context).width * 0.3,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: wrapWithModel(
              model: _model.atSuccessFormModel,
              updateCallback: () => setState(() {}),
              child: AtSuccessFormWidget(),
            ),
          ),
      ],
    );
  }
}
