// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:file_picker/file_picker.dart';

// Future<FFUploadedFile?> filePicker() async {
//   // select files and return the selected file data in a FFUploadedFile list.
//   final result = await FilePicker.platform.pickFiles(
//       type: FileType.custom, allowMultiple: false, allowedExtensions: ['pdf']);
//   print(result.runtimeType);
//   if (result != null && result.files.length > 0) {
//     List<FFUploadedFile> uploadedFiles = [];
//     for (var file in result.files) {
//       int? fileSizeBytes = file.bytes?.lengthInBytes;
//       if (fileSizeBytes! > 5e+6) {
//         return null;
//       } else {
//         final fileData = file.bytes ?? Uint8List(0);
//         final uploadedFile = FFUploadedFile(bytes: fileData, name: file.name);
//         uploadedFiles.add(uploadedFile);
//       }
//     }
//     return uploadedFiles[0];
//   } else {
//     return null;
//   }
// }

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<FFUploadedFile?> filePicker() async {
  // select files and return the selected file data in a FFUploadedFile list.
  final allowedExtensions = ['pdf', 'png', 'jpg'];
  final result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: allowedExtensions,
    withData: true,
  );

  if (result != null && result.files.isNotEmpty) {
    List<FFUploadedFile> uploadedFiles = [];
    for (var file in result.files) {
      int? fileSizeBytes = file.bytes?.lengthInBytes;
      // Check if file size exceeds 5 MB
      if (fileSizeBytes != null && fileSizeBytes <= 5 * 1024 * 1024) {
        final fileData = file.bytes ?? Uint8List(0);
        final uploadedFile = FFUploadedFile(bytes: fileData, name: file.name);
        uploadedFiles.add(uploadedFile);
      } else {
        // Handle the case where the file exceeds 5 MB
        print('File ${file.name} exceeds the maximum allowed size (5 MB).');
      }
    }
    if (uploadedFiles.isNotEmpty) {
      return uploadedFiles[0];
    }
  }
  return null;
}
