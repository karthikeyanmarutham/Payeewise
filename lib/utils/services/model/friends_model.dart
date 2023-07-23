/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 20,2023 11:27 PM
///
/// * --------------------------------------------------------------------------- * ///

import 'package:isar/isar.dart';
part 'friends_model.g.dart';

@collection
class FriendsModel {
  Id id = Isar.autoIncrement;
  String firstname;
  String lastname;
  int birthdate;
  String email;
  int createdDate;

  FriendsModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.birthdate,
    required this.email,
    required this.createdDate
  });
}