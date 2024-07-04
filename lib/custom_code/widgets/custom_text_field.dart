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

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.width,
    this.height,
    this.value,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int? value;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  //TextEditingController _controller = TextEditingController(text:widget.value.toString());
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: widget.value.toString()),
    );
  }
}
