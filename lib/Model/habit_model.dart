import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Fitness {
  @HiveField(0)
  final int heigth;

  @HiveField(1)
  final int weigth;

  @HiveField(2)
  final int age;

  Fitness({required this.heigth, required this.weigth, required this.age});
}

@HiveType(typeId: 1)
class Learning {
  @HiveField(0)
  final String newTask;

  @HiveField(1)
  final bool isbookRead;

  @HiveField(2)
  final String bookname;

  Learning(
      {required this.newTask,
      required this.isbookRead,
      required this.bookname});
}

@HiveType(typeId: 1)
class SelfCare {
  @HiveField(0)
  final int walkingdistance;

  @HiveField(1)
  final bool isDaily;

  @HiveField(2)
  final String whattodo;

  SelfCare(
      {required this.walkingdistance,
      required this.isDaily,
      required this.whattodo});
}
