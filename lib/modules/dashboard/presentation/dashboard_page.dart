/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18,2023 11:27 PM
///
///  * --------------------------------------------------------------------------- * ///

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/dashboard_widget.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Row(
          children: [
            const CircleAvatar(),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  "Karthikeyan",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            color: Theme.of(context).colorScheme.primary,
            splashRadius: 25,
            onPressed: () {},
            icon: Icon(
              MdiIcons.bell,
            ),
          )
        ],
      ),
      body: const DashboardWidget(),
    );
  }
}
