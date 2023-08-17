/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18,2023 11:27 PM
///
///  * --------------------------------------------------------------------------- * ///

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dashboard_balance_info.dart';
import 'dashboard_card_widget.dart';
import 'recent_transaction_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DashboardCardWidget(),
          BalanceInfoWidget(),
          RecentTranactionWidget()
        ],
      ),
    );
  }
}


