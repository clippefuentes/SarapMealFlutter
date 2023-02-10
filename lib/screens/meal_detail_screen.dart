import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  const MealDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final mealId = routeArgs["id"];

  return Scaffold(
    appBar: AppBar(
      title: Text('Meal ID - ${mealId}'),
    ),
    body: Center(
        child: Text('Scen - ${mealId}'),
      ),
  );
  }
}