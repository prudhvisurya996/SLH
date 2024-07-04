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
import 'package:razorpay_web/razorpay_web.dart';
import 'dart:developer';

Future<dynamic> razorpayPayment(
  BuildContext context,
  double? amount,
  String? orgName,
  String? description,
  bool? sendSmsHash,
  int? timeout,
  String? orderid,
  String? imageLogo,
  String? contact,
  String? email,
  String? customerName,
  Future<dynamic> Function()? paymentSuccessAction,
  Future<dynamic> Function()? paymentFailureAction,
  Future<dynamic> Function()? externalWalletAction,
  String? rzpKey,
) async {
  // Add your function code here!
  var rzpPaymentResponse;
  late Razorpay _razorpay;

  Map<String, dynamic> data = {};

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    rzpPaymentResponse = response;
    print('Success Response: ${response}');
    print('Success Response: ${response.paymentId}');
    print('Success Response: ${response.orderId}');
    print('Success Response: ${response.signature}');

    data["paymentId"] = response.paymentId;
    data["orderId"] = response.orderId;
    data["signature"] = response.signature;
    FFAppState().update(() {
      FFAppState().rzpPaymentResp = data;
    });
    print("Rehaman Debug : ${FFAppState().rzpPaymentResp}");
    paymentSuccessAction!();

    // Fluttertoast.showToast(
    //     msg: "SUCCESS: ${response.paymentId!}",
    //     toastLength: Toast.LENGTH_SHORT);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    rzpPaymentResponse = response;
    print('Error Response: $response');
    print('Error Response: ${response.code} - ${response.message!}');
    data["code"] = response.code;
    data["message"] = response.message;
    FFAppState().update(() {
      FFAppState().rzpPaymentResp = data;
    });

    paymentFailureAction!();

    // Fluttertoast.showToast(
    //     msg: "ERROR: ${response.code} - ${response.message!}",
    //     toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    rzpPaymentResponse = response;
    print('External SDK Response: $response');
    FFAppState().update(() {
      FFAppState().rzpPaymentResp = response;
    });
    externalWalletAction!();
    // Fluttertoast.showToast(
    //     msg: "EXTERNAL_WALLET: ${response.walletName!}",
    //     toastLength: Toast.LENGTH_SHORT);
  }

  _razorpay = Razorpay();
  _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

  var options = {
    'key': rzpKey!,
    'amount': amount!,
    'name': orgName!,
    'description': description!,
    'send_sms_hash': sendSmsHash!,
    'timeout': timeout,
    'order_id': orderid,
    'image': imageLogo,
    'prefill': {'contact': contact, 'email': email, 'name': customerName},
    'hidden': {
      'contact': false,
      'email': false,
    },
    'theme': {'color': '#000D3E'},
    'external': {
      'wallets': ['paytm']
    },
  };

  try {
    _razorpay.open(options);
  } catch (e) {
    print('Error: e');
  }
}
