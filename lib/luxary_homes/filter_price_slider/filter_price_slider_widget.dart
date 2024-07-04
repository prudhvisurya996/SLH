import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_price_slider_model.dart';
export 'filter_price_slider_model.dart';

class FilterPriceSliderWidget extends StatefulWidget {
  const FilterPriceSliderWidget({super.key});

  @override
  State<FilterPriceSliderWidget> createState() =>
      _FilterPriceSliderWidgetState();
}

class _FilterPriceSliderWidgetState extends State<FilterPriceSliderWidget> {
  late FilterPriceSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterPriceSliderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              'Budget',
              style: GoogleFonts.getFont(
                'Work Sans',
                color: Color(0xFF000D3E),
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            child: custom_widgets.RangePriceComponent(
              width: double.infinity,
              height: 50.0,
              minAmount: 500.0,
              maxAmount: 99999.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Min',
                  style: GoogleFonts.getFont(
                    'Work Sans',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Max',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                  child: Container(
                    width: 158.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        '₹.${FFAppState().priceMin.toString()}',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Container(
                    width: 158.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        '₹.${FFAppState().priceMax.toString()}',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
