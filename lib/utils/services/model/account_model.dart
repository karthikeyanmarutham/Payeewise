/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 24,2023 1:34 AM
///
/// * --------------------------------------------------------------------------- * ///

import 'package:isar/isar.dart';
part 'account_model.g.dart';

@collection
class AccountModel {
   Id id = Isar.autoIncrement;
   bool isActive;
   double amount;
   String accountName;
   int? accountNumber;
   int expDate;
   String themeName;
   int createdTime;
   bool isSignIn;

  AccountModel({
    required this.id,
    required this.isActive,
    required this.amount,
    required this.accountName,
    this.accountNumber,
    required this.expDate,
    required this.themeName,
    required this.createdTime,
    this.isSignIn = false,
  });
}
