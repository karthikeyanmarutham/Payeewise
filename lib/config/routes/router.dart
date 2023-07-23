/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 24, 2023 2:35 AM
///
///  * --------------------------------------------------------------------------- * ///

import 'package:auto_route/auto_route.dart';
import 'package:payeewise/config/routes/router.gr.dart';

@AutoRouterConfig()
class RootRouter extends $RootRouter {
  @override
  List<AutoRoute> get routes => [
        //OnboardRoute is generated as OnboardRoute because
        //of the replaceInRouteName property
        AutoRoute(page: OnboardRoute.page, path: "/"),
      ];
}
