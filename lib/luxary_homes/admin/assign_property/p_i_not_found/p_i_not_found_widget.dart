import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p_i_not_found_model.dart';
export 'p_i_not_found_model.dart';

class PINotFoundWidget extends StatefulWidget {
  const PINotFoundWidget({super.key});

  @override
  State<PINotFoundWidget> createState() => _PINotFoundWidgetState();
}

class _PINotFoundWidgetState extends State<PINotFoundWidget> {
  late PINotFoundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PINotFoundModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: SvgPicture.asset(
            'assets/images/Frame_13851.svg',
            width: 300.0,
            height: 200.0,
            fit: BoxFit.contain,
          ),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
            child: Text(
              'There isn\'t a property inspector accessible in this area. Please choose a nearby location to assign this property.',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
