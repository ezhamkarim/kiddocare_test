// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:kiddocare_test/src/model/kindergarten.dart' as _i5;
import 'package:kiddocare_test/src/views/kindergarten_details.dart' as _i1;
import 'package:kiddocare_test/src/views/kindergarten_listing.dart' as _i2;

/// generated route for
/// [_i1.KindergartenDetailsPage]
class KindergartenDetailsRoute
    extends _i3.PageRouteInfo<KindergartenDetailsRouteArgs> {
  KindergartenDetailsRoute({
    _i4.Key? key,
    required _i5.Kindergarten kindergarten,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         KindergartenDetailsRoute.name,
         args: KindergartenDetailsRouteArgs(
           key: key,
           kindergarten: kindergarten,
         ),
         initialChildren: children,
       );

  static const String name = 'KindergartenDetailsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<KindergartenDetailsRouteArgs>();
      return _i1.KindergartenDetailsPage(
        key: args.key,
        kindergarten: args.kindergarten,
      );
    },
  );
}

class KindergartenDetailsRouteArgs {
  const KindergartenDetailsRouteArgs({this.key, required this.kindergarten});

  final _i4.Key? key;

  final _i5.Kindergarten kindergarten;

  @override
  String toString() {
    return 'KindergartenDetailsRouteArgs{key: $key, kindergarten: $kindergarten}';
  }
}

/// generated route for
/// [_i2.KindergartenListingPage]
class KindergartenListingRoute extends _i3.PageRouteInfo<void> {
  const KindergartenListingRoute({List<_i3.PageRouteInfo>? children})
    : super(KindergartenListingRoute.name, initialChildren: children);

  static const String name = 'KindergartenListingRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.KindergartenListingPage();
    },
  );
}
