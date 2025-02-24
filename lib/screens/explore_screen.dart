// ignore_for_file: unused_local_variable, unused_import

import 'package:flutter/material.dart';
import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/explore_data.dart';


class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final recipes = (snapshot.data as ExploreData).todayRecipes;
          return Center(
            child: TodayRecipeListView(recipes: recipes),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

// extension on Object? {
//    void get todayRecipes {}
// }