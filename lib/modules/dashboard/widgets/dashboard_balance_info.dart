/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 16,2023 07:27 PM
///
///  * --------------------------------------------------------------------------- * ///

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BalanceInfoWidget extends StatelessWidget {
  const BalanceInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
        top: 8.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.primary,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Earnings",
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary,),
                      ),
                      Text(
                        "\$698,68",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.primary,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Spendings",
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary,),
                      ),
                      Text(
                        "\$698,68",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.onPrimary,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            height: 67,
            width: 67,
            child: Card(
              color: Theme.of(context).colorScheme.primary,
              child: InkWell(
                onTap: (){
                  
                },
                child: SizedBox(
                  height: 60,
                  child: Icon(
                    MdiIcons.viewDashboard,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}