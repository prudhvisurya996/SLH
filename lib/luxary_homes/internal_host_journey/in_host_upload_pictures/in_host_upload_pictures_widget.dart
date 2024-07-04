import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/luxary_homes/internal_host_journey/in_submit_confirm/in_submit_confirm_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'in_host_upload_pictures_model.dart';
export 'in_host_upload_pictures_model.dart';

class InHostUploadPicturesWidget extends StatefulWidget {
  const InHostUploadPicturesWidget({super.key});

  @override
  State<InHostUploadPicturesWidget> createState() =>
      _InHostUploadPicturesWidgetState();
}

class _InHostUploadPicturesWidgetState
    extends State<InHostUploadPicturesWidget> {
  late InHostUploadPicturesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InHostUploadPicturesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (MediaQuery.sizeOf(context).width >= 500.0)
                      Text(
                        '',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Add some photos of your property',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 24.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 18.0,
                          buttonSize: 36.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBgOpacity,
                          icon: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            FFAppState().update(() {
                              FFAppState().hostAddressDetail =
                                  HostAddressDetailsStruct.fromSerializableMap(
                                      jsonDecode('{\"availability\":\"[]\"}'));
                              FFAppState().propertyType = jsonDecode(
                                  '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                              FFAppState().basicDetailsBeds = 1;
                              FFAppState().basicDetailsGuests = 1;
                              FFAppState().basicDetailsBathrooms = 1;
                              FFAppState().propertyBasicData =
                                  BasicDetailsStruct();
                              FFAppState().selectedAMNames = [];
                              FFAppState().tellAboutYourProperty =
                                  TellYourPropertyStruct();
                              FFAppState().webHostStepIndex = 0;
                              FFAppState().SavedRoute = '';
                              FFAppState().propertyPrice = 0;
                              FFAppState().basicDetailsBedrooms = 1;
                              FFAppState().SelectedAmenities = [];
                              FFAppState().webHostSaveRoute = 0;
                            });
                            if (MediaQuery.sizeOf(context).width >= 500.0) {
                              Navigator.pop(context);

                              context.goNamed(
                                'explore_page',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            } else {
                              context.goNamed(
                                'home_page',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            }
                          },
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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (_model.uploadListImgs.length == 0)
                          Container(
                            width: MediaQuery.sizeOf(context).width <= 550.0
                                ? MediaQuery.sizeOf(context).width
                                : (MediaQuery.sizeOf(context).width * 0.65),
                            height: MediaQuery.sizeOf(context).width <= 550.0
                                ? (MediaQuery.sizeOf(context).height * 0.35)
                                : (MediaQuery.sizeOf(context).height * 0.2),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 24.0),
                              child: Container(
                                width: double.infinity,
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                child: custom_widgets.DottedContainer(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.3,
                                ),
                              ),
                            ),
                          ),
                        if (_model.uploadListImgs.length != null)
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 24.0),
                                child: Builder(
                                  builder: (context) {
                                    final uploadImgs =
                                        _model.uploadListImgs.toList();
                                    return Wrap(
                                      spacing: 5.0,
                                      runSpacing: 5.0,
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: List.generate(uploadImgs.length,
                                          (uploadImgsIndex) {
                                        final uploadImgsItem =
                                            uploadImgs[uploadImgsIndex];
                                        return Container(
                                          width: 170.0,
                                          height: 140.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(16.0),
                                                      topRight:
                                                          Radius.circular(16.0),
                                                    ),
                                                    child: Image.memory(
                                                      uploadImgsItem.bytes ??
                                                          Uint8List.fromList(
                                                              []),
                                                      width: double.infinity,
                                                      height: 110.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model
                                                          .removeFromUploadListImgs(
                                                              uploadImgsItem);
                                                    });
                                                  },
                                                  child: Text(
                                                    'Delete',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Upload your photos here',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Choose min 2 and max 5 images. ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Note: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  TextSpan(
                                    text: 'Each image size should be max 1 MB.',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 30.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                final selectedMedia = await selectMedia(
                                  imageQuality: 100,
                                  mediaSource: MediaSource.photoGallery,
                                  multiImage: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  setState(() => _model.isDataUploading = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  try {
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                            ))
                                        .toList();
                                  } finally {
                                    _model.isDataUploading = false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                      selectedMedia.length) {
                                    setState(() {
                                      _model.uploadedLocalFiles =
                                          selectedUploadedFiles;
                                    });
                                  } else {
                                    setState(() {});
                                    return;
                                  }
                                }

                                while (_model.index! <
                                    _model.uploadedLocalFiles.length) {
                                  if (_model.index! <
                                      _model.uploadedLocalFiles.length) {
                                    if (FFAppState()
                                        .supportedFileExtensions
                                        .contains(functions.getFileExtensions(
                                            _model.uploadedLocalFiles[
                                                _model.index!]))) {
                                      setState(() {
                                        _model.addToUploadListImgs(_model
                                            .uploadedLocalFiles[_model.index!]);
                                      });
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Error'),
                                            content: Text(
                                                'Unsupported  ${functions.getFileExtensions(_model.uploadedLocalFiles[_model.index!])} File Format'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    }
                                  }
                                  setState(() {
                                    _model.index = _model.index! + 1;
                                  });
                                }
                                setState(() {
                                  _model.index = 0;
                                });
                                setState(() {
                                  _model.isDataUploading = false;
                                  _model.uploadedLocalFiles = [];
                                });
                              },
                              text: 'Upload from your device',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width <= 550.0
                                    ? (MediaQuery.sizeOf(context).width * 0.9)
                                    : (MediaQuery.sizeOf(context).width * 0.3),
                                height: 36.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
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
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            -4.0,
                          ),
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (MediaQuery.sizeOf(context).width >=
                                          500.0) {
                                        FFAppState().update(() {
                                          FFAppState().webHostStepIndex =
                                              FFAppState().webHostStepIndex +
                                                  -1;
                                        });
                                      } else {
                                        await actions.hostBackRoute(
                                          context,
                                          'uploadPictures',
                                        );
                                      }
                                    },
                                    text: 'Back',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width <=
                                              500.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.41)
                                          : 88.0,
                                      height: 36.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 4.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) => Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        currentUserLocationValue =
                                            await getCurrentUserLocation(
                                                defaultLocation:
                                                    LatLng(0.0, 0.0));
                                        if (_model.uploadListImgs.length < 2) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Alert'),
                                                content: Text(
                                                    'Required atleast 2 images to upload a property.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else {
                                          if (_model.uploadListImgs.length <
                                              6) {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child:
                                                        InSubmitConfirmWidget(
                                                      propertyData: functions.collectPropertyDetails(
                                                          FFAppState()
                                                              .tellAboutYourProperty
                                                              .title,
                                                          FFAppState()
                                                              .tellAboutYourProperty
                                                              .description,
                                                          currentUserLocationValue,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .region,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .plotNo,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .streetAddress,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .landmark,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .locality,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .city,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .state,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .zip,
                                                          FFAppState()
                                                              .basicDetailsGuests,
                                                          FFAppState()
                                                              .basicDetailsBedrooms,
                                                          FFAppState()
                                                              .basicDetailsBeds,
                                                          FFAppState()
                                                              .basicDetailsBathrooms,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .propertyPrice,
                                                          FFAppState()
                                                              .hostAddressDetail
                                                              .propertyAvailableDate,
                                                          FFAppState()
                                                              .tellAboutYourProperty
                                                              .propertyTypeCatId,
                                                          FFAppState()
                                                              .SelectedAmenities
                                                              .toList())!,
                                                      fileNames: functions
                                                          .getFileNames(_model
                                                              .uploadListImgs
                                                              .toList()),
                                                      files: functions
                                                          .refillFiles(_model
                                                              .uploadListImgs
                                                              .toList()),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            return;
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Alert'),
                                                  content: Text(
                                                      'Upload property Images should not exceed more than 5.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            return;
                                          }
                                        }
                                      },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width <=
                                                    500.0
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.41)
                                                : 343.0,
                                        height: 36.0,
                                        padding: EdgeInsets.all(0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 4.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
