import 'package:flutter/material.dart';

import './tables_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void goTablesScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(TablesScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Management'),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text('KFC'),
              SizedBox(
                height: 300,
              ),
              ElevatedButton(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                onPressed: () => goTablesScreen(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
