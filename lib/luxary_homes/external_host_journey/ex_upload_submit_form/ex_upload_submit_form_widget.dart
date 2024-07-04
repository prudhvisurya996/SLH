import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_upload_submit_form_model.dart';
export 'ex_upload_submit_form_model.dart';

class ExUploadSubmitFormWidget extends StatefulWidget {
  const ExUploadSubmitFormWidget({super.key});

  @override
  State<ExUploadSubmitFormWidget> createState() =>
      _ExUploadSubmitFormWidgetState();
}

class _ExUploadSubmitFormWidgetState extends State<ExUploadSubmitFormWidget> {
  late ExUploadSubmitFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExUploadSubmitFormModel());

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Submitted',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(55.0, 20.0, 55.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Buckle up for success!, and our team is ready to spring into action to help it shine. Expect their call soon!',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 6.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'We appreciate your patience while we diligently perform the physical verification. We will inform you promptly of its conclusion.',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 6.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Kindly note that completing the verification necessitates your physical presence.',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 6.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'To ensure accuracy and security, verification involves a final step where you present your original documents in person.',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 6.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'If you can\'t be there in person, no worries! Your trusty \'power of attorney\' can step in and sign on your behalf.',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Text(
                            'Team',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/MicrosoftTeams-image_(16)_1.png',
                              width: 160.0,
                              height: 56.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
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
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22.0),
                  bottomRight: Radius.circular(22.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                Navigator.pop(context);

                                context.pushNamed(
                                  'home_page',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );

                                setState(() {});
                              },
                              text: 'Done',
                              options: FFButtonOptions(
                                width: 343.0,
                                height: 36.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 4.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              showLoadingIndicator: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
