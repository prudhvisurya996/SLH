// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_storage/firebase_storage.dart';

Future<String> deleteFirebaseStorageFile(String? deleteIndexedUrl) async {
  // Add your function code here!
  String deleteStatus = "";
  try {
    String imageUrl = deleteIndexedUrl!;

    var ref = await FirebaseStorage.instance.refFromURL(imageUrl);

    await ref.delete();
    deleteStatus = "SUCCESS";
  } catch (e) {
    deleteStatus = "FAILED";
  }

  return deleteStatus;
}
