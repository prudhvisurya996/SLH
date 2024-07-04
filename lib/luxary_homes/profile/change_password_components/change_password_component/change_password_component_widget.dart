import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/change_password_components/change_password_form_component/change_password_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_password_component_model.dart';
export 'change_password_component_model.dart';

class ChangePasswordComponentWidget extends StatefulWidget {
  const ChangePasswordComponentWidget({super.key});

  @override
  State<ChangePasswordComponentWidget> createState() =>
      _ChangePasswordComponentWidgetState();
}

class _ChangePasswordComponentWidgetState
    extends State<ChangePasswordComponentWidget> {
  late ChangePasswordComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordComponentModel());

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
          desktop: false,
        ))
          Flexible(
            child: Container(
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
                model: _model.changePasswordFormComponentModel1,
                updateCallback: () => setState(() {}),
                child: ChangePasswordFormComponentWidget(),
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
                model: _model.changePasswordFormComponentModel2,
                updateCallback: () => setState(() {}),
                child: ChangePasswordFormComponentWidget(),
              ),
            ),
          ),
      ],
    );
  }
}
