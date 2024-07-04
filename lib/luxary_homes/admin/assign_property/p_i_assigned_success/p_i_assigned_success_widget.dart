import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/assign_property/p_i_assign_success_form/p_i_assign_success_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p_i_assigned_success_model.dart';
export 'p_i_assigned_success_model.dart';

class PIAssignedSuccessWidget extends StatefulWidget {
  const PIAssignedSuccessWidget({super.key});

  @override
  State<PIAssignedSuccessWidget> createState() =>
      _PIAssignedSuccessWidgetState();
}

class _PIAssignedSuccessWidgetState extends State<PIAssignedSuccessWidget> {
  late PIAssignedSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PIAssignedSuccessModel());

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
              model: _model.pIAssignSuccessFormModel,
              updateCallback: () => setState(() {}),
              child: PIAssignSuccessFormWidget(),
            ),
          ),
      ],
    );
  }
}
