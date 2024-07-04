import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_form_copy_model.dart';
export 'search_form_copy_model.dart';

class SearchFormCopyWidget extends StatefulWidget {
  const SearchFormCopyWidget({super.key});

  @override
  State<SearchFormCopyWidget> createState() => _SearchFormCopyWidgetState();
}

class _SearchFormCopyWidgetState extends State<SearchFormCopyWidget> {
  late SearchFormCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchFormCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.guestsCount = FFAppState().searchGuests;
      _model.updatePage(() {});
      _model.cityResult =
          await MicroserviceAvailabilityAPIsGroup.searchCitiesCall.call();

      if ((_model.cityResult?.succeeded ?? true)) {
        FFAppState().citySearch =
            (_model.cityResult?.jsonBody ?? '').toList().cast<dynamic>();
        setState(() {});
      }
      _model.localityResult =
          await MicroserviceAvailabilityAPIsGroup.searchLocalitiesCall.call();

      if ((_model.localityResult?.succeeded ?? true)) {
        FFAppState().localitySearch =
            (_model.localityResult?.jsonBody ?? '').toList().cast<dynamic>();
        setState(() {});
      }
    });

    _model.cityTextFieldTextController ??=
        TextEditingController(text: FFAppState().searchCity);

    _model.localityTextFieldTextController ??=
        TextEditingController(text: FFAppState().searchLocality);

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search Properties',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                  FFAppState().isEnableSearch = false;
                  setState(() {});
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: SvgPicture.asset(
                    'assets/images/close.svg',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 12.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (_model.emptySpaces)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Text(
                                  'empty spaces are not allowed',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                'City/Town',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Autocomplete<String>(
                                initialValue: TextEditingValue(
                                    text: FFAppState().searchCity),
                                optionsBuilder: (textEditingValue) {
                                  if (textEditingValue.text == '') {
                                    return const Iterable<String>.empty();
                                  }
                                  return functions
                                      .searchResult(
                                          FFAppState()
                                              .citySearch
                                              .map((e) => e.toString())
                                              .toList(),
                                          _model.cityTextFieldTextController
                                              .text)!
                                      .where((option) {
                                    final lowercaseOption =
                                        option.toLowerCase();
                                    return lowercaseOption.contains(
                                        textEditingValue.text.toLowerCase());
                                  });
                                },
                                optionsViewBuilder:
                                    (context, onSelected, options) {
                                  return AutocompleteOptionsList(
                                    textFieldKey: _model.cityTextFieldKey,
                                    textController:
                                        _model.cityTextFieldTextController!,
                                    options: options.toList(),
                                    onSelected: onSelected,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    textHighlightStyle: TextStyle(),
                                    textAlign: TextAlign.start,
                                    elevation: 4.0,
                                    optionBackgroundColor: Color(0x4CBBD1EA),
                                    optionHighlightColor: Color(0x4DBBD1EA),
                                    maxHeight:
                                        MediaQuery.sizeOf(context).height *
                                            0.17,
                                  );
                                },
                                onSelected: (String selection) {
                                  setState(() => _model
                                      .cityTextFieldSelectedOption = selection);
                                  FocusScope.of(context).unfocus();
                                },
                                fieldViewBuilder: (
                                  context,
                                  textEditingController,
                                  focusNode,
                                  onEditingComplete,
                                ) {
                                  _model.cityTextFieldFocusNode = focusNode;

                                  _model.cityTextFieldTextController =
                                      textEditingController;
                                  return TextFormField(
                                    key: _model.cityTextFieldKey,
                                    controller: textEditingController,
                                    focusNode: focusNode,
                                    onEditingComplete: onEditingComplete,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.cityTextFieldTextController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      hintText: 'Enter City',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .errorText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .errorText,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              14.0, 0.0, 14.0, 0.0),
                                      suffixIcon: _model
                                              .cityTextFieldTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model
                                                    .cityTextFieldTextController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 20.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontSize: 14.0,
                                    ),
                                    textAlign: TextAlign.start,
                                    maxLength: 25,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.none,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .cityTextFieldTextControllerValidator
                                        .asValidator(context),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: Text(
                                'Locality',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Autocomplete<String>(
                              initialValue: TextEditingValue(
                                  text: FFAppState().searchLocality),
                              optionsBuilder: (textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                }
                                return functions
                                    .searchResult(
                                        FFAppState()
                                            .localitySearch
                                            .map((e) => e.toString())
                                            .toList(),
                                        _model.localityTextFieldTextController
                                            .text)!
                                    .where((option) {
                                  final lowercaseOption = option.toLowerCase();
                                  return lowercaseOption.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) {
                                return AutocompleteOptionsList(
                                  textFieldKey: _model.localityTextFieldKey,
                                  textController:
                                      _model.localityTextFieldTextController!,
                                  options: options.toList(),
                                  onSelected: onSelected,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  textHighlightStyle: TextStyle(),
                                  textAlign: TextAlign.start,
                                  elevation: 4.0,
                                  optionBackgroundColor: Color(0xFFBBD1EA),
                                  optionHighlightColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  maxHeight:
                                      MediaQuery.sizeOf(context).height * 0.17,
                                );
                              },
                              onSelected: (String selection) {
                                setState(() =>
                                    _model.localityTextFieldSelectedOption =
                                        selection);
                                FocusScope.of(context).unfocus();
                              },
                              fieldViewBuilder: (
                                context,
                                textEditingController,
                                focusNode,
                                onEditingComplete,
                              ) {
                                _model.localityTextFieldFocusNode = focusNode;

                                _model.localityTextFieldTextController =
                                    textEditingController;
                                return TextFormField(
                                  key: _model.localityTextFieldKey,
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onEditingComplete: onEditingComplete,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.localityTextFieldTextController',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    hintText: 'Enter Locality',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .errorText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .errorText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            14.0, 0.0, 14.0, 0.0),
                                    suffixIcon: _model
                                            .localityTextFieldTextController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model
                                                  .localityTextFieldTextController
                                                  ?.clear();
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20.0,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLength: 25,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.none,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .localityTextFieldTextControllerValidator
                                      .asValidator(context),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Container(
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBgOpacity,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 8.0, 10.0),
                                      child: Text(
                                        'No of guests',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 2.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Guests',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20.0,
                                              buttonSize: 36.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBgOpacity,
                                              disabledColor: Color(0x32878787),
                                              icon: Icon(
                                                Icons.remove,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                              onPressed: (_model.guestsCount
                                                          .toString() ==
                                                      '0')
                                                  ? null
                                                  : () async {
                                                      _model.guestsCount =
                                                          _model.guestsCount! +
                                                              -1;
                                                      setState(() {});
                                                    },
                                            ),
                                            Container(
                                              width: 50.0,
                                              height: 30.0,
                                              decoration: BoxDecoration(),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.guestsCount
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20.0,
                                              buttonSize: 36.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBgOpacity,
                                              disabledColor: Color(0x32878787),
                                              icon: Icon(
                                                Icons.add,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                              onPressed:
                                                  (_model.guestsCount == 10)
                                                      ? null
                                                      : () async {
                                                          _model.guestsCount =
                                                              _model.guestsCount! +
                                                                  1;
                                                          setState(() {});
                                                        },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 25.0)),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBgOpacity,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Check In - Check Out Date',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/images/calender_img.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 280.0,
                        child: custom_widgets.SyncDatePicker(
                          width: double.infinity,
                          height: 280.0,
                          isMultiView: MediaQuery.sizeOf(context).width > 799.0
                              ? true
                              : false,
                          initialSelectedDates: FFAppState().searchDates,
                          onChangeAction: () async {},
                        ),
                      ),
                    ),
                  Stack(
                    children: [
                      if (FFAppState().searchDates.length > 0)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 280.0,
                            child: custom_widgets.SearchSyncCalender(
                              width: double.infinity,
                              height: 280.0,
                              isMultiView:
                                  MediaQuery.sizeOf(context).width > 799.0
                                      ? true
                                      : false,
                              initDates: FFAppState().searchDates,
                              onChangeAction: () async {
                                FFAppState().searchDates = FFAppState()
                                    .searchDates
                                    .toList()
                                    .cast<DateTime>();
                                FFAppState().update(() {});
                              },
                            ),
                          ),
                        ),
                      if (FFAppState().searchDates.length == 0)
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 280.0,
                              child: custom_widgets.SearchSyncCalender(
                                width: double.infinity,
                                height: 280.0,
                                isMultiView:
                                    MediaQuery.sizeOf(context).width > 799.0
                                        ? true
                                        : false,
                                initDates: _model.emptyList,
                                onChangeAction: () async {
                                  FFAppState().searchDates = FFAppState()
                                      .searchDates
                                      .toList()
                                      .cast<DateTime>();
                                  FFAppState().update(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onDoubleTap: () async {},
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Search',
                    options: FFButtonOptions(
                      width: 513.0,
                      height: 36.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).labelSmall.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                      elevation: 4.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
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
