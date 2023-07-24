/// * --------------------------------------------------------------------------- * ///
///
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : July 25,2023 12:13 AM
///
/// * --------------------------------------------------------------------------- * ///

import 'package:isar/isar.dart';
part 'category_model.g.dart';

@collection
class CategoryModel {
   Id id = Isar.autoIncrement;
   bool isActive;
   String categoryName;
   String iconName;
   int createdTime;

   CategoryModel({
    required this.id,
    this.isActive = true,
    required this.categoryName,
    required this.iconName,
    required this.createdTime
   });
}
