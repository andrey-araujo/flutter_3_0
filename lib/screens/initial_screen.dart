import 'package:flutter/material.dart';
import 'package:flutter_3_0/components/task.dart';
import 'package:flutter_3_0/data/task_dao.dart';
import 'package:flutter_3_0/data/task_inherited.dart';
import 'package:flutter_3_0/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int level = 0;

  void updateLevel() {
    level = TaskInherited.of(context)
        .taskList
        .map((task) => task.dificuldade * task.maestria)
        .reduce((a, b) => a + b);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(),
          toolbarHeight: 80,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Tasks'),
                  IconButton(
                    icon: const Icon(Icons.replay_circle_filled_sharp),
                    onPressed: () {
                      setState(() {
                        updateLevel();
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                      color: Colors.white,
                      value: 1,
                    ),
                  ),
                  Text('Level: $level')
                ],
              ),
            ],
          )
          // leading: Container(),
          // title: const Text('Colocar a barra aqui'),
          ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 70),
        child: FutureBuilder<List<Task>>(
            future: TaskDao().findAll(),
            builder: (context, snapshot) {
              List<Task>? items = snapshot.data;
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  // TODO: Handle this case.
                  break;
                case ConnectionState.waiting:
                  // TODO: Handle this case.
                  break;
                case ConnectionState.active:
                  // TODO: Handle this case.
                  break;
                case ConnectionState.done:
                  if (snapshot.hasData && items != null) {
                    if (items.isNotEmpty) {
                      return ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Task tarefa = items[index];
                            return tarefa;
                          });
                    }
                  }
                  break;
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(taskContext: context),
            ),
          );
        },
        child: const Icon(Icons.add_task),
      ),
    );
  }
}
