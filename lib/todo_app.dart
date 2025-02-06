import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 156, 234, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lista de afazeres: 👴 '),
    );
  }
}