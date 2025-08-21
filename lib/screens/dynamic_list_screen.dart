import 'package:flutter/material.dart';

class DynamicListScreen extends StatefulWidget {
  const DynamicListScreen({super.key});
  static const route = '/dynamic-list';

  @override
  State<DynamicListScreen> createState() => _DynamicListScreenState();
}

class _DynamicListScreenState extends State<DynamicListScreen> {
  final List<String> _items = List.generate(12, (i) => 'Elemento ${i + 1}');

  void _addItem() {
    setState(() {
      _items.add('Elemento ${_items.length + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example List')),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final text = _items[index];
          return ListTile(
            leading: const Icon(Icons.drag_indicator),
            title: Text(text),
            dense: true,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        tooltip: 'Add item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
