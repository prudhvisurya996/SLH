import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/forgot_password_form/forgot_password_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forgot_password_model.dart';
export 'forgot_password_model.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({
    super.key,
    required this.email,
  });

  final String? email;

  @override
  State<ForgotPasswordWidget> createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  late ForgotPasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordModel());

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
              model: _model.forgotPasswordFormModel1,
              updateCallback: () => setState(() {}),
              child: ForgotPasswordFormWidget(),
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
              model: _model.forgotPasswordFormModel2,
              updateCallback: () => setState(() {}),
              child: ForgotPasswordFormWidget(),
            ),
          ),
      ],
    );
  }
}
