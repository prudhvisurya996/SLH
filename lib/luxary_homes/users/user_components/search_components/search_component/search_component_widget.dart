import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_components/search_components/search_form_component/search_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_component_model.dart';
export 'search_component_model.dart';

class SearchComponentWidget extends StatefulWidget {
  const SearchComponentWidget({super.key});

  @override
  State<SearchComponentWidget> createState() => _SearchComponentWidgetState();
}

class _SearchComponentWidgetState extends State<SearchComponentWidget> {
  late SearchComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchComponentModel());

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
                  model: _model.searchFormComponentModel1,
                  updateCallback: () => setState(() {}),
                  child: SearchFormComponentWidget(),
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
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: wrapWithModel(
                  model: _model.searchFormComponentModel2,
                  updateCallback: () => setState(() {}),
                  child: SearchFormComponentWidget(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
