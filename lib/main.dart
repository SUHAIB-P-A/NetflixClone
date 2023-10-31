import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/Widgets/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Netflix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: backgroundcolor,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: white),
          bodyMedium: TextStyle(color: white), 
        ),
      ),
      home: const ScreenMainPage(),
    );
  }
}
