/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : Payeewise
/// devloper name : Karthikeyan Maruthachalam
/// created date  : July 25, 2023 12.00 AM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Login"),),
      body: const SizedBox(),
    );
  }
}