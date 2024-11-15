import 'dart:developer';
import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';
import 'package:akshay_ingole_habit_tracking/Model/motivational_quote.dart';
import 'package:akshay_ingole_habit_tracking/Networking/FetchData.dart';
import 'package:akshay_ingole_habit_tracking/Provider/quote_provider.dart';
import 'package:akshay_ingole_habit_tracking/comman/comman_app_bar.dart';
import 'package:akshay_ingole_habit_tracking/comman/comman_navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late Future<MotivationalQuote> motivationalQuote;

  @override
  Widget build(BuildContext context, ref) {
    final quoteData = ref.watch(quoteDataProvider);
    return Scaffold(
      key: _scaffoldKey,
      appBar: CommonAppBar(
        title: Text('Habit Tracking'),
        onLeftMenuSelected: (value) {
          _scaffoldKey.currentState?.openDrawer();
        },
        onRightMenuSelected: (value) {
          _scaffoldKey.currentState?.openEndDrawer();
        },
      ),
      drawer: CommonNavigationDrawer(side: 'right'),
      body: quoteData.when(
          data: (quoteData) {
            List<MotivationalQuote> quoteList =
                quoteData.map((e) => e).toList();
            return ListView.builder(
                itemCount: quoteList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: ListTile(
                        title: Text('${quoteList[index].quotes}.'),
                      ),
                    ),
                  );
                });
          },
          error: (error, s) => Text(error.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {}),
    );
  }
}
