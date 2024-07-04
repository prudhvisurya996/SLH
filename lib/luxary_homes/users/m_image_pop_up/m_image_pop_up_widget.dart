import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_image_pop_up_model.dart';
export 'm_image_pop_up_model.dart';

class MImagePopUpWidget extends StatefulWidget {
  const MImagePopUpWidget({
    super.key,
    this.imageUrls,
  });

  final List<String>? imageUrls;

  @override
  State<MImagePopUpWidget> createState() => _MImagePopUpWidgetState();
}

class _MImagePopUpWidgetState extends State<MImagePopUpWidget> {
  late MImagePopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MImagePopUpModel());

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
      width: MediaQuery.sizeOf(context).width * 0.25,
      height: MediaQuery.sizeOf(context).height * 0.5,
      child: custom_widgets.ImageCarouselCopy(
        width: MediaQuery.sizeOf(context).width * 0.25,
        height: MediaQuery.sizeOf(context).height * 0.5,
        imageLists: widget.imageUrls,
      ),
    );
  }
}
