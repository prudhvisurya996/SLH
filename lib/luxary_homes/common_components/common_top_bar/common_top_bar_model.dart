import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/register/register_widget.dart';
import '/luxary_homes/profile/menu_for_web/menu_for_web_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import 'dart:math';
import 'common_top_bar_widget.dart' show CommonTopBarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommonTopBarModel extends FlutterFlowModel<CommonTopBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for search_filter_comp component.
  late SearchFilterCompModel searchFilterCompModel;

  @override
  void initState(BuildContext context) {
    searchFilterCompModel = createModel(context, () => SearchFilterCompModel());
  }

  @override
  void dispose() {
    searchFilterCompModel.dispose();
  }
}
