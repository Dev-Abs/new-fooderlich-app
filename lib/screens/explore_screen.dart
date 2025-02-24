// ignore_for_file: unused_local_variable, unused_import

import 'package:flutter/material.dart';
import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';
import '../models/explore_data.dart';
import '../models/explore_recipe.dart';
import '../models/models.dart';



class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // final recipes = (snapshot.data as ExploreData).todayRecipes;
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data!.todayRecipes),
              const SizedBox(height: 16.0),
              TodayPostListView(posts: snapshot.data!.friendPosts),
              // Card2(recipe: ExploreRecipe(id: '2', cardType: '', title: 'Takeout Noodles', backgroundImage: 'assets/food_pics/food_burger.jpg', authorName: 'Abdullah U.', role: 'Kitchen Ninja', profileImage: 'assets/profile_pics/abdullahubaid.jpg')),
              // const SizedBox(height: 16.0),
              // Card3(recipe: ExploreRecipe(id: '3', cardType: '', title: 'Test Recipe', backgroundImage: 'assets/food_pics/food_spaghetti.jpg', tags: ['carrot', 'ginger'])),
            ],
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