import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'additional_comments_notes_widget.dart'
    show AdditionalCommentsNotesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdditionalCommentsNotesModel
    extends FlutterFlowModel<AdditionalCommentsNotesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for additionalComments widget.
  FocusNode? additionalCommentsFocusNode;
  TextEditingController? additionalCommentsTextController;
  String? Function(BuildContext, String?)?
      additionalCommentsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    additionalCommentsFocusNode?.dispose();
    additionalCommentsTextController?.dispose();
  }
}
