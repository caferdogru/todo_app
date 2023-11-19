

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_item.dart';

import '../models/todo.dart';

class ToDoExpansionList extends StatefulWidget {
  const ToDoExpansionList({super.key, required this.todos, required this.status});

  final List<ToDo> todos;
  final Status status;

  @override
  State<ToDoExpansionList> createState() {
    return _ToDoExpansionListState();
  }
}


class _ToDoExpansionListState extends State<ToDoExpansionList> {

  // _ToDoExpansionListState(this.todos, this.status);

  // List<ToDo> todos = widget.todos;
  // Status status = widget.status;


  void deleteTodo(ToDo todo) {
    setState(() {
     widget.todos.remove(todo);
    });
  }

  void updateTodo(ToDo todo) {
    setState(() {
      ToDo td = widget.todos.where((t) => t == todo).first;
      td.status = Status.ongoing;
    });
  }

  
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          ExpansionTile(
            title: Text(widget.status.name), 
            backgroundColor:const Color.fromARGB(255, 216, 216, 137),
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.todos.length,
                itemBuilder: (context, index) {
                  return ToDoItem(
                   todo:  widget.todos[index],
                   onRemoveTodo: deleteTodo, 
                   onUpdateStatus: updateTodo,
                );
              })
            ]
          )
        ]
      );
    }
    
  }

