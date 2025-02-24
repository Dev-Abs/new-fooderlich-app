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
                Container(
                    height: 400,
                    color: Colors.grey,
                    )
            ]
        )
    );
  }
}

