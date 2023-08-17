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
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payeewise/config/routes/router.gr.dart';

import '../../../../assets.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            // color: Colors.amber,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Sign In",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                    hintText: "Enter Your Mail ID",
                    prefixIcon: Icon(MdiIcons.at),
                    labelText: "e-mail",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: () {
                          context.replaceRoute(const RootRoute());
                        },
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(double.infinity, 70),
                          minimumSize: const Size(double.infinity, 60),
                        ),
                        child: Text(
                          "Submit",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(double.infinity, 70),
                          minimumSize: const Size(double.infinity, 60),
                        ),
                        child: Icon(MdiIcons.fingerprint),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Image.asset(Assets.assets_images_logo_main_png, width: 70),
              )
            ],
          ),
        ),
      ],
    );
  }
}
