import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'image_pop_up_model.dart';
export 'image_pop_up_model.dart';

class ImagePopUpWidget extends StatefulWidget {
  const ImagePopUpWidget({
    super.key,
    this.imageUrls,
  });

  final List<String>? imageUrls;

  @override
  State<ImagePopUpWidget> createState() => _ImagePopUpWidgetState();
}

class _ImagePopUpWidgetState extends State<ImagePopUpWidget> {
  late ImagePopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagePopUpModel());

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
