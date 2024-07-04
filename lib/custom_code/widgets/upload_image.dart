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

import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }

    print("Image List Length:" + imageFileList!.length.toString());

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            selectImages();
          },
          child: Text('Select Images'),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                itemCount: imageFileList!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  print(
                      "Image PIcker Path Debug: ${imageFileList![index].path}");
                  return kIsWeb
                      ? Image.network(
                          imageFileList![index].path,
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          File(imageFileList![index].path),
                          fit: BoxFit.cover,
                        );
                }),
          ),
        ),
      ],
    );
  }
}
