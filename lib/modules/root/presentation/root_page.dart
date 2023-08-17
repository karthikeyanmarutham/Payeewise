/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 17, 2023 5:30 PM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payeewise/modules/root/provider/root_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/root_widget.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) => RootProvider(), child: const RootWidget(),);
  }
}