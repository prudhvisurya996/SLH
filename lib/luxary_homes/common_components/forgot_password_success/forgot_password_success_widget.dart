import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/forgot_password_success_form/forgot_password_success_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forgot_password_success_model.dart';
export 'forgot_password_success_model.dart';

class ForgotPasswordSuccessWidget extends StatefulWidget {
  const ForgotPasswordSuccessWidget({super.key});

  @override
  State<ForgotPasswordSuccessWidget> createState() =>
      _ForgotPasswordSuccessWidgetState();
}

class _ForgotPasswordSuccessWidgetState
    extends State<ForgotPasswordSuccessWidget> {
  late ForgotPasswordSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordSuccessModel());

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
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: double.infinity,
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
              model: _model.forgotPasswordSuccessFormModel1,
              updateCallback: () => setState(() {}),
              child: ForgotPasswordSuccessFormWidget(),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: wrapWithModel(
              model: _model.forgotPasswordSuccessFormModel2,
              updateCallback: () => setState(() {}),
              child: ForgotPasswordSuccessFormWidget(),
            ),
          ),
      ],
    );
  }
}
