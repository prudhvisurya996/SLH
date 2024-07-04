import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_host_component_model.dart';
export 'web_host_component_model.dart';

class WebHostComponentWidget extends StatefulWidget {
  const WebHostComponentWidget({super.key});

  @override
  State<WebHostComponentWidget> createState() => _WebHostComponentWidgetState();
}

class _WebHostComponentWidgetState extends State<WebHostComponentWidget> {
  late WebHostComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebHostComponentModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.85,
            height: MediaQuery.sizeOf(context).height * 0.85,
            constraints: BoxConstraints(
              minWidth: double.infinity,
              minHeight: double.infinity,
              maxWidth: double.infinity,
              maxHeight: double.infinity,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(
                width: 1.0,
              ),
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.9,
              child: custom_widgets.HostWidget(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.9,
                forwardBtnAction: () async {
                  if ((FFAppState().webHostStepIndex < 3) ||
                      (FFAppState().webHostStepIndex == 6) ||
                      (FFAppState().webHostStepIndex == 7) ||
                      (FFAppState().webHostStepIndex == 8) ||
                      (FFAppState().webHostStepIndex == 12)) {
                    setState(() {
                      FFAppState().webHostStepIndex =
                          FFAppState().webHostStepIndex + 1;
                    });
                  }
                },
                backwardBtnAction: () async {
                  setState(() {
                    FFAppState().webHostStepIndex =
                        FFAppState().webHostStepIndex + -1;
                  });
                },
                saveAndExidBtnAction: () async {},
                startHostingAction: () async {
                  setState(() {
                    FFAppState().webHostStepIndex =
                        FFAppState().webHostStepIndex + 1;
                  });
                },
                locationAction: () async {},
                amenitiesAction: () async {
                  if (FFAppState().SelectedAmenities.length > 0) {
                    if (MediaQuery.sizeOf(context).width >= 500.0) {
                      FFAppState().update(() {
                        FFAppState().webHostStepIndex =
                            FFAppState().webHostStepIndex + 1;
                      });
                    } else {
                      await actions.hostForwardRoute(
                        context,
                        'amenities',
                      );
                    }

                    return;
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Alert'),
                          content: Text('Atleast one amenitie is required.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    return;
                  }
                },
                addphotoesAction: () async {},
                apartmentSummaryAction: () async {
                  FFAppState().update(() {
                    FFAppState().webHostStepIndex =
                        FFAppState().webHostStepIndex + 1;
                  });
                },
                basicDetailsAction: () async {
                  FFAppState().update(() {
                    FFAppState().webHostStepIndex =
                        FFAppState().webHostStepIndex + 1;
                  });
                },
                submitedAction: () async {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
