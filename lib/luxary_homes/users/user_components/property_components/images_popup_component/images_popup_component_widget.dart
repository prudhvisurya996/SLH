import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'images_popup_component_model.dart';
export 'images_popup_component_model.dart';

class ImagesPopupComponentWidget extends StatefulWidget {
  const ImagesPopupComponentWidget({
    super.key,
    this.imageUrls,
  });

  final List<String>? imageUrls;

  @override
  State<ImagesPopupComponentWidget> createState() =>
      _ImagesPopupComponentWidgetState();
}

class _ImagesPopupComponentWidgetState
    extends State<ImagesPopupComponentWidget> {
  late ImagesPopupComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagesPopupComponentModel());

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
