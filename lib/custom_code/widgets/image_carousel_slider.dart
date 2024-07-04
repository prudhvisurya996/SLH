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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageCarouselSlider extends StatefulWidget {
  const ImageCarouselSlider(
      {Key? key, this.width, this.height, this.imgList, this.isTopCorners})
      : super(key: key);

  final double? width;
  final double? height;
  final List<String>? imgList;
  final bool? isTopCorners;

  @override
  _ImageCarouselSliderState createState() => _ImageCarouselSliderState();
}

class _ImageCarouselSliderState extends State<ImageCarouselSlider> {
  final carouselCtrl = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList!
        .map(
          (item) => ClipRRect(
            borderRadius: widget.isTopCorners!
                ? const BorderRadius.only(
                    topLeft: Radius.circular(16), topRight: Radius.circular(16))
                : const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
            child: CachedNetworkImage(
              imageUrl: item,
              fit: BoxFit.fill,
              width: double.infinity,
              placeholder: (context, url) => const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [Center(child: NewWidget())]),
              errorWidget: (context, url, error) =>
                  const Center(child: Icon(Icons.error)),
            ),
          ),
        )
        .toList();
    return Stack(
      children: [
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            carouselController: carouselCtrl,
          ),
        ),
        Center(
          child: Transform.translate(
            offset:
                Offset(0, MediaQuery.sizeOf(context).width <= 500 ? 70 : 60),
            child: FittedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...indicatorWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> indicatorWidget() {
    List<Widget> indicator = [];
    for (int index = 0; index < widget.imgList!.length; index++) {
      indicator.add(
        GestureDetector(
          onTap: () => setState(
            () {
              carouselCtrl.animateToPage(index);
            },
          ),
          child: Container(
            width: 6.0,
            height: 6.0,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 1.8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? Color(0xFF626262)
                        : Color(0xFFFFFF))
                    .withOpacity(index == currentIndex ? 1 : 0.6)),
          ),
        ),
      );
    }

    return indicator;
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}
