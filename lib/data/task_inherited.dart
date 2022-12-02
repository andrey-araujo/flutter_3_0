import 'package:flutter/material.dart';
import 'package:flutter_3_0/components/task.dart';

class TaskInherited extends InheritedWidget {
  const TaskInherited({super.key, required this.child}) : super(child: child);

  final Widget child;

  final List<Task> taskList = const [
    Task('Aprender Flutter', 'assets/images/mascote_flutter.png', 4),
    Task('Pegar Global no CS', 'assets/images/csgo.webp', 5),
    Task('Treino Academia', 'assets/images/logo_acad.png', 2),
    Task('Meditar', 'assets/images/meditacao.jpeg', 1),
    Task('Aprender Python', 'assets/images/python.jpg', 2),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
