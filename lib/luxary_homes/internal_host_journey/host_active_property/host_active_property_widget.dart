import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'host_active_property_model.dart';
export 'host_active_property_model.dart';

class HostActivePropertyWidget extends StatefulWidget {
  const HostActivePropertyWidget({
    super.key,
    int? myPropCount,
    required this.myPropStatus,
  }) : this.myPropCount = myPropCount ?? 00;

  final int myPropCount;
  final int? myPropStatus;

  @override
  State<HostActivePropertyWidget> createState() =>
      _HostActivePropertyWidgetState();
}

class _HostActivePropertyWidgetState extends State<HostActivePropertyWidget> {
  late HostActivePropertyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HostActivePropertyModel());

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
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBgOpacity,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 14.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/list_1.svg',
                      width: 32.0,
                      height: 32.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  () {
                    if (widget.myPropStatus == 1) {
                      return 'Your active properties ';
                    } else if (widget.myPropStatus == 2) {
                      return 'Your pending properties ';
                    } else if (widget.myPropStatus == 0) {
                      return 'Your rejected properties ';
                    } else if (widget.myPropStatus == 3) {
                      return 'Your blocked properties ';
                    } else {
                      return 'NA';
                    }
                  }(),
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 0.0),
              child: Container(
                width: 55.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    widget.myPropCount.toString(),
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
