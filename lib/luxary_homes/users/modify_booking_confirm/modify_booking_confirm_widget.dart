import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/modify_booking_confirm_form/modify_booking_confirm_form_widget.dart';
import '/luxary_homes/users/w_modify_booking_confirm/w_modify_booking_confirm_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modify_booking_confirm_model.dart';
export 'modify_booking_confirm_model.dart';

class ModifyBookingConfirmWidget extends StatefulWidget {
  const ModifyBookingConfirmWidget({super.key});

  @override
  State<ModifyBookingConfirmWidget> createState() =>
      _ModifyBookingConfirmWidgetState();
}

class _ModifyBookingConfirmWidgetState
    extends State<ModifyBookingConfirmWidget> {
  late ModifyBookingConfirmModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModifyBookingConfirmModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(22.0),
                    topRight: Radius.circular(22.0),
                  ),
                ),
                child: wrapWithModel(
                  model: _model.modifyBookingConfirmFormModel,
                  updateCallback: () => setState(() {}),
                  child: ModifyBookingConfirmFormWidget(),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Flexible(
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.5,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: wrapWithModel(
                  model: _model.wModifyBookingConfirmModel,
                  updateCallback: () => setState(() {}),
                  child: WModifyBookingConfirmWidget(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
