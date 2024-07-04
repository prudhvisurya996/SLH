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

import 'package:intl/intl.dart';

class DatePickerTextField extends StatefulWidget {
  const DatePickerTextField({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _DatePickerTextFieldState createState() => _DatePickerTextFieldState();
}

class _DatePickerTextFieldState extends State<DatePickerTextField> {
  DateTime? _selectedDate;

  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    var date = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(date.year - 12, date.month, date.day),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('MM/dd/yyyy').format(_selectedDate!);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    if (_selectedDate != null) {
      _dateController.text = DateFormat('MM/dd/yyyy').format(_selectedDate!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _dateController,
      obscureText: false,
      decoration: InputDecoration(
        errorStyle: FlutterFlowTheme.of(context).displaySmall,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).errorText,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).errorText,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        suffixIcon: Icon(
          Icons.date_range_rounded,
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      style: FlutterFlowTheme.of(context).bodyLarge,
      textAlign: TextAlign.start,
      cursorColor: FlutterFlowTheme.of(context).primaryText,
      readOnly: true,
      onTap: () => _selectDate(context),
    );
  }
}
