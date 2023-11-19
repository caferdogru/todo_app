import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_expansion_list.dart';


import '../models/todo.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key, required this.todos});

  final List<ToDo> todos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var status in Status.values)
          ToDoExpansionList(
            todos: todos.where(
              (e) => e.status == status
            ).toList(),
            status: status
          )
        ]
      );
    }
}
