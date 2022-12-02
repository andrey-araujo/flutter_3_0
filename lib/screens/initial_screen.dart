import 'package:flutter/material.dart';
import 'package:flutter_3_0/components/task.dart';
import 'package:flutter_3_0/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.ads_click_sharp),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: const [
          Task(
            nome: 'Aprender Flutter',
            foto: 'assets/images/mascote_flutter.png',
            dificuldade: 4,
          ),
          Task(
            nome: 'Pegar Global no CS',
            foto: 'assets/images/csgo.webp',
            dificuldade: 5,
          ),
          Task(
            nome: 'Treino Academia',
            foto: 'assets/images/logo_acad.png',
            dificuldade: 2,
          ),
          Task(
            nome: 'Meditar',
            foto: 'assets/images/meditacao.jpeg',
            dificuldade: 1,
          ),
          Task(
            nome: 'Aprender Python',
            foto: 'assets/images/python.jpg',
            dificuldade: 2,
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add_task),
      ),
    );
  }
}
