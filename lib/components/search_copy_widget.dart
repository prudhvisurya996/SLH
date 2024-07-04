import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/search_form_web/search_form_web_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_copy_model.dart';
export 'search_copy_model.dart';

class SearchCopyWidget extends StatefulWidget {
  const SearchCopyWidget({super.key});

  @override
  State<SearchCopyWidget> createState() => _SearchCopyWidgetState();
}

class _SearchCopyWidgetState extends State<SearchCopyWidget> {
  late SearchCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchCopyModel());

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Flexible(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.75,
              height: MediaQuery.sizeOf(context).height * 0.75,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: wrapWithModel(
                model: _model.searchFormWebModel,
                updateCallback: () => setState(() {}),
                child: SearchFormWebWidget(),
              ),
            ),
          ),
      ],
    );
  }
}
