import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

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
}
