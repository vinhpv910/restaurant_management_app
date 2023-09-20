import 'package:flutter/material.dart';
import 'package:restaurant_management_app/screens/dishes_screen.dart';

import '../screens/tables_screen.dart';
import './screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Restaurant Management', routes: {
      '/': (ctx) => WelcomeScreen(),
      'tables_screen': (ctx) => TablesScreen(),
      'dishes_screen': (ctx) => DishesScreen(),
    });
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Restaurant Management'),
//       ),
//       body: Center(
//         child: Text('Hello'),
//       ),
//     );
//   }
// }
