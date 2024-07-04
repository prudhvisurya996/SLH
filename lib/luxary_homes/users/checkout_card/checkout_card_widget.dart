import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkout_card_model.dart';
export 'checkout_card_model.dart';

class CheckoutCardWidget extends StatefulWidget {
  const CheckoutCardWidget({
    super.key,
    String? btnTitle,
    required this.navigationAction,
    required this.price,
  }) : this.btnTitle = btnTitle ?? 'Continue';

  final String btnTitle;
  final Future Function()? navigationAction;
  final double? price;

  @override
  State<CheckoutCardWidget> createState() => _CheckoutCardWidgetState();
}

class _CheckoutCardWidgetState extends State<CheckoutCardWidget> {
  late CheckoutCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                -4.0,
              ),
              spreadRadius: 0.0,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '₹${formatNumber(
                        widget.price,
                        formatType: FormatType.custom,
                        format: '0.00',
                        locale: '',
                      )}',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      ' / night',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Continue',
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: 36.0,
                    padding: EdgeInsets.all(0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
