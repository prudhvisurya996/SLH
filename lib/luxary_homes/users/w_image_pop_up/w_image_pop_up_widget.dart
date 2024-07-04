import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_image_pop_up_model.dart';
export 'w_image_pop_up_model.dart';

class WImagePopUpWidget extends StatefulWidget {
  const WImagePopUpWidget({
    super.key,
    this.imageUrls,
  });

  final List<String>? imageUrls;

  @override
  State<WImagePopUpWidget> createState() => _WImagePopUpWidgetState();
}

class _WImagePopUpWidgetState extends State<WImagePopUpWidget> {
  late WImagePopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WImagePopUpModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.95,
          height: MediaQuery.sizeOf(context).height * 0.95,
          child: custom_widgets.ImageCarousel(
            width: MediaQuery.sizeOf(context).width * 0.95,
            height: MediaQuery.sizeOf(context).height * 0.95,
            imageLists: widget.imageUrls,
          ),
        ),
      ),
    );
  }
}
