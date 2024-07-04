import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/cancellation_trips/reason_for_cancellation_form_comp/reason_for_cancellation_form_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reason_for_cancellation_comp_model.dart';
export 'reason_for_cancellation_comp_model.dart';

class ReasonForCancellationCompWidget extends StatefulWidget {
  const ReasonForCancellationCompWidget({
    super.key,
    required this.bookingId,
    required this.amountPaid,
  });

  final String? bookingId;
  final double? amountPaid;

  @override
  State<ReasonForCancellationCompWidget> createState() =>
      _ReasonForCancellationCompWidgetState();
}

class _ReasonForCancellationCompWidgetState
    extends State<ReasonForCancellationCompWidget> {
  late ReasonForCancellationCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReasonForCancellationCompModel());

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
              width: MediaQuery.sizeOf(context).width * 0.35,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: wrapWithModel(
                  model: _model.reasonForCancellationFormCompModel1,
                  updateCallback: () => setState(() {}),
                  child: ReasonForCancellationFormCompWidget(
                    bookingId: widget.bookingId!,
                    amountPaid: widget.amountPaid!,
                  ),
                ),
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Flexible(
            child: Container(
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
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: wrapWithModel(
                  model: _model.reasonForCancellationFormCompModel2,
                  updateCallback: () => setState(() {}),
                  child: ReasonForCancellationFormCompWidget(
                    bookingId: widget.bookingId!,
                    amountPaid: widget.amountPaid!,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
