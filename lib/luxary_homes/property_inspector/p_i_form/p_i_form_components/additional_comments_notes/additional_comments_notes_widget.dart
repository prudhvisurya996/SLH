import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'additional_comments_notes_model.dart';
export 'additional_comments_notes_model.dart';

class AdditionalCommentsNotesWidget extends StatefulWidget {
  const AdditionalCommentsNotesWidget({super.key});

  @override
  State<AdditionalCommentsNotesWidget> createState() =>
      _AdditionalCommentsNotesWidgetState();
}

class _AdditionalCommentsNotesWidgetState
    extends State<AdditionalCommentsNotesWidget> {
  late AdditionalCommentsNotesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdditionalCommentsNotesModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    _model.additionalCommentsTextController ??= TextEditingController();
    _model.additionalCommentsFocusNode ??= FocusNode();

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
      width: double.infinity,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      child: ExpandableNotifier(
        controller: _model.expandableExpandableController,
        child: ExpandablePanel(
          header: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Additional Comments/Notes',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        TextSpan(
                          text: '*',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Poppins',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        TextSpan(
                          text: '(500 characters)',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 12.0,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          collapsed: Container(),
          expanded: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: TextFormField(
                controller: _model.additionalCommentsTextController,
                focusNode: _model.additionalCommentsFocusNode,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
                maxLines: null,
                maxLength: 500,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        maxLength}) =>
                    null,
                validator: _model.additionalCommentsTextControllerValidator
                    .asValidator(context),
              ),
            ),
          ),
          theme: ExpandableThemeData(
            tapHeaderToExpand: true,
            tapBodyToExpand: false,
            tapBodyToCollapse: false,
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            hasIcon: true,
            expandIcon: Icons.keyboard_arrow_down_outlined,
            collapseIcon: Icons.keyboard_arrow_up_outlined,
            iconSize: 40.0,
            iconColor: FlutterFlowTheme.of(context).primary,
          ),
        ),
      ),
    );
  }
}
