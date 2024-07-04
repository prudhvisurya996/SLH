import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'property_description_model.dart';
export 'property_description_model.dart';

class PropertyDescriptionWidget extends StatefulWidget {
  const PropertyDescriptionWidget({
    super.key,
    required this.description,
  });

  final String? description;

  @override
  State<PropertyDescriptionWidget> createState() =>
      _PropertyDescriptionWidgetState();
}

class _PropertyDescriptionWidgetState extends State<PropertyDescriptionWidget> {
  late PropertyDescriptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyDescriptionModel());

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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        border: Border.all(
          color: Color(0xFFBBD1EA),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
        child: Text(
          valueOrDefault<String>(
            widget.description,
            'NA',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
        ),
      ),
    );
  }
}
