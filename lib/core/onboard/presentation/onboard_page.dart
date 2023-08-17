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

import '../bloc/onboard_bloc.dart';
import '../widgets/onboard_widget.dart';

@RoutePage()
class OnboardPage extends StatelessWidget {
  const OnboardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // here setup db model
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: BlocProvider(
        create: (_) => OnboardBloc()..add(FetchOnboardEvent()),
        child: const OnboardWidget(),
      ),
    );
  }
}
