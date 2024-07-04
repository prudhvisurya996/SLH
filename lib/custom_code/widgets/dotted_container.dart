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

import 'package:dotted_border/dotted_border.dart';

class DottedContainer extends StatefulWidget {
  const DottedContainer({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _DottedContainerState createState() => _DottedContainerState();
}

class _DottedContainerState extends State<DottedContainer> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        shadowColor: const Color(0x000000e6),
        elevation: 4.0,
        borderRadius: BorderRadius.circular(16),
        child: DottedBorder(
          dashPattern: const [8, 8],
          color: const Color(0xFFBBD1EA),
          borderType: BorderType.RRect,
          radius: const Radius.circular(16),
          padding: const EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: 334,
              ),
              color: Colors.white,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 134,
                  height: 105,
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/hospitality-platform.appspot.com/o/hospitality-platform-images%2Fgallery_icon.svg?alt=media&token=92037868-e195-45ee-91e9-0797159a78c6",
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
