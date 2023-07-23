/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18, 2023
/// 
///  * --------------------------------------------------------------------------- * ///

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:payeewise/assets.dart';

@RoutePage()
class OnboardPage extends StatelessWidget {
  const OnboardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // here setup db model
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image.asset(Assets.assets_images_logo_main_png, width: 200),
      ),
    );
  }
}