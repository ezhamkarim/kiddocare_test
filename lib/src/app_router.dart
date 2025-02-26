import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kiddocare_test/src/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        // HomeScreen is generated as HomeRoute because
        // of the replaceInRouteName property
        AutoRoute(page: KindergartenListingRoute.page, initial: true),
        AutoRoute(page: KindergartenDetailsRoute.page)
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
