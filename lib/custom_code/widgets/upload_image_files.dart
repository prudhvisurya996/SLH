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

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class UploadImageFiles extends StatefulWidget {
  const UploadImageFiles({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _UploadImageFilesState createState() => _UploadImageFilesState();
}

class _UploadImageFilesState extends State<UploadImageFiles> {
  List<Uint8List> imageBytesList = [];

  Future<void> _pickImages() async {
    List<XFile>? images = await ImagePicker().pickMultiImage();
    // if (images.isNotEmpty) {
    //   imageBytesList.addAll(images);
    // }
    List<Uint8List> bytesList = [];

    for (XFile image in images) {
      // Read the image as bytes
      List<int> bytes = await image.readAsBytes();
      print("Printing the bytes list: $bytes");
      // Convert the bytes to Uint8List
      Uint8List uint8List = Uint8List.fromList(bytes);
      print("Printing the Unit8List : $uint8List");
      // Add the Uint8List to the list
      bytesList.add(uint8List);
    }
    print("Image List Length:${imageBytesList.length}");
    // Update the state with the list of Uint8List
    setState(() {
      imageBytesList = bytesList;
    });
    if (images.isNotEmpty) {
      bytesList.addAll(images as Iterable<Uint8List>);
    }

    // Save the images to files
    await _saveImagesToFiles(images);
  }

  Future<void> _saveImagesToFiles(List<XFile> images) async {
    try {
      for (int i = 0; i < images.length; i++) {
        Uint8List bytes = await images[i].readAsBytes();
        String fileName = 'image_$i.jpg';
        print('$fileName');

        // Get the temporary directory and save the image file
        Directory tempDir = await getTemporaryDirectory();
        String tempPath = tempDir.path;
        File imageFile = File('$tempPath/$fileName');
        await imageFile.writeAsBytes(bytes);
      }
    } catch (e) {
      print('Error saving images to files: $e');
    }
    // for (int i = 0; i < images.length; i++) {
    //   Uint8List bytes = await images[i].readAsBytes();
    //   String fileName = 'image_$i.png';

    //   // Get the temporary directory and save the image file
    //   Directory tempDir = await getTemporaryDirectory();
    //   String tempPath = tempDir.path;
    //   File imageFile = File('$tempPath/$fileName');
    //   await imageFile.writeAsBytes(bytes);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _pickImages,
          child: const Text('Pick Images'),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: GridView.builder(
            itemCount: imageBytesList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
            itemBuilder: (context, index) {
              return Image.memory(imageBytesList[index]);
            },
          ),
        ),
      ],
    );
  }
}
