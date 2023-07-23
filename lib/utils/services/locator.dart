/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 20,2023 11:27 PM
///
/// * --------------------------------------------------------------------------- * ///

import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:payeewise/utils/services/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/app_helpers.dart';

var getIt = GetIt.I;

Future<void> setup() async {
  if (!getIt.isRegistered<AppHelpers>()) {
    // create appfolder for DB creation
    final dir = await getApplicationDocumentsDirectory();

    // create isar db instance here
    final isar = await Isar.open(
      [
        UserSchema,
      ],
      directory: dir.path,
    );

    // create sharedPreferences instance here
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // create depancy injection
    getIt.registerSingleton<AppHelpers>(
      AppHelpers(
        sharedPreferences: prefs,
        db: isar,
      ),
    );
  }
}
