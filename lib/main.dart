import 'package:flutter/material.dart';
import 'package:sarap_meal_flutter/categories_screen.dart';
import 'package:sarap_meal_flutter/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sarap Meals',
      theme: ThemeData(
        // primarySwatch: Colors.lightGreen,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.lightGreen,
          secondary: Colors.green,
          error: Colors.red,
        ),
        canvasColor: Colors.grey,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: TextStyle(
            color: Color.fromRGBO(29, 51, 51, 1),
          ),
          bodyMedium: TextStyle(
            color: Color.fromRGBO(29, 51, 51, 1),
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
          ),
        )
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoryMealScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
    @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sarap Meals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
