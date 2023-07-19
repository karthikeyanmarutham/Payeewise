/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 20,2023 11:27 PM
///
/// * --------------------------------------------------------------------------- * ///

import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppHelpers {
  const AppHelpers({
    required this.sharedPreferences,
    required this.db, 
  });

  final SharedPreferences sharedPreferences;
  final Isar db;
}
