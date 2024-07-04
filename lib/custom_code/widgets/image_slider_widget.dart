// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageSliderWidget extends StatefulWidget {
  const ImageSliderWidget({
    Key? key,
    this.width,
    this.height,
    this.imgList,
    this.isTopCorners,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String>? imgList;
  final bool? isTopCorners;

  @override
  _ImageSliderWidgetState createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imagesList = widget.imgList!.map((item) {
      // print("Images List Debug jai balayya : $item");
      // print('Image base URl jai balayya : ${FFAppState().BaseUrl + item}');
      return ClipRRect(
        borderRadius: widget.isTopCorners!
            ? const BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))
            : const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0)),
        child: CachedNetworkImage(
          imageUrl: FFAppState().BaseUrl + item,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          placeholder: (context, url) => const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [Center(child: SizedBox())]),
          errorWidget: (context, url, error) =>
              const Center(child: Icon(Icons.error)),
        ),
      );
    }).toList();
    return ImageSlideshow(
      width: double.infinity,
      height: double.infinity,
      initialPage: 0,
      indicatorColor: Colors.blue,
      indicatorBackgroundColor: Colors.grey,
      autoPlayInterval: 0,
      isLoop: true,
      children: imagesList,
    );
  }
}
