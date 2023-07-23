// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:payeewise/core/onboard/presentation/onboard_page.dart' as _i1;

abstract class $RootRouter extends _i2.RootStackRouter {
  $RootRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    OnboardRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardPage(),
      );
    }
  };
}

/// generated route for
/// [_i1.OnboardPage]
class OnboardRoute extends _i2.PageRouteInfo<void> {
  const OnboardRoute({List<_i2.PageRouteInfo>? children})
      : super(
          OnboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
