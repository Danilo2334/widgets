import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});
  static const route = '/layout';

  Widget _square(Color color) {
    return Container(width: 70, height: 70, color: color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example layout')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _square(Colors.red.shade400),
                const Spacer(),
                _square(Colors.blue.shade400),
              ],
            ),
            const SizedBox(height: 24),

            Center(
              child: Stack(
                children: [
                  const SizedBox(width: 220, height: 120),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 70,
                      height: 70,
                      color: Colors.green,

                      alignment: Alignment.center,
                      child: const Text(
                        'Texto\nsuperpuesto',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Element 1'),
              contentPadding: EdgeInsets.zero,
            ),
            const ListTile(
              leading: Icon(Icons.search),
              title: Text('Element 2'),
              contentPadding: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
