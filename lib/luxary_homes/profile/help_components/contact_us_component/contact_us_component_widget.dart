import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/help_components/contact_us_form_component/contact_us_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contact_us_component_model.dart';
export 'contact_us_component_model.dart';

class ContactUsComponentWidget extends StatefulWidget {
  const ContactUsComponentWidget({super.key});

  @override
  State<ContactUsComponentWidget> createState() =>
      _ContactUsComponentWidgetState();
}

class _ContactUsComponentWidgetState extends State<ContactUsComponentWidget> {
  late ContactUsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactUsComponentModel());

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
              height: MediaQuery.sizeOf(context).height * 0.9,
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
                model: _model.contactUsFormComponentModel1,
                updateCallback: () => setState(() {}),
                child: ContactUsFormComponentWidget(),
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
              height: MediaQuery.sizeOf(context).height * 0.8,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: wrapWithModel(
                model: _model.contactUsFormComponentModel2,
                updateCallback: () => setState(() {}),
                child: ContactUsFormComponentWidget(),
              ),
            ),
          ),
      ],
    );
  }
}
