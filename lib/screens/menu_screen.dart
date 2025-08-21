import 'package:flutter/material.dart';
import 'layout_screen.dart';
import 'counter_screen.dart';
import 'dynamic_list_screen.dart';
import 'guess_game_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  ButtonStyle _pillButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      textStyle: const TextStyle(fontSize: 14),
      elevation: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              style: _pillButtonStyle(context),
              onPressed: () => Navigator.pushNamed(context, LayoutScreen.route),
              child: const Text('Example layout'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: _pillButtonStyle(context),
              onPressed: () =>
                  Navigator.pushNamed(context, CounterScreen.route),
              child: const Text('Example counter'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: _pillButtonStyle(context),
              onPressed: () =>
                  Navigator.pushNamed(context, DynamicListScreen.route),
              child: const Text('List dynamic'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: _pillButtonStyle(context),
              onPressed: () =>
                  Navigator.pushNamed(context, GuessGameScreen.route),
              child: const Text('Guess game'),
            ),
          ],
        ),
      ),
    );
  }
}
