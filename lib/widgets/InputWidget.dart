import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdicionar;

  const InputWidget({
    super.key,
    required this.controller,
    required this.onAdicionar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'digite um nome',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: onAdicionar,
            tooltip: 'Adicionar',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}