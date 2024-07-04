import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'define_property_pricing_widget.dart' show DefinePropertyPricingWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DefinePropertyPricingModel
    extends FlutterFlowModel<DefinePropertyPricingWidget> {
  ///  Local state fields for this page.

  String? availableDate = 'YYYY-MM-DD';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PriceTextField widget.
  FocusNode? priceTextFieldFocusNode;
  TextEditingController? priceTextFieldTextController;
  String? Function(BuildContext, String?)?
      priceTextFieldTextControllerValidator;
  String? _priceTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Price is required.';
    }

    if (!RegExp('^([5-9]\\d{2}|[1-9]\\d{3}|[1-9]\\d{4})\$').hasMatch(val)) {
      return 'Price min 500 and max 99999.';
    }
    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    priceTextFieldTextControllerValidator =
        _priceTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    priceTextFieldFocusNode?.dispose();
    priceTextFieldTextController?.dispose();
  }
}
