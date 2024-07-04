import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/trips_components/modify_booking/confirm_manage_booking_form_m/confirm_manage_booking_form_m_widget.dart';
import '/luxary_homes/users/user_pages/trips/trips_components/modify_booking/confirm_manage_booking_form_w/confirm_manage_booking_form_w_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_manage_booking_model.dart';
export 'confirm_manage_booking_model.dart';

class ConfirmManageBookingWidget extends StatefulWidget {
  const ConfirmManageBookingWidget({super.key});

  @override
  State<ConfirmManageBookingWidget> createState() =>
      _ConfirmManageBookingWidgetState();
}

class _ConfirmManageBookingWidgetState
    extends State<ConfirmManageBookingWidget> {
  late ConfirmManageBookingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmManageBookingModel());

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
                  model: _model.confirmManageBookingFormMModel,
                  updateCallback: () => setState(() {}),
                  child: ConfirmManageBookingFormMWidget(),
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
                  model: _model.confirmManageBookingFormWModel,
                  updateCallback: () => setState(() {}),
                  child: ConfirmManageBookingFormWWidget(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
