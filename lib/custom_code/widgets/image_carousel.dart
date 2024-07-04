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

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    Key? key,
    this.width,
    this.height,
    this.imageLists,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String>? imageLists;

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    // _pageController.addListener(() {
    //   if (_pageController.page == widget.imageLists!.length - 1) {
    //     _pageController.jumpToPage(0);
    //   } else if (_pageController.page == 0) {
    //     _pageController.jumpToPage(widget.imageLists!.length - 1);
    //   }
    // });
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
          height: size.height * 0.8,
          child: Stack(
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
                  // print(
                  //     'List of images jai balayya-2 : ${widget.imageLists![index]}');
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
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.clear,
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
                left: 0,
                right: 0,
                bottom: 10.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: widget.imageLists!.map((url) {
                      int index = widget.imageLists!.indexOf(url);
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.white
                              : const Color.fromARGB(255, 147, 147, 142),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.chevron_left_rounded,
                              color: Color(0XFF5246ED), size: 24),
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
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white54,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.chevron_right_rounded,
                            color: Color(0XFF5246ED),
                            size: 24,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
