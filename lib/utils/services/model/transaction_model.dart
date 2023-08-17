/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 20,2023 11:27 PM
///
/// * --------------------------------------------------------------------------- * ///

import 'package:isar/isar.dart';
part 'transaction_model.g.dart';

enum PayType { credit, debit }

@collection
class TransactionModel {
  Id id = Isar.autoIncrement;
  final List<Datum> data;
  @enumerated
  final PayType payType;
  TransactionModel({
    required this.data,
    this.payType = PayType.credit,
  });
}

@embedded
class Datum {
  List<Friend>? sharedFriends;
  Bill? bill;

  // Datum({
  //   required this.friends,
  //   required this.bill,
  // });
}

@embedded
class Bill {
  int? id;
  int? date;
  String? title;
  String? description;
  double? total;
  String? billPhoto;
  int? catId;

  // Bill({
  //   required this.id,
  //   required this.date,
  //   required this.title,
  //   required this.description,
  //   required this.total,
  //   required this.billPhoto,
  // });
}

@embedded
class Friend {
  int? id;
  bool? isPaid;
  double? amount;
  String? friendName;
  String? emailId;
  int? createdTime;
  int? payment;
  double? pendingPayment;

  // Friend({
  //   required this.id,
  //   required this.isPaid,
  //   required this.amount,
  //   required this.friendName,
  //   required this.emailId,
  //   required this.createdTime,
  //   required this.payment,
  // });
}