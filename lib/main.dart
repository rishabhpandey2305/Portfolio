import 'package:flutter/material.dart';
import 'package:portfolio/presentation/screens/home_screen.dart';
import 'package:portfolio/presentation/resources/res.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeResources(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rishabh Pandey',
      home: HOMESCREEN(),
    );
  }
}
