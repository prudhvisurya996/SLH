import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/search_form_phone/search_form_phone_widget.dart';
import '/luxary_homes/users/search_form_web/search_form_web_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

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
                  model: _model.searchFormPhoneModel,
                  updateCallback: () => setState(() {}),
                  child: SearchFormPhoneWidget(),
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
              decoration: BoxDecoration(
                color: Color(0xFFF3F3FA),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: wrapWithModel(
                model: _model.searchFormWebModel,
                updateCallback: () => setState(() {}),
                child: SearchFormWebWidget(),
              ),
            ),
        ],
      ),
    );
  }
}
