import 'package:akshay_ingole_habit_tracking/Model/motivational_quote.dart';
import 'package:akshay_ingole_habit_tracking/Networking/FetchData.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final quoteDataProvider = FutureProvider<List<MotivationalQuote>>((ref) async {
  return ref.watch(quoteProvider).getUsers();
});
