import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_cancellation_policy_model.dart';
export 'booking_cancellation_policy_model.dart';

class BookingCancellationPolicyWidget extends StatefulWidget {
  const BookingCancellationPolicyWidget({super.key});

  @override
  State<BookingCancellationPolicyWidget> createState() =>
      _BookingCancellationPolicyWidgetState();
}

class _BookingCancellationPolicyWidgetState
    extends State<BookingCancellationPolicyWidget> {
  late BookingCancellationPolicyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingCancellationPolicyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cancellation policy',
              style: GoogleFonts.getFont(
                'Work Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Text(
                '* Before check-in Date, 11:59 AM',
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Color(0xFF80BB01),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Text(
                'Full refundable',
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Color(0xFF80BB01),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Text(
                'Full Refundable (You will get 100% Refund).',
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Text(
                '* After check-in Date, 12:00 PM',
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Color(0xFFD70000),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Text(
                'Cancellation not possible ',
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Color(0xFFD70000),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Text(
                'Non cancellable, no Refunding.',
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
