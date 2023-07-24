/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 18, 2023
///
///  * --------------------------------------------------------------------------- * ///

import 'dart:async';

import 'package:payeewise/utils/helpers/app_helpers.dart';
import 'package:payeewise/utils/services/locator.dart';
import 'package:payeewise/utils/services/model/category_model.dart';

class OnboardRepository {
  Future<Map<String, dynamic>> fetchData() async {
    Completer<Map<String, dynamic>> completer =
        Completer<Map<String, dynamic>>();
    try {
      var locator = getIt.get<AppHelpers>();

      var isar = locator.db;
      await isar.categoryModels.importJson([
        {
          "categoryName": "Bank",
          "iconName": "bank",
          "createdTime": DateTime.now().millisecondsSinceEpoch,
        }
      ]);

      // completer.complete({"code": 200});
    } catch (e) {
      completer.completeError(e);
    }

    return completer.future;
  }
}
