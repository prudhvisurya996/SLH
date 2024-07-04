import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'in_web_host_comp_model.dart';
export 'in_web_host_comp_model.dart';

class InWebHostCompWidget extends StatefulWidget {
  const InWebHostCompWidget({super.key});

  @override
  State<InWebHostCompWidget> createState() => _InWebHostCompWidgetState();
}

class _InWebHostCompWidgetState extends State<InWebHostCompWidget> {
  late InWebHostCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InWebHostCompModel());

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
                    FFAppState().webHostStepIndex =
                        FFAppState().webHostStepIndex + 1;
                    setState(() {});
                  }
                },
                backwardBtnAction: () async {
                  FFAppState().webHostStepIndex =
                      FFAppState().webHostStepIndex + -1;
                  setState(() {});
                },
                saveAndExidBtnAction: () async {},
                startHostingAction: () async {
                  FFAppState().webHostStepIndex =
                      FFAppState().webHostStepIndex + 1;
                  setState(() {});
                },
                locationAction: () async {},
                amenitiesAction: () async {
                  if (FFAppState().SelectedAmenities.length > 0) {
                    if (MediaQuery.sizeOf(context).width >= 500.0) {
                      FFAppState().webHostStepIndex =
                          FFAppState().webHostStepIndex + 1;
                      FFAppState().update(() {});
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
                          content: Text('Atleast one amenity is required.'),
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
                  FFAppState().webHostStepIndex =
                      FFAppState().webHostStepIndex + 1;
                  FFAppState().update(() {});
                },
                basicDetailsAction: () async {
                  FFAppState().webHostStepIndex =
                      FFAppState().webHostStepIndex + 1;
                  FFAppState().update(() {});
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
