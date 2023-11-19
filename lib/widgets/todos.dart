

import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/widgets/todo_list.dart';

class ToDos extends StatefulWidget {
  const ToDos({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ToDosState();
  }

}

class _ToDosState extends State<ToDos> {

  List<ToDo> todos = [
    ToDo(title: 'Test1', description: 'Açıklama1', deadline: DateTime(2023, 1, 1), status: Status.waiting),
    ToDo(title: 'Test2', description: 'Açıklama2', deadline: DateTime(2023, 12, 25), status: Status.ongoing),
    ToDo(title: 'Test3', description: 'Açıklama3', deadline: DateTime(2023, 7, 11), status:  Status.completed),
    ToDo(title: 'Test4', description: 'Açıklama4', deadline: DateTime(2023, 7, 11), status:  Status.ongoing),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yapılacaklar Listesi'),
      ),
      body: Column(
        children: [
          Expanded(child: ToDoList(todos: todos))
        ],
      ), 
    );
  }

}