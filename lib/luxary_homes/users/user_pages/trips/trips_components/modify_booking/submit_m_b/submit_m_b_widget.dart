import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/trips_components/modify_booking/submit_m_b_form/submit_m_b_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'submit_m_b_model.dart';
export 'submit_m_b_model.dart';

class SubmitMBWidget extends StatefulWidget {
  const SubmitMBWidget({super.key});

  @override
  State<SubmitMBWidget> createState() => _SubmitMBWidgetState();
}

class _SubmitMBWidgetState extends State<SubmitMBWidget> {
  late SubmitMBModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitMBModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(22.0),
                    topRight: Radius.circular(22.0),
                  ),
                ),
                child: wrapWithModel(
                  model: _model.submitMBFormModel1,
                  updateCallback: () => setState(() {}),
                  child: SubmitMBFormWidget(),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Flexible(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.3,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: wrapWithModel(
                  model: _model.submitMBFormModel2,
                  updateCallback: () => setState(() {}),
                  child: SubmitMBFormWidget(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
