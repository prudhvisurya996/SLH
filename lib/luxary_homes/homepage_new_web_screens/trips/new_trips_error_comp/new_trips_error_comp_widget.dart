import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_trips_error_comp_model.dart';
export 'new_trips_error_comp_model.dart';

class NewTripsErrorCompWidget extends StatefulWidget {
  const NewTripsErrorCompWidget({
    super.key,
    required this.propertyStatus,
  });

  final int? propertyStatus;

  @override
  State<NewTripsErrorCompWidget> createState() =>
      _NewTripsErrorCompWidgetState();
}

class _NewTripsErrorCompWidgetState extends State<NewTripsErrorCompWidget> {
  late NewTripsErrorCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewTripsErrorCompModel());

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
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'NO ${valueOrDefault<String>(
                        () {
                          if (widget.propertyStatus == 1) {
                            return 'COMPLETED';
                          } else if (widget.propertyStatus == 2) {
                            return 'UPCOMING';
                          } else if (widget.propertyStatus == 0) {
                            return 'CANCELLED';
                          } else {
                            return 'NA';
                          }
                        }(),
                        'NA',
                      )} BOOKINGS FOUND',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Work Sans',
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                  Padding(
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
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(80.0, 0.0, 0.0, 0.0),
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
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().updateSyncFisionCalendarDatesStruct(
                            (e) => e
                              ..blockedDates = null
                              ..partialBookedDates = null,
                          );
                          setState(() {});

                          context.pushNamed(
                            'property_details',
                            queryParameters: {
                              'id': serializeParam(
                                null,
                                ParamType.JSON,
                              ),
                              'index': serializeParam(
                                0,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        text: 'Book a stay',
                        options: FFButtonOptions(
                          width: 350.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                  ),
                ],
              ),
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
