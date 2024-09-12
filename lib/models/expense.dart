import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.restaurant,
  Category.travel: Icons.subway_outlined,
  Category.leisure: Icons.videogame_asset_outlined,
  Category.work: Icons.baby_changing_station,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // 初始化列表，它在構造函數主體之前執行，用於對類的某些屬性進行初始化

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  // String get formattedDate {
  //   return formatter.format(date);
  // }
  String get formattedDate => formatter.format(date);
}
