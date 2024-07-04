import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/personal_information_components/personal_information_form_component/personal_information_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'personal_information_component_model.dart';
export 'personal_information_component_model.dart';

class PersonalInformationComponentWidget extends StatefulWidget {
  const PersonalInformationComponentWidget({super.key});

  @override
  State<PersonalInformationComponentWidget> createState() =>
      _PersonalInformationComponentWidgetState();
}

class _PersonalInformationComponentWidgetState
    extends State<PersonalInformationComponentWidget> {
  late PersonalInformationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalInformationComponentModel());

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
                model: _model.personalInformationFormComponentModel1,
                updateCallback: () => setState(() {}),
                child: PersonalInformationFormComponentWidget(),
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
                model: _model.personalInformationFormComponentModel2,
                updateCallback: () => setState(() {}),
                child: PersonalInformationFormComponentWidget(),
              ),
            ),
          ),
      ],
    );
  }
}
