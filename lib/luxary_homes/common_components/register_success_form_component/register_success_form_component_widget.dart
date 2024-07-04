import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_component/login_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'register_success_form_component_model.dart';
export 'register_success_form_component_model.dart';

class RegisterSuccessFormComponentWidget extends StatefulWidget {
  const RegisterSuccessFormComponentWidget({super.key});

  @override
  State<RegisterSuccessFormComponentWidget> createState() =>
      _RegisterSuccessFormComponentWidgetState();
}

class _RegisterSuccessFormComponentWidgetState
    extends State<RegisterSuccessFormComponentWidget> {
  late RegisterSuccessFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterSuccessFormComponentModel());

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
          Lottie.asset(
            'assets/lottie_animations/registration_success_lottie.json',
            width: 200.0,
            height: 150.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              'Congrats!',
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Poppins',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              'Your account was created.\nKindly check your email to log in.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Poppins',
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
                          child: LoginComponentWidget(),
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
                            height: MediaQuery.sizeOf(context).height * 0.65,
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            child: LoginComponentWidget(),
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
