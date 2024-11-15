import 'package:akshay_ingole_habit_tracking/Model/motivational_quote.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

class ApiService {
  String userUrl = 'https://dummyjson.com/quotes';

  Future<List<MotivationalQuote>> getUsers() async {
    Response response = await get(Uri.parse(userUrl));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['quotes'];
      return result.map((e) => MotivationalQuote.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final quoteProvider = Provider<ApiService>((ref) => ApiService());
