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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payeewise/config/routes/router.gr.dart';

import '../../../assets.dart';
import '../bloc/onboard_bloc.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardBloc, OnboardState>(
      listener: (context, state) {
        if(state is FetchOnboardLoaded){
          // redirect to login
          context.navigateNamedTo(LoginRoute.name);
        }
      },
      child: Center(
        child: Image.asset(Assets.assets_images_logo_main_png, width: 200),
      ),
    );
  }
}
