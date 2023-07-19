/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 20,2023 11:27 PM
///
/// * --------------------------------------------------------------------------- * ///

import 'package:isar/isar.dart';
part 'user_model.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  String firstname;
  String lastname;
  int birthdate;
  String email;
  String password;
  int dateofjoin;

  User({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.birthdate,
    required this.email,
    required this.password,
    required this.dateofjoin,
  });
}