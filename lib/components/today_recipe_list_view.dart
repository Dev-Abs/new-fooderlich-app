// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../models/models.dart';
import '../components/components.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                const Text('data'),
                const SizedBox(height: 16.0),
                // ignore: sized_box_for_whitespace
                Container(
                    height: 400,
                    // color: Colors.grey,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: recipes.length,
                        itemBuilder: (context, index) {
                            final recipe = recipes[index];
                            return buildCard(context, recipe);
                        },
                        separatorBuilder: (context, index) {
                            return const SizedBox(width: 16.0);
                        }
                    )
                    )
            ]
        )
    );
  }

  Widget buildCard(BuildContext context, ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else {
      // Show SnackBar
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Some of the cards doesn\'t exist yet'),
            duration: Duration(seconds: 2),
          )
        );
      });

      // Return an empty container or any placeholder widget
      return const SizedBox.shrink();
    }
  }
}

