import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  static const route = '/counter';

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;

  void _inc() => setState(() => _count++);
  void _dec() => setState(() {
    if (_count > 0) _count--;
  });

  ButtonStyle _pill() => ElevatedButton.styleFrom(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
    shape: const StadiumBorder(),
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example Counter')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Contador: $_count', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: _inc,
                  style: _pill(),
                  child: const Text('Aumentar'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: _dec,
                  style: _pill(),
                  child: const Text('Disminuir'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
