/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 20,2023 11:27 PM
///
/// * --------------------------------------------------------------------------- * ///
///     
import 'package:isar/isar.dart';

@collection
class TransactionModel {
  final List<Datum> data;

  TransactionModel({
    required this.data,
  });
}

@embedded
class Datum {
  final List<Friend> friends;
  final Bill bill;

  Datum({
    required this.friends,
    required this.bill,
  });
}

@embedded
class Bill {
  final int id;
  final int date;
  final String title;
  final String description;
  final double total;
  final String billPhoto;

  Bill({
    required this.id,
    required this.date,
    required this.title,
    required this.description,
    required this.total,
    required this.billPhoto,
  });
}

@embedded
class Friend {
  final String id;
  final bool isPaid;
  final double amount;
  final String friendName;
  final String emailId;
  final int createdTime;
  final int payment;

  Friend({
    required this.id,
    required this.isPaid,
    required this.amount,
    required this.friendName,
    required this.emailId,
    required this.createdTime,
    required this.payment,
  });
}
