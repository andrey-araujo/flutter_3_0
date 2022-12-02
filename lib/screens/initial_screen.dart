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
            'Aprender Flutter',
            'assets/images/mascote_flutter.png',
            4,
          ),
          Task(
            'Pegar Global no CS',
            'assets/images/csgo.webp',
            5,
          ),
          Task(
            'Treino Academia',
            'assets/images/logo_acad.png',
            2,
          ),
          Task(
            'Meditar',
            'assets/images/meditacao.jpeg',
            1,
          ),
          Task(
            'Aprender Python',
            'assets/images/python.jpg',
            2,
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
