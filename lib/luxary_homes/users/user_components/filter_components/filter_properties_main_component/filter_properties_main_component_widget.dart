import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_components/filter_components/filter_form_component/filter_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_properties_main_component_model.dart';
export 'filter_properties_main_component_model.dart';

class FilterPropertiesMainComponentWidget extends StatefulWidget {
  const FilterPropertiesMainComponentWidget({super.key});

  @override
  State<FilterPropertiesMainComponentWidget> createState() =>
      _FilterPropertiesMainComponentWidgetState();
}

class _FilterPropertiesMainComponentWidgetState
    extends State<FilterPropertiesMainComponentWidget> {
  late FilterPropertiesMainComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterPropertiesMainComponentModel());

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
              model: _model.filterFormComponentModel1,
              updateCallback: () => setState(() {}),
              child: FilterFormComponentWidget(),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: wrapWithModel(
              model: _model.filterFormComponentModel2,
              updateCallback: () => setState(() {}),
              child: FilterFormComponentWidget(),
            ),
          ),
      ],
    );
  }
}
