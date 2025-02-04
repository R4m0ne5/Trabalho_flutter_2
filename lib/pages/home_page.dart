import 'package:flutter/material.dart';

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

    setState(() {
      listaDeUsuarios.add(nome);
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Digite um nome',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: listaDeUsuarios.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.delete),
                    title: Text(listaDeUsuarios[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: adicionarUsuario,
        tooltip: 'Adicionar',
        child: const Icon(Icons.add),
      ),
    );
  }
}