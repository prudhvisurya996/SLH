import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_trips_error_comp_copy_model.dart';
export 'new_trips_error_comp_copy_model.dart';

class NewTripsErrorCompCopyWidget extends StatefulWidget {
  const NewTripsErrorCompCopyWidget({super.key});

  @override
  State<NewTripsErrorCompCopyWidget> createState() =>
      _NewTripsErrorCompCopyWidgetState();
}

class _NewTripsErrorCompCopyWidgetState
    extends State<NewTripsErrorCompCopyWidget> {
  late NewTripsErrorCompCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewTripsErrorCompCopyModel());

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
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'NO UPCOMING BOOKINGS FOUND',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 58.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Text(
                      'We can’t find the any upcoming bookings that you are ',
                      style: GoogleFonts.getFont(
                        'Work Sans',
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'looking for... !',
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.11, -0.49),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(80.0, 20.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/Group.svg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.16, 0.5),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Book a stay',
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: GoogleFonts.getFont(
                        'Work Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/virtual-hotel-booking.png',
              width: 575.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
