/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 16,2023 07:27 PM
///
///  * --------------------------------------------------------------------------- * ///

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RecentTranactionWidget extends StatelessWidget {
  const RecentTranactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 0, top: 0),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 0, top: 0),
            child: Row(
              children: [
                Text(
                  "Transaction",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            primary: false,
            shrinkWrap: true,
            children: List.generate(
              10,
              (index) {
                int date = DateTime.now().millisecondsSinceEpoch;
                DateTime cdate = DateTime.fromMillisecondsSinceEpoch(date);
                DateFormat dFormat = DateFormat.yMMMd('en_US').add_jm();

                return Card(
                  child: ListTile(
                    title: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: Row(
                        children: [
                          Icon(
                            MdiIcons.arrowBottomLeftThin,
                            color: (index.isEven
                                ? Theme.of(context).colorScheme.error
                                : Theme.of(context).colorScheme.primary),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Resutrant",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                dFormat.format(cdate),
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Card(
                            elevation: 0,
                            color: (index.isEven
                                    ? Theme.of(context).colorScheme.error
                                    : Theme.of(context).colorScheme.primary)
                                .withOpacity(0.2),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "+ ${index + 1}0000",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: index.isEven
                                          ? Theme.of(context).colorScheme.error
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
