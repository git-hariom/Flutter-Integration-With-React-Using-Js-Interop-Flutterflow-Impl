import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

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
      errorBuilder: (context, state) => TestWebIntegrationWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => TestWebIntegrationWidget(),
        ),
        FFRoute(
          name: 'AddOnsminKYC',
          path: '/addOnsminKYC',
          builder: (context, params) => AddOnsminKYCWidget(),
        ),
        FFRoute(
          name: 'UserDetailsminKYC',
          path: '/userDetailsminKYC',
          builder: (context, params) => UserDetailsminKYCWidget(),
        ),
        FFRoute(
          name: 'ConfirmPaymentminKYC',
          path: '/confirmPaymentminKYC',
          builder: (context, params) => ConfirmPaymentminKYCWidget(),
        ),
        FFRoute(
          name: 'ActivateTagminKYC',
          path: '/activateTagminKYC',
          builder: (context, params) => ActivateTagminKYCWidget(),
        ),
        FFRoute(
          name: 'UserDetailsBiometric',
          path: '/userDetailsBiometric',
          builder: (context, params) => UserDetailsBiometricWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsminKYC',
          path: '/customerDetailsminKYC',
          builder: (context, params) => CustomerDetailsminKYCWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsChassis',
          path: '/customerDetailsChassis',
          builder: (context, params) => CustomerDetailsChassisWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsBiometric',
          path: '/customerDetailsBiometric',
          builder: (context, params) => CustomerDetailsBiometricWidget(),
        ),
        FFRoute(
          name: 'AddOnsChassis',
          path: '/addOnsChassis',
          builder: (context, params) => AddOnsChassisWidget(),
        ),
        FFRoute(
          name: 'ConfirmPaymentBiometric',
          path: '/confirmPaymentBiometric',
          builder: (context, params) => ConfirmPaymentBiometricWidget(),
        ),
        FFRoute(
          name: 'AddOnBiometric',
          path: '/addOnBiometric',
          builder: (context, params) => AddOnBiometricWidget(),
        ),
        FFRoute(
          name: 'ActivateTagChassis',
          path: '/activateTagChassis',
          builder: (context, params) => ActivateTagChassisWidget(),
        ),
        FFRoute(
          name: 'ActivateTagBiometric',
          path: '/activateTagBiometric',
          builder: (context, params) => ActivateTagBiometricWidget(),
        ),
        FFRoute(
          name: 'ConfirmPaymentChassis',
          path: '/confirmPaymentChassis',
          builder: (context, params) => ConfirmPaymentChassisWidget(),
        ),
        FFRoute(
          name: 'UserDetailsChassis',
          path: '/userDetailsChassis',
          builder: (context, params) => UserDetailsChassisWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsChassistoVRN_BC',
          path: '/customerDetailsChassistoVRNBC',
          builder: (context, params) => CustomerDetailsChassistoVRNBCWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsChassisVRNtoVRN_OPS',
          path: '/customerDetailsChassisVRNtoVRNOPS',
          builder: (context, params) =>
              CustomerDetailsChassisVRNtoVRNOPSWidget(),
        ),
        FFRoute(
          name: 'consent',
          path: '/consent',
          builder: (context, params) => ConsentWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsChassistoVRN_OPS',
          path: '/customerDetailsChassistoVRNOPS',
          builder: (context, params) => CustomerDetailsChassistoVRNOPSWidget(),
        ),
        FFRoute(
          name: 'UserDetailsminKYC_VC4_nc',
          path: '/userDetailsminKYCVC4Nc',
          builder: (context, params) => UserDetailsminKYCVC4NcWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsminVC4_nc',
          path: '/customerDetailsminVC4Nc',
          builder: (context, params) => CustomerDetailsminVC4NcWidget(),
        ),
        FFRoute(
          name: 'tagreplacement',
          path: '/tagreplacement',
          builder: (context, params) => TagreplacementWidget(),
        ),
        FFRoute(
          name: 'UploadDocumentManualKYCLLP',
          path: '/uploadDocumentManualKYCLLP',
          builder: (context, params) => UploadDocumentManualKYCLLPWidget(),
        ),
        FFRoute(
          name: 'UploadDocumentManualKYC_Partnership',
          path: '/uploadDocumentManualKYCPartnership',
          builder: (context, params) =>
              UploadDocumentManualKYCPartnershipWidget(),
        ),
        FFRoute(
          name: 'UploadDocumentManualKYC_Proprietorship',
          path: '/uploadDocumentManualKYCProprietorship',
          builder: (context, params) =>
              UploadDocumentManualKYCProprietorshipWidget(),
        ),
        FFRoute(
          name: 'UploadDocumentManualKYC_LtdandPvtLtd',
          path: '/uploadDocumentManualKYCLtdandPvtLtd',
          builder: (context, params) =>
              UploadDocumentManualKYCLtdandPvtLtdWidget(),
        ),
        FFRoute(
          name: 'ActivateTagManKYC_IJ',
          path: '/activateTagManKYCIJ',
          builder: (context, params) => ActivateTagManKYCIJWidget(),
        ),
        FFRoute(
          name: 'ConfirmPaymentManKYC_IJ',
          path: '/confirmPaymentManKYCIJ',
          builder: (context, params) => ConfirmPaymentManKYCIJWidget(),
        ),
        FFRoute(
          name: 'AddOnManKYC_IJ',
          path: '/addOnManKYCIJ',
          builder: (context, params) => AddOnManKYCIJWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsManKYC_IJ',
          path: '/customerDetailsManKYCIJ',
          builder: (context, params) => CustomerDetailsManKYCIJWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsManKYC_SC',
          path: '/customerDetailsManKYCSC',
          builder: (context, params) => CustomerDetailsManKYCSCWidget(),
        ),
        FFRoute(
          name: 'manualKYC',
          path: '/manualKYC',
          builder: (context, params) => ManualKYCWidget(),
        ),
        FFRoute(
          name: 'VehicleDetails',
          path: '/vehicleDetails',
          builder: (context, params) => VehicleDetailsWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsManKYC_ETB_CS',
          path: '/customerDetailsManKYCETBCS',
          builder: (context, params) => CustomerDetailsManKYCETBCSWidget(),
        ),
        FFRoute(
          name: 'CustomerDetailsChassisCopy',
          path: '/customerDetailsChassisCopy',
          builder: (context, params) => CustomerDetailsChassisCopyWidget(),
        ),
        FFRoute(
          name: 'testPage',
          path: '/testPage',
          builder: (context, params) => TestPageWidget(),
        ),
        FFRoute(
          name: 'TestWebIntegration',
          path: '/testWebIntegration',
          builder: (context, params) => TestWebIntegrationWidget(),
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
