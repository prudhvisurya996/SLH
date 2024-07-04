import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomePageWidget(),
        ),
        FFRoute(
          name: 'startHosting',
          path: '/startHosting',
          builder: (context, params) => StartHostingWidget(),
        ),
        FFRoute(
          name: 'propertyLocation',
          path: '/propertyLocation',
          builder: (context, params) => PropertyLocationWidget(),
        ),
        FFRoute(
          name: 'addressDetails',
          path: '/addressDetails',
          builder: (context, params) => AddressDetailsWidget(),
        ),
        FFRoute(
          name: 'basicDetails',
          path: '/basicDetails',
          builder: (context, params) => BasicDetailsWidget(),
        ),
        FFRoute(
          name: 'amenities',
          path: '/amenities',
          builder: (context, params) => AmenitiesWidget(),
        ),
        FFRoute(
          name: 'submissionConfirmation',
          path: '/submissionConfirmation',
          builder: (context, params) => SubmissionConfirmationWidget(),
        ),
        FFRoute(
          name: 'propertySummary',
          path: '/propertySummary',
          builder: (context, params) => PropertySummaryWidget(),
        ),
        FFRoute(
          name: 'home_page',
          path: '/home',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'definePropertyPricing',
          path: '/definePropertyPricing',
          builder: (context, params) => DefinePropertyPricingWidget(),
        ),
        FFRoute(
          name: 'uploadPictures',
          path: '/uploadPictures',
          builder: (context, params) => UploadPicturesWidget(),
        ),
        FFRoute(
          name: 'in_host_dashboard',
          path: '/inHostDashboard',
          builder: (context, params) => InHostDashboardWidget(),
        ),
        FFRoute(
          name: 'booking_details',
          path: '/bookingDetails',
          builder: (context, params) => BookingDetailsWidget(),
        ),
        FFRoute(
          name: 'review_booking',
          path: '/reviewBookings',
          builder: (context, params) => ReviewBookingWidget(),
        ),
        FFRoute(
          name: 'terms_and_conditions',
          path: '/tpc',
          builder: (context, params) => TermsAndConditionsWidget(),
        ),
        FFRoute(
          name: 'manage_booking_details',
          path: '/manageBookingDetails',
          builder: (context, params) => ManageBookingDetailsWidget(),
        ),
        FFRoute(
          name: 'in_host_db_detail_view_old',
          path: '/inHostDbDetailViewOld',
          builder: (context, params) => InHostDbDetailViewOldWidget(),
        ),
        FFRoute(
          name: 'helper_page',
          path: '/helperPage',
          builder: (context, params) => HelperPageWidget(),
        ),
        FFRoute(
          name: 'tellusAboutYourProperty',
          path: '/tellusAboutYourProperty',
          builder: (context, params) => TellusAboutYourPropertyWidget(),
        ),
        FFRoute(
          name: 'w_ex_hosting',
          path: '/wExHosting',
          builder: (context, params) => WExHostingWidget(),
        ),
        FFRoute(
          name: 'w_ex_hosting_upload',
          path: '/wExHostingUpload',
          builder: (context, params) => WExHostingUploadWidget(
            fileNames: params.getParam<dynamic>(
              'fileNames',
              ParamType.JSON,
              isList: true,
            ),
            files: params.getParam<FFUploadedFile>(
              'files',
              ParamType.FFUploadedFile,
              isList: true,
            ),
            propertyDetails: params.getParam(
              'propertyDetails',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'w_ex_welcome_page',
          path: '/wExWelcomePage',
          builder: (context, params) => WExWelcomePageWidget(),
        ),
        FFRoute(
          name: 'in_host_db_detail_view',
          path: '/inHostDbDetailView',
          builder: (context, params) => InHostDbDetailViewWidget(),
        ),
        FFRoute(
          name: 'pm_dashboard',
          path: '/pmDashboard',
          builder: (context, params) => PmDashboardWidget(),
        ),
        FFRoute(
          name: 'ex_host_dashboard',
          path: '/exHostDashboard',
          builder: (context, params) => ExHostDashboardWidget(),
        ),
        FFRoute(
          name: 'm_ex_welcome_page',
          path: '/exHostwelcomepageMobile',
          builder: (context, params) => MExWelcomePageWidget(),
        ),
        FFRoute(
          name: 'ex_host_detail_View',
          path: '/exHostDetailView',
          builder: (context, params) => ExHostDetailViewWidget(),
        ),
        FFRoute(
          name: 'm_ex_hosting_upload',
          path: '/mExHostingUpload',
          builder: (context, params) => MExHostingUploadWidget(
            fileNames: params.getParam<dynamic>(
              'fileNames',
              ParamType.JSON,
              isList: true,
            ),
            files: params.getParam<FFUploadedFile>(
              'files',
              ParamType.FFUploadedFile,
              isList: true,
            ),
            propertyDetails: params.getParam(
              'propertyDetails',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: 'm_ex_hosting',
          path: '/mExHosting',
          builder: (context, params) => MExHostingWidget(),
        ),
        FFRoute(
          name: 'ex_lease_detailview',
          path: '/exLeaseDetailview',
          builder: (context, params) => ExLeaseDetailviewWidget(),
        ),
        FFRoute(
          name: 'm_modify_booking',
          path: '/modifyBooking',
          builder: (context, params) => MModifyBookingWidget(),
        ),
        FFRoute(
          name: 'w_modify_booking_details',
          path: '/modifyBookingDetailspage',
          builder: (context, params) => WModifyBookingDetailsWidget(),
        ),
        FFRoute(
          name: 'property_listing',
          path: '/propertyListing',
          builder: (context, params) => PropertyListingWidget(),
        ),
        FFRoute(
          name: 'web_pi_dashboard',
          path: '/webPiDashboard',
          builder: (context, params) => WebPiDashboardWidget(),
        ),
        FFRoute(
          name: 'pi_detail_view',
          path: '/piDetailView',
          builder: (context, params) => PiDetailViewWidget(),
        ),
        FFRoute(
          name: 'empty_dashboard',
          path: '/emptyDashboard',
          builder: (context, params) => EmptyDashboardWidget(),
        ),
        FFRoute(
          name: 'pi_form',
          path: '/piForm',
          builder: (context, params) => PiFormWidget(),
        ),
        FFRoute(
          name: 'dashboard_for_pm',
          path: '/dashboardForPm',
          builder: (context, params) => DashboardForPmWidget(),
        ),
        FFRoute(
          name: 'm_pi_dashboard',
          path: '/pidashboard_mob',
          builder: (context, params) => MPiDashboardWidget(),
        ),
        FFRoute(
          name: 'm_at_dashboard',
          path: '/atdashboard_mob',
          builder: (context, params) => MAtDashboardWidget(),
        ),
        FFRoute(
          name: 'web_at_dashboard',
          path: '/webAtDashboard',
          builder: (context, params) => WebAtDashboardWidget(),
        ),
        FFRoute(
          name: 'at_detail_view',
          path: '/atDetailView',
          builder: (context, params) => AtDetailViewWidget(),
        ),
        FFRoute(
          name: 'at_form',
          path: '/atForm',
          builder: (context, params) => AtFormWidget(),
        ),
        FFRoute(
          name: 'testAT',
          path: '/testAT',
          builder: (context, params) => TestATWidget(),
        ),
        FFRoute(
          name: 'new_review_booking',
          path: '/newReviewBooking',
          builder: (context, params) => NewReviewBookingWidget(),
        ),
        FFRoute(
          name: 'new_trips_page',
          path: '/new_trips_page',
          builder: (context, params) => NewTripsPageWidget(),
        ),
        FFRoute(
          name: 'Dont-Delete-oK',
          path: '/property_detailsssss',
          builder: (context, params) => DontDeleteOKWidget(
            id: params.getParam(
              'id',
              ParamType.JSON,
            ),
            index: params.getParam(
              'index',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'property_details',
          path: '/property_details',
          builder: (context, params) => PropertyDetailsWidget(
            id: params.getParam(
              'id',
              ParamType.JSON,
            ),
            index: params.getParam(
              'index',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'new_search_page',
          path: '/new_search_page',
          builder: (context, params) => NewSearchPageWidget(),
        ),
        FFRoute(
          name: 'new_modify_booking',
          path: '/booking_detailsCopy',
          builder: (context, params) => NewModifyBookingWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.rightToLeft,
        duration: Duration(milliseconds: 300),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
