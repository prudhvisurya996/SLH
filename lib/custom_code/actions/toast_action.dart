// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fluttertoast/fluttertoast.dart';

Future toastAction(
  BuildContext context,
  String status,
  Color color,
  String message,
) async {
  // Add your function code here!
  showToast(context, status, color, message);
}

void showToast(
    BuildContext context, String status, Color color, String message) {
  FToast fToast = FToast();
  fToast.init(context);
  fToast.showToast(
    child: getToast(context, status, message, color, fToast),
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 3),
    positionedToastBuilder: (context, child) {
      return Positioned(
        bottom: 16.0,
        left: 16.0,
        right: 16.0,
        child: child,
      );
    },
  );
}

Widget getToast(BuildContext context, String status, String message,
    Color color, FToast fToast) {
  return Container(
    width: MediaQuery.sizeOf(context).width >= 300.0
        ? MediaQuery.of(context).size.width / 3
        : MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
            blurRadius: 4.0, offset: Offset(0, 4), color: Color(0xff33000000)),
      ],
      borderRadius: BorderRadius.circular(10.0),
      color: color,
    ),
    child: Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
      child: Container(
        width: MediaQuery.sizeOf(context).width >= 500.0
            ? MediaQuery.of(context).size.width / 3
            : MediaQuery.of(context).size.width,
        height: 70,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(2),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(2),
            topRight: Radius.circular(10.0),
          ),
          color: Colors.white,
        ),
        child: status.toLowerCase().contains('success')
            ? Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 18,
                            color: color,
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Text(
                                message,
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        fToast.removeCustomToast();
                      },
                      icon: Icon(
                        Icons.clear,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              )
            : status.toLowerCase().contains('error')
                ? Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.cancel_sharp,
                                size: 18,
                                color: color,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Text(
                                    message,
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            fToast.removeCustomToast();
                          },
                          icon: Icon(
                            Icons.clear,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                : status.toLowerCase().contains('information')
                    ? Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.info_sharp,
                                    size: 18,
                                    color: color,
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 5, 0),
                                      child: Text(
                                        message,
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                fToast.removeCustomToast();
                              },
                              icon: Icon(
                                Icons.clear,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      )
                    : status.toLowerCase().contains('warning')
                        ? Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.error_sharp,
                                        size: 18,
                                        color: color,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 5, 0),
                                          child: Text(
                                            message,
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    fToast.removeCustomToast();
                                  },
                                  icon: Icon(
                                    Icons.clear,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.sync,
                                        size: 18,
                                        color: color,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 5, 0),
                                          child: Text(
                                            message,
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    fToast.removeCustomToast();
                                  },
                                  icon: Icon(
                                    Icons.clear,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
      ),
    ),
  );
}
