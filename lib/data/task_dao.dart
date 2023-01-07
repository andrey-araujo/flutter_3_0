import 'package:flutter_3_0/components/task.dart';
import 'package:flutter_3_0/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER, '
      '$_image TEXT)';

  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';

  save(Task tarefa) async {}
  Future<List<Task>> findAll() async{
    print('Acessando o findall');
    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result = await bancoDeDados.query(_tablename);
    print('procurando dados no banco de dados... encontrado: $result');
  }
  Future<List<Task>> find(String nomeDaTarefa) async{}
  delete(String nomeDaTarefa) async{}
}