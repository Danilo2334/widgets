import 'dart:math';
import 'package:flutter/material.dart';

class GuessGameScreen extends StatefulWidget {
  const GuessGameScreen({super.key});
  static const route = '/guess-game';

  @override
  State<GuessGameScreen> createState() => _GuessGameScreenState();
}

class _GuessGameScreenState extends State<GuessGameScreen> {
  final TextEditingController _controller = TextEditingController();
  int _secret = Random().nextInt(10) + 1;
  String _message = '';
  Color _color = Colors.black;

  void _checkGuess() {
    final guess = int.tryParse(_controller.text);
    if (guess == null) {
      setState(() {
        _message = 'Por favor ingresa un número válido';
        _color = Colors.orange;
      });
      return;
    }

    if (guess == _secret) {
      setState(() {
        _message = '¡Correcto! :D';
        _color = Colors.green;
      });
    } else {
      setState(() {
        _message = 'Intenta de nuevo D:';
        _color = Colors.red;
      });
    }
  }

  void _newGame() {
    setState(() {
      _secret = Random().nextInt(10) + 1;
      _controller.clear();
      _message = '';
      _color = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guess the Number')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Adivina el número entre 1 y 10',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tu número',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _checkGuess,
                child: const Text('Comprobar'),
              ),
              const SizedBox(height: 16),
              Text(_message, style: TextStyle(fontSize: 18, color: _color)),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _newGame,
                child: const Text('Nuevo juego'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
