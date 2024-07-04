import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/phone_num_login_form/phone_num_login_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'phone_login_component_model.dart';
export 'phone_login_component_model.dart';

class PhoneLoginComponentWidget extends StatefulWidget {
  const PhoneLoginComponentWidget({super.key});

  @override
  State<PhoneLoginComponentWidget> createState() =>
      _PhoneLoginComponentWidgetState();
}

class _PhoneLoginComponentWidgetState extends State<PhoneLoginComponentWidget> {
  late PhoneLoginComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhoneLoginComponentModel());

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
        mainAxisSize: MainAxisSize.max,
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
                model: _model.phoneNumLoginFormModel1,
                updateCallback: () => setState(() {}),
                child: PhoneNumLoginFormWidget(),
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
              height: MediaQuery.sizeOf(context).height * 0.75,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: wrapWithModel(
                model: _model.phoneNumLoginFormModel2,
                updateCallback: () => setState(() {}),
                child: PhoneNumLoginFormWidget(),
              ),
            ),
        ],
      ),
    );
  }
}
