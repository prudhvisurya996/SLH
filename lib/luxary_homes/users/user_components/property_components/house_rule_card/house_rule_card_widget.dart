import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'house_rule_card_model.dart';
export 'house_rule_card_model.dart';

class HouseRuleCardWidget extends StatefulWidget {
  const HouseRuleCardWidget({
    super.key,
    required this.ruleNumber,
    required this.ruleHeading,
    required this.ruleDescription,
  });

  final String? ruleNumber;
  final String? ruleHeading;
  final String? ruleDescription;

  @override
  State<HouseRuleCardWidget> createState() => _HouseRuleCardWidgetState();
}

class _HouseRuleCardWidgetState extends State<HouseRuleCardWidget> {
  late HouseRuleCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HouseRuleCardModel());

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
        Flexible(
          child: Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  child: Container(
                    width: 47.0,
                    height: 47.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.ruleNumber,
                          '00',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            widget.ruleHeading!,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              widget.ruleDescription!,
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 15.0)),
            ),
          ),
        ),
      ],
    );
  }
}
