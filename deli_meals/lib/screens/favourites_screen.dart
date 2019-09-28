import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    return favouriteMeals.isEmpty
        ? Center(
            child: Text('You have no favourites yet - start adding some!'),
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              final meal = favouriteMeals[index];
              return MealItem(
                id: meal.id,
                title: meal.title,
                imageUrl: meal.imageUrl,
                duration: meal.duration,
                affordability: meal.affordability,
                complexity: meal.complexity,
              );
            },
            itemCount: favouriteMeals.length,
          );
  }
}
