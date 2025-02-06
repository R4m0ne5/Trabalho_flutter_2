import 'package:flutter/material.dart';
import 'package:todo/widgets/InputWidget.dart';
import 'package:todo/widgets/ListWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var listaDeUsuarios = <String>["Arthur", "Cabeça"];
  final TextEditingController controller = TextEditingController();

  void adicionarUsuario() {
    String nome = controller.text;

    if (nome.isEmpty) {
      return;
    }

    setState(() {
      listaDeUsuarios.add(nome);
      controller.clear();
    });
  }

  void removerUsuario(int index) {
    setState(() {
      listaDeUsuarios.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 156, 237, 255),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          InputWidget(
            controller: controller,
            onAdicionar: adicionarUsuario,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListWidget(
              listaDeUsuarios: listaDeUsuarios,
              onRemoverUsuario: removerUsuario,
            ),
          ),
        ],
      ),
    );
  }
}