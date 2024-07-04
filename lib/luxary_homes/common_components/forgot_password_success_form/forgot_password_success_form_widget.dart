import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'forgot_password_success_form_model.dart';
export 'forgot_password_success_form_model.dart';

class ForgotPasswordSuccessFormWidget extends StatefulWidget {
  const ForgotPasswordSuccessFormWidget({super.key});

  @override
  State<ForgotPasswordSuccessFormWidget> createState() =>
      _ForgotPasswordSuccessFormWidgetState();
}

class _ForgotPasswordSuccessFormWidgetState
    extends State<ForgotPasswordSuccessFormWidget> {
  late ForgotPasswordSuccessFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordSuccessFormModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Lottie.asset(
              'assets/lottie_animations/mail_sent_lottie.json',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              'A new password has been sent to your registered email. ',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Work Sans',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Builder(
            builder: (context) => Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 40.0, 12.0, 20.0),
              child: FFButtonWidget(
                onPressed: () async {
                  if (MediaQuery.sizeOf(context).width < 991.0) {
                    Navigator.pop(context);
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: LoginWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  } else {
                    Navigator.pop(context);
                    await showDialog(
                      barrierColor: Color(0xCC000D3E),
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: AlignmentDirectional(0.0, -1.0)
                              .resolve(Directionality.of(context)),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            child: LoginWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  }
                },
                text: 'Login',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 36.0,
                  padding: EdgeInsets.all(0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).labelSmall.override(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
