import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    final int days = 30;
    final String name = "Houssam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Home Page"),
          ),
      ),
      body: Center(
        child: Text("Welcome to $days days Flutter by $name."),
      ),
      drawer: const Drawer(),
    );
  }
}
