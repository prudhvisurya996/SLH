import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/register_form_component/register_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'register_component_model.dart';
export 'register_component_model.dart';

class RegisterComponentWidget extends StatefulWidget {
  const RegisterComponentWidget({super.key});

  @override
  State<RegisterComponentWidget> createState() =>
      _RegisterComponentWidgetState();
}

class _RegisterComponentWidgetState extends State<RegisterComponentWidget> {
  late RegisterComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterComponentModel());

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
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.7,
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
                model: _model.registerFormComponentModel1,
                updateCallback: () => setState(() {}),
                child: RegisterFormComponentWidget(),
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
                height: MediaQuery.sizeOf(context).height * 0.9,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: wrapWithModel(
                  model: _model.registerFormComponentModel2,
                  updateCallback: () => setState(() {}),
                  child: RegisterFormComponentWidget(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
