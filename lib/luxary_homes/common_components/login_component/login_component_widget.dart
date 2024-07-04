import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/login_form_component/login_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_component_model.dart';
export 'login_component_model.dart';

class LoginComponentWidget extends StatefulWidget {
  const LoginComponentWidget({super.key});

  @override
  State<LoginComponentWidget> createState() => _LoginComponentWidgetState();
}

class _LoginComponentWidgetState extends State<LoginComponentWidget> {
  late LoginComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginComponentModel());

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
            tabletLandscape: false,
            desktop: false,
          ))
            Flexible(
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.65,
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
                  model: _model.loginFormComponentModel1,
                  updateCallback: () => setState(() {}),
                  child: LoginFormComponentWidget(),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              height: MediaQuery.sizeOf(context).height * 0.7,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: wrapWithModel(
                model: _model.loginFormComponentModel2,
                updateCallback: () => setState(() {}),
                child: LoginFormComponentWidget(),
              ),
            ),
        ],
      ),
    );
  }
}
