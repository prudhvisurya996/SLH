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

class ImageCarouselCopy extends StatefulWidget {
  const ImageCarouselCopy({
    Key? key,
    this.width,
    this.height,
    this.imageLists,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String>? imageLists;

  @override
  _ImageCarouselCopyState createState() => _ImageCarouselCopyState();
}

class _ImageCarouselCopyState extends State<ImageCarouselCopy> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: widget.height,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: widget.imageLists!.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(22.0),
                    child: Image.network(
                      widget.imageLists![index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.clear,
                        size: 15,
                        color: Color(0XFF5246ED),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20.0, // Adjust the left position of the arrows
                right: 20.0, // Adjust the right position of the arrows
                bottom: 20.0, // Align the arrows to the bottom
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white54,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.chevron_left_rounded,
                            color: Color(0XFF5246ED), size: 15),
                        onPressed: () {
                          if (_currentIndex > 0) {
                            _pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white54,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.chevron_right_rounded,
                          color: Color(0XFF5246ED),
                          size: 15,
                        ),
                        onPressed: () {
                          if (_currentIndex < widget.imageLists!.length - 1) {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
