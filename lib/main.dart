import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:payeewise/utils/services/locator.dart';

import 'config/routes/router.dart';
import 'core/onboard/presentation/onboard_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

    final _rootRouter = RootRouter();

  @override
  Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  //       useMaterial3: true,
  //     ),
  //     home: const OnboardPage(),
  //   );
  // }

   return MaterialApp.router(
      routerConfig: _rootRouter.config(),
      theme: ThemeData.dark().copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
      ),
      builder: (_, router) {
        // return ChangeNotifierProvider<AuthService>(
        //   create: (_) => authService,
        //   child: BooksDBProvider(
        //     child: router!,
        //   ),
        // );

        return router ?? const SizedBox.shrink();
      },
    );
  }
}