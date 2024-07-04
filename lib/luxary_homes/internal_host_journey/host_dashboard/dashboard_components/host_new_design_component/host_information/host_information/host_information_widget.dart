import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'host_information_model.dart';
export 'host_information_model.dart';

class HostInformationWidget extends StatefulWidget {
  const HostInformationWidget({
    super.key,
    required this.ownerUserName,
    required this.ownerPhoneNumber,
    required this.ownerEmailAddress,
  });

  final String? ownerUserName;
  final String? ownerPhoneNumber;
  final String? ownerEmailAddress;

  @override
  State<HostInformationWidget> createState() => _HostInformationWidgetState();
}

class _HostInformationWidgetState extends State<HostInformationWidget> {
  late HostInformationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HostInformationModel());

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
      decoration: BoxDecoration(
        color: Color(0xFFEBF2F9),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Host Information',
              style: GoogleFonts.getFont(
                'Poppins',
                color: Color(0xFF000D3E),
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35.0, 16.0, 35.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD4DFEE),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: SvgPicture.asset(
                            'assets/images/user-unfocus.svg',
                            width: 75.0,
                            height: 75.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.ownerUserName,
                            'NA',
                          ),
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 16.0),
              child: Container(
                width: 300.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xFFD4DFEE),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full Name',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color(0xFF000D3E),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.ownerUserName,
                          'NA',
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color(0xFF000D3E),
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Container(
                width: 300.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xFFD4DFEE),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Number',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color(0xFF000D3E),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.ownerPhoneNumber,
                          'NA',
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color(0xFF000D3E),
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Container(
                width: 300.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xFFD4DFEE),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color(0xFF000D3E),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.ownerEmailAddress,
                          'NA',
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Color(0xFF000D3E),
                          fontSize: 14.0,
                        ),
                      ),
                    ],
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
