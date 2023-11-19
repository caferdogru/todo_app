import 'package:flutter/material.dart';

import '../models/todo.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem(
      {super.key, required this.todo, this.onRemoveTodo, this.onUpdateStatus});

  final ToDo todo;
  final void Function(ToDo todo)? onRemoveTodo;
  final void Function(ToDo todo)? onUpdateStatus;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      todo.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )
                  ),
                Text(
                  todo.daysRemaining.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, 
                      fontSize: 14
                  ),
                )
              ],
            ),
            IconButton(
                onPressed: () {
                  onUpdateStatus!(todo);
                },
                icon: const Icon(Icons.check)),
            IconButton(
              onPressed: () {
                onRemoveTodo!(todo);
              },
              icon: const Icon(Icons.delete),
            )
          ],
        )
      );
  }
}
