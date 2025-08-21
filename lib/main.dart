import 'package:flutter/material.dart';
import 'screens/menu_screen.dart';
import 'screens/layout_screen.dart';
import 'screens/counter_screen.dart';
import 'screens/dynamic_list_screen.dart';
import 'screens/guess_game_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica de Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: false,
      ),
      home: const MenuScreen(),
      routes: {
        LayoutScreen.route: (_) => const LayoutScreen(),
        CounterScreen.route: (_) => const CounterScreen(),
        DynamicListScreen.route: (_) => const DynamicListScreen(),
        GuessGameScreen.route: (_) => const GuessGameScreen(),
      },
    );
  }
}
